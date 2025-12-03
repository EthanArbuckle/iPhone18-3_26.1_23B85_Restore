@interface JFXCustomRenderProperties
+ (id)newCustomRenderProperties:(id)properties metadata:(id)metadata;
@end

@implementation JFXCustomRenderProperties

+ (id)newCustomRenderProperties:(id)properties metadata:(id)metadata
{
  propertiesCopy = properties;
  metadataCopy = metadata;
  v8 = objc_alloc_init(self);
  v9 = v8[2];
  v8[2] = propertiesCopy;
  v10 = propertiesCopy;

  v11 = v8[3];
  v8[3] = metadataCopy;

  *(v8 + 8) = 0;
  return v8;
}

@end