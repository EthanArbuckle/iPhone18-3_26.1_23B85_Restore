@interface BWMetadataFormat
+ (id)formatWithMetadataFormatDescription:(opaqueCMFormatDescription *)description;
- (id)debugDescription;
- (id)description;
- (void)_initWithMetadataFormat:(void *)format;
- (void)dealloc;
@end

@implementation BWMetadataFormat

+ (id)formatWithMetadataFormatDescription:(opaqueCMFormatDescription *)description
{
  if (!description || CMFormatDescriptionGetMediaType(description) != 1835365473)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"must be passed a metadata format description" userInfo:0]);
  }

  v4 = [[BWMetadataFormat alloc] _initWithMetadataFormat:description];

  return v4;
}

- (void)dealloc
{
  desc = self->_desc;
  if (desc)
  {
    CFRelease(desc);
  }

  v4.receiver = self;
  v4.super_class = BWMetadataFormat;
  [(BWMetadataFormat *)&v4 dealloc];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  MediaSubType = CMFormatDescriptionGetMediaSubType(self->_desc);
  v5 = bswap32(MediaSubType);
  if (!MediaSubType)
  {
    v5 = 1061109567;
  }

  v9 = v5;
  [string appendFormat:@"meta, %.4s", &v9];
  Identifiers = CMMetadataFormatDescriptionGetIdentifiers(self->_desc);
  if ([(__CFArray *)Identifiers count])
  {
    v7 = 0;
    do
    {
      [string appendFormat:@", %@", -[__CFArray objectAtIndexedSubscript:](Identifiers, "objectAtIndexedSubscript:", v7++)];
    }

    while (v7 < [(__CFArray *)Identifiers count]);
  }

  return string;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p> %@", NSStringFromClass(v4), self, -[BWMetadataFormat description](self, "description")];
}

- (void)_initWithMetadataFormat:(void *)format
{
  if (!format)
  {
    return 0;
  }

  v6.receiver = format;
  v6.super_class = BWMetadataFormat;
  v3 = objc_msgSendSuper2(&v6, sel_init);
  if (v3)
  {
    if (a2)
    {
      v4 = CFRetain(a2);
    }

    else
    {
      v4 = 0;
    }

    v3[1] = v4;
  }

  return v3;
}

@end