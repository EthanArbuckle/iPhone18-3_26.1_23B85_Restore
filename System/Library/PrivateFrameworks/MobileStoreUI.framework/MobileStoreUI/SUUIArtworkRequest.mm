@interface SUUIArtworkRequest
- (SUUIArtworkRequestDelegate)delegate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)newLoadOperation;
- (void)finishWithResource:(id)resource;
@end

@implementation SUUIArtworkRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(SUUIArtworkRequest *)self URL];
  v7 = [v3 stringWithFormat:@"<%@:%p URL = %@>", v5, self, v6];;

  return v7;
}

- (void)finishWithResource:(id)resource
{
  image = resource;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained artworkRequest:self didLoadImage:image];
  }

  else
  {
    v5 = [(SUUIArtworkRequest *)self URL];
    scheme = [v5 scheme];
    v7 = [scheme isEqualToString:@"x-apple-identity-image"];

    if (v7)
    {
      v8 = MEMORY[0x277D755B8];
      v9 = UIImagePNGRepresentation(image);
      v10 = [v8 imageWithData:v9];
    }

    else
    {
      v10 = image;
    }

    v11 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v10, @"SUUIArtworkRequestImageKey", 0}];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SUUIArtworkRequestDidLoadImageNotification" object:self userInfo:v11];
  }
}

- (id)newLoadOperation
{
  v3 = [SUUILoadArtworkResourceOperation alloc];

  return [(SUUILoadArtworkResourceOperation *)v3 initWithResourceRequest:self];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = SUUIArtworkRequest;
  v5 = [(SUUIResourceRequest *)&v12 copyWithZone:?];
  objc_storeStrong(v5 + 3, self->_dataConsumer);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  objc_storeWeak(v5 + 4, WeakRetained);

  v7 = [(NSString *)self->_imageName copyWithZone:zone];
  v8 = v5[5];
  v5[5] = v7;

  v9 = [(NSURL *)self->_url copyWithZone:zone];
  v10 = v5[6];
  v5[6] = v9;

  return v5;
}

- (SUUIArtworkRequestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end