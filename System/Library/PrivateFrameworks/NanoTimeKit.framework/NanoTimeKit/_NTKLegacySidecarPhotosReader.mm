@interface _NTKLegacySidecarPhotosReader
- (_NTKLegacySidecarPhotosReader)initWithResourceDirectory:(id)a3;
- (id)objectAtIndex:(unint64_t)a3;
@end

@implementation _NTKLegacySidecarPhotosReader

- (_NTKLegacySidecarPhotosReader)initWithResourceDirectory:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _NTKLegacySidecarPhotosReader;
  v5 = [(NTKPhotosReader *)&v10 initWithResourceDirectory:v4];
  if (v5)
  {
    v6 = objc_opt_new();
    photos = v5->_photos;
    v5->_photos = v6;

    if (v4)
    {
      v8 = [[NTKPhoto alloc] initWithLegacySidecar:v4];
      if (v8)
      {
        [(NSMutableArray *)v5->_photos addObject:v8];
      }
    }
  }

  return v5;
}

- (id)objectAtIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_photos count]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_photos objectAtIndexedSubscript:a3];
  }

  return v5;
}

@end