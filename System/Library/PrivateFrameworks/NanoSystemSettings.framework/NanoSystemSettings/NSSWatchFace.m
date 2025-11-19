@interface NSSWatchFace
- (NSSWatchFace)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSSWatchFace

- (void)encodeWithCoder:(id)a3
{
  faceIdentifier = self->_faceIdentifier;
  v5 = a3;
  [v5 encodeObject:faceIdentifier forKey:@"faceIdentifier"];
  [v5 encodeObject:self->_faceDisplayName forKey:@"faceDisplayName"];
  [v5 encodeBool:self->_isActive forKey:@"isActive"];
  [v5 encodeObject:self->_selectedFocusModeIdentifiers forKey:@"selectedFocusModeIdentifiers"];
}

- (NSSWatchFace)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NSSWatchFace;
  v5 = [(NSSWatchFace *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"faceIdentifier"];
    faceIdentifier = v5->_faceIdentifier;
    v5->_faceIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"faceDisplayName"];
    faceDisplayName = v5->_faceDisplayName;
    v5->_faceDisplayName = v8;

    v5->_isActive = [v4 decodeBoolForKey:@"isActive"];
    v10 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"selectedFocusModeIdentifiers"];
    selectedFocusModeIdentifiers = v5->_selectedFocusModeIdentifiers;
    v5->_selectedFocusModeIdentifiers = v10;
  }

  return v5;
}

@end