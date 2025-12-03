@interface FigCaptureDeferredPhotoProcessorRequest
- (BOOL)isEqual:(id)equal;
- (FigCaptureDeferredPhotoProcessorRequest)initWithApplicationID:(id)d captureRequstIdentifier:(id)identifier photoIdentifier:(id)photoIdentifier clientPID:(int)iD message:(id)message qosClass:(unsigned int)class parent:(id)parent;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation FigCaptureDeferredPhotoProcessorRequest

- (FigCaptureDeferredPhotoProcessorRequest)initWithApplicationID:(id)d captureRequstIdentifier:(id)identifier photoIdentifier:(id)photoIdentifier clientPID:(int)iD message:(id)message qosClass:(unsigned int)class parent:(id)parent
{
  v16.receiver = self;
  v16.super_class = FigCaptureDeferredPhotoProcessorRequest;
  v14 = [(FigCaptureDeferredPhotoProcessorRequest *)&v16 init];
  if (v14)
  {
    v14->_applicationID = [d copy];
    v14->_captureRequestIdentifier = [identifier copy];
    v14->_photoIdentifier = [photoIdentifier copy];
    v14->_clientPID = iD;
    v14->_parent = parent;
    v14->_message = FigXPCRetain();
    v14->_qosClass = class;
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

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v5) = 1;
    return v5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  v5 = -[NSString isEqual:](self->_applicationID, "isEqual:", [equal applicationID]);
  if (!v5)
  {
    return v5;
  }

  v5 = -[NSString isEqual:](self->_captureRequestIdentifier, "isEqual:", [equal captureRequestIdentifier]);
  if (!v5)
  {
    return v5;
  }

  v5 = -[NSString isEqual:](self->_photoIdentifier, "isEqual:", [equal photoIdentifier]);
  if (!v5)
  {
    return v5;
  }

  clientPID = self->_clientPID;
  if (clientPID != [equal clientPID])
  {
LABEL_11:
    LOBYTE(v5) = 0;
    return v5;
  }

  parent = self->_parent;
  if (parent == [equal parent] || (v5 = -[FigCaptureDeferredPhotoProcessorRequest isEqual:](self->_parent, "isEqual:", objc_msgSend(equal, "parent"))) != 0)
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