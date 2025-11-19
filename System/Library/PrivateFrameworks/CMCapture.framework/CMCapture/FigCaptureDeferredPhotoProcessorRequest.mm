@interface FigCaptureDeferredPhotoProcessorRequest
- (BOOL)isEqual:(id)a3;
- (FigCaptureDeferredPhotoProcessorRequest)initWithApplicationID:(id)a3 captureRequstIdentifier:(id)a4 photoIdentifier:(id)a5 clientPID:(int)a6 message:(id)a7 qosClass:(unsigned int)a8 parent:(id)a9;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation FigCaptureDeferredPhotoProcessorRequest

- (FigCaptureDeferredPhotoProcessorRequest)initWithApplicationID:(id)a3 captureRequstIdentifier:(id)a4 photoIdentifier:(id)a5 clientPID:(int)a6 message:(id)a7 qosClass:(unsigned int)a8 parent:(id)a9
{
  v16.receiver = self;
  v16.super_class = FigCaptureDeferredPhotoProcessorRequest;
  v14 = [(FigCaptureDeferredPhotoProcessorRequest *)&v16 init];
  if (v14)
  {
    v14->_applicationID = [a3 copy];
    v14->_captureRequestIdentifier = [a4 copy];
    v14->_photoIdentifier = [a5 copy];
    v14->_clientPID = a6;
    v14->_parent = a9;
    v14->_message = FigXPCRetain();
    v14->_qosClass = a8;
  }

  return v14;
}

- (void)dealloc
{
  FigXPCRelease();

  v3.receiver = self;
  v3.super_class = FigCaptureDeferredPhotoProcessorRequest;
  [(FigCaptureDeferredPhotoProcessorRequest *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v5) = 1;
    return v5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  v5 = -[NSString isEqual:](self->_applicationID, "isEqual:", [a3 applicationID]);
  if (!v5)
  {
    return v5;
  }

  v5 = -[NSString isEqual:](self->_captureRequestIdentifier, "isEqual:", [a3 captureRequestIdentifier]);
  if (!v5)
  {
    return v5;
  }

  v5 = -[NSString isEqual:](self->_photoIdentifier, "isEqual:", [a3 photoIdentifier]);
  if (!v5)
  {
    return v5;
  }

  clientPID = self->_clientPID;
  if (clientPID != [a3 clientPID])
  {
LABEL_11:
    LOBYTE(v5) = 0;
    return v5;
  }

  parent = self->_parent;
  if (parent == [a3 parent] || (v5 = -[FigCaptureDeferredPhotoProcessorRequest isEqual:](self->_parent, "isEqual:", objc_msgSend(a3, "parent"))) != 0)
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_applicationID hash];
  v4 = [(NSString *)self->_captureRequestIdentifier hash]^ v3;
  return v4 ^ [(NSString *)self->_photoIdentifier hash]^ self->_clientPID;
}

- (id)description
{
  parent = self->_parent;
  if (parent)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@", parent: %@", -[FigCaptureDeferredPhotoProcessorRequest description](parent, "description")];
  }

  else
  {
    v4 = &stru_1F216A3D0;
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  return [v5 stringWithFormat:@"<%@ %p>: applicationID: %@, captureRequestIdentifier: %@, photoIdentifier: %@ clientPID: %d %@%@", v6, self, self->_applicationID, self->_captureRequestIdentifier, self->_photoIdentifier, self->_clientPID, FigCaptureQOSClassToString(self->_qosClass), v4];
}

@end