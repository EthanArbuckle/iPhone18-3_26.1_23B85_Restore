@interface NTKCFaceDetailMonogramComplicationCell
+ (id)reuseIdentifier;
- (NTKCFaceDetailMonogramComplicationCell)initWithSlot:(id)slot inFace:(id)face;
@end

@implementation NTKCFaceDetailMonogramComplicationCell

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NTKCFaceDetailMonogramComplicationCell)initWithSlot:(id)slot inFace:(id)face
{
  slotCopy = slot;
  faceCopy = face;
  v14.receiver = self;
  v14.super_class = NTKCFaceDetailMonogramComplicationCell;
  v8 = [(NTKCFaceDetailToggleCell *)&v14 init];
  if (v8)
  {
    v9 = [slotCopy copy];
    slot = v8->_slot;
    v8->_slot = v9;

    v11 = [faceCopy displayNameForComplicationSlot:v8->_slot];
    textLabel = [(NTKCFaceDetailMonogramComplicationCell *)v8 textLabel];
    [textLabel setText:v11];
  }

  return v8;
}

@end