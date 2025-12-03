@interface NSSWatchFace
- (NSSWatchFace)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSSWatchFace

- (void)encodeWithCoder:(id)coder
{
  faceIdentifier = self->_faceIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:faceIdentifier forKey:@"faceIdentifier"];
  [coderCopy encodeObject:self->_faceDisplayName forKey:@"faceDisplayName"];
  [coderCopy encodeBool:self->_isActive forKey:@"isActive"];
  [coderCopy encodeObject:self->_selectedFocusModeIdentifiers forKey:@"selectedFocusModeIdentifiers"];
}

- (NSSWatchFace)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = NSSWatchFace;
  v5 = [(NSSWatchFace *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"faceIdentifier"];
    faceIdentifier = v5->_faceIdentifier;
    v5->_faceIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"faceDisplayName"];
    faceDisplayName = v5->_faceDisplayName;
    v5->_faceDisplayName = v8;

    v5->_isActive = [coderCopy decodeBoolForKey:@"isActive"];
    v10 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"selectedFocusModeIdentifiers"];
    selectedFocusModeIdentifiers = v5->_selectedFocusModeIdentifiers;
    v5->_selectedFocusModeIdentifiers = v10;
  }

  return v5;
}

@end