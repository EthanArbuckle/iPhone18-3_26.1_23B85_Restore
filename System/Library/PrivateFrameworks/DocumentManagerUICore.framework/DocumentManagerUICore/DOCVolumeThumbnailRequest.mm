@interface DOCVolumeThumbnailRequest
- (DOCVolumeThumbnailRequest)initWithDescriptor:(id)descriptor;
- (void)generateThumbnailWithCompletionHandler:(id)handler;
@end

@implementation DOCVolumeThumbnailRequest

- (DOCVolumeThumbnailRequest)initWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if (!descriptorCopy)
  {
    [DOCVolumeThumbnailRequest initWithDescriptor:];
  }

  v9.receiver = self;
  v9.super_class = DOCVolumeThumbnailRequest;
  v6 = [(DOCVolumeThumbnailRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_descriptor, descriptor);
  }

  return v7;
}

- (void)generateThumbnailWithCompletionHandler:(id)handler
{
  v4 = MEMORY[0x277D1B1A8];
  handlerCopy = handler;
  v17 = [[v4 alloc] initWithType:@"com.apple.storage-removable"];
  v6 = objc_alloc(MEMORY[0x277D1B1C8]);
  [(DOCThumbnailDescriptor *)self->_descriptor size];
  v8 = v7;
  v10 = v9;
  [(DOCThumbnailDescriptor *)self->_descriptor scale];
  v12 = [v6 initWithSize:v8 scale:{v10, v11}];
  v13 = [v17 prepareImageForDescriptor:v12];
  v14 = MEMORY[0x277D755B8];
  cGImage = [v13 CGImage];
  [(DOCThumbnailDescriptor *)self->_descriptor scale];
  v16 = [v14 imageWithCGImage:cGImage scale:0 orientation:?];
  handlerCopy[2](handlerCopy, v16, 0);
}

- (void)initWithDescriptor:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"descriptor" object:? file:? lineNumber:? description:?];
}

@end