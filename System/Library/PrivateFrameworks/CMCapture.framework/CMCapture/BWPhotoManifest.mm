@interface BWPhotoManifest
- (BOOL)isEqual:(id)equal;
- (BWPhotoManifest)initWithCoder:(id)coder;
- (BWPhotoManifest)initWithDescriptors:(id)descriptors captureRequestIdentifier:(id)identifier;
- (id)description;
- (id)descriptorForIdentifier:(id)identifier;
- (id)descriptorForSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)cannotProcessDepthPhotos;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BWPhotoManifest

- (BWPhotoManifest)initWithDescriptors:(id)descriptors captureRequestIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = BWPhotoManifest;
  v6 = [(BWPhotoManifest *)&v8 init];
  if (v6)
  {
    v6->_photoDescriptors = [descriptors copy];
    v6->_captureRequestIdentifier = [identifier copy];
    v6->_bufferPtrValueToPhotoDescriptorLock._os_unfair_lock_opaque = 0;
    v6->_bufferPtrValueToPhotoDescriptor = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWPhotoManifest;
  [(BWPhotoManifest *)&v3 dealloc];
}

- (BWPhotoManifest)initWithCoder:(id)coder
{
  v5 = MEMORY[0x1E695DFD8];
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  return -[BWPhotoManifest initWithDescriptors:captureRequestIdentifier:](self, "initWithDescriptors:captureRequestIdentifier:", [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithArray:", v6, v8[0]), @"photoDescriptors"}], objc_msgSend(coder, "decodeObjectOfClass:forKey:", objc_opt_class(), @"captureRequestIdentifier"));
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_photoDescriptors forKey:@"photoDescriptors"];
  captureRequestIdentifier = self->_captureRequestIdentifier;

  [coder encodeObject:captureRequestIdentifier forKey:@"captureRequestIdentifier"];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v15 = v5;
    v16 = v4;
    v17 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      photoDescriptors = [(BWPhotoManifest *)self photoDescriptors];
      if (photoDescriptors == [equal photoDescriptors] || (v12 = -[NSArray isEqual:](-[BWPhotoManifest photoDescriptors](self, "photoDescriptors"), "isEqual:", objc_msgSend(equal, "photoDescriptors"))) != 0)
      {
        v13 = [(BWPhotoManifest *)self captureRequestIdentifier:v6];
        if (v13 == [equal captureRequestIdentifier] || (v12 = -[NSString isEqual:](-[BWPhotoManifest captureRequestIdentifier](self, "captureRequestIdentifier"), "isEqual:", objc_msgSend(equal, "captureRequestIdentifier"))) != 0)
        {
          LOBYTE(v12) = 1;
        }
      }
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  return v12;
}

- (id)descriptorForIdentifier:(id)identifier
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  photoDescriptors = self->_photoDescriptors;
  v5 = [(NSArray *)photoDescriptors countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v13;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v13 != v7)
    {
      objc_enumerationMutation(photoDescriptors);
    }

    v9 = *(*(&v12 + 1) + 8 * v8);
    if ([objc_msgSend(v9 "photoIdentifier")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSArray *)photoDescriptors countByEnumeratingWithState:&v12 objects:v11 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)descriptorForSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  os_unfair_lock_lock(&self->_bufferPtrValueToPhotoDescriptorLock);
  v5 = [MEMORY[0x1E696B098] valueWithPointer:buffer];
  v6 = [(NSMutableDictionary *)self->_bufferPtrValueToPhotoDescriptor objectForKeyedSubscript:v5];
  if ([(NSArray *)self->_photoDescriptors count]== 1)
  {
    v6 = [(NSArray *)self->_photoDescriptors objectAtIndexedSubscript:0];
    [(NSMutableDictionary *)self->_bufferPtrValueToPhotoDescriptor setObject:v6 forKeyedSubscript:v5];
  }

  else if (!v6)
  {
    v7 = [CMGetAttachment(buffer @"StillImageProcessingFlags"];
    v8 = [(NSArray *)self->_photoDescriptors mutableCopy];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v26 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
LABEL_6:
      v12 = 0;
      while (1)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v6 = *(*(&v26 + 1) + 8 * v12);
        if ((v7 & ~[v6 processingFlags]) == 0)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [v8 countByEnumeratingWithState:&v26 objects:v25 count:16];
          if (v10)
          {
            goto LABEL_6;
          }

          goto LABEL_14;
        }
      }

      [(NSMutableDictionary *)self->_bufferPtrValueToPhotoDescriptor setObject:v6 forKeyedSubscript:v5];
      if (v6)
      {
        goto LABEL_25;
      }
    }

LABEL_14:
    allValues = [(NSMutableDictionary *)self->_bufferPtrValueToPhotoDescriptor allValues];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    photoDescriptors = self->_photoDescriptors;
    v15 = [(NSArray *)photoDescriptors countByEnumeratingWithState:&v21 objects:v20 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(photoDescriptors);
          }

          v6 = *(*(&v21 + 1) + 8 * i);
          if (([allValues containsObject:v6] & 1) == 0)
          {
            [(NSMutableDictionary *)self->_bufferPtrValueToPhotoDescriptor setObject:v6 forKeyedSubscript:v5];
            goto LABEL_25;
          }
        }

        v16 = [(NSArray *)photoDescriptors countByEnumeratingWithState:&v21 objects:v20 count:16];
        v6 = 0;
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v6 = 0;
    }

LABEL_25:
  }

  os_unfair_lock_unlock(&self->_bufferPtrValueToPhotoDescriptorLock);
  return v6;
}

- (void)cannotProcessDepthPhotos
{
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  photoDescriptors = self->_photoDescriptors;
  v3 = [(NSArray *)photoDescriptors countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(photoDescriptors);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        if (([v7 processingFlags] & 0x40) == 0)
        {
          LODWORD(v8) = [v7 processingFlags];
          if (([v7 processingFlags] & 0x20) != 0)
          {
            LODWORD(v8) = v8 & 0xFFFFFFDF;
          }

          if (([v7 processingFlags] & 0x10) != 0)
          {
            v8 = v8 & 0xFFFFFFEF;
          }

          else
          {
            v8 = v8;
          }

          v9 = [BWPhotoDescriptor alloc];
          photoIdentifier = [v7 photoIdentifier];
          time = [v7 time];
          timeZone = [v7 timeZone];
          if (v7)
          {
            [v7 presentationTimeStamp];
          }

          else
          {
            memset(v16, 0, sizeof(v16));
          }

          v13 = [(BWPhotoDescriptor *)v9 initWithPhotoIdentifier:photoIdentifier processingFlags:v8 time:time timeZone:timeZone presentationTimeStamp:v16];
          [v15 addObject:v13];
        }
      }

      v4 = [(NSArray *)photoDescriptors countByEnumeratingWithState:&v18 objects:v17 count:16];
    }

    while (v4);
  }

  self->_photoDescriptors = [v15 copy];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p>:\n", objc_opt_class(), self];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  photoDescriptors = self->_photoDescriptors;
  v5 = [(NSArray *)photoDescriptors countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(photoDescriptors);
        }

        [v3 appendFormat:@"\t%@\n", *(*(&v11 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [(NSArray *)photoDescriptors countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v6);
  }

  return v3;
}

@end