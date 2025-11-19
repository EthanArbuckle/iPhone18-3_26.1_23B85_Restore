@interface NTKCFaceDetailMonogramComplicationCell
+ (id)reuseIdentifier;
- (NTKCFaceDetailMonogramComplicationCell)initWithSlot:(id)a3 inFace:(id)a4;
@end

@implementation NTKCFaceDetailMonogramComplicationCell

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NTKCFaceDetailMonogramComplicationCell)initWithSlot:(id)a3 inFace:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = NTKCFaceDetailMonogramComplicationCell;
  v8 = [(NTKCFaceDetailToggleCell *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    slot = v8->_slot;
    v8->_slot = v9;

    v11 = [v7 displayNameForComplicationSlot:v8->_slot];
    v12 = [(NTKCFaceDetailMonogramComplicationCell *)v8 textLabel];
    [v12 setText:v11];
  }

  return v8;
}

@end