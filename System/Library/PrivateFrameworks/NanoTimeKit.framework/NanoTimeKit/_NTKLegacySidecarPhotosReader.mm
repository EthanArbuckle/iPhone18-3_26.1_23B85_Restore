@interface _NTKLegacySidecarPhotosReader
- (_NTKLegacySidecarPhotosReader)initWithResourceDirectory:(id)directory;
- (id)objectAtIndex:(unint64_t)index;
@end

@implementation _NTKLegacySidecarPhotosReader

- (_NTKLegacySidecarPhotosReader)initWithResourceDirectory:(id)directory
{
  directoryCopy = directory;
  v10.receiver = self;
  v10.super_class = _NTKLegacySidecarPhotosReader;
  v5 = [(NTKPhotosReader *)&v10 initWithResourceDirectory:directoryCopy];
  if (v5)
  {
    v6 = objc_opt_new();
    photos = v5->_photos;
    v5->_photos = v6;

    if (directoryCopy)
    {
      v8 = [[NTKPhoto alloc] initWithLegacySidecar:directoryCopy];
      if (v8)
      {
        [(NSMutableArray *)v5->_photos addObject:v8];
      }
    }
  }

  return v5;
}

- (id)objectAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_photos count]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_photos objectAtIndexedSubscript:index];
  }

  return v5;
}

@end