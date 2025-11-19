@interface CRCameraReaderOutputInternal
- (CGRect)boundingBox;
- (void)setFormattedStringValue:(id)a3;
- (void)setStringValue:(id)a3;
@end

@implementation CRCameraReaderOutputInternal

- (void)setStringValue:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x277CCACA8] _newZStringWithString:?];
  }

  else
  {
    v5 = [(CRCameraReaderOutputInternal *)self type];
    NSLog(&cfstr_AttemptToSetNi.isa, v5);

    v4 = 0;
  }

  stringValue = self->_stringValue;
  self->_stringValue = v4;
}

- (void)setFormattedStringValue:(id)a3
{
  v4 = [MEMORY[0x277CCACA8] _newZStringWithString:a3];
  formattedStringValue = self->_formattedStringValue;
  self->_formattedStringValue = v4;
}

- (CGRect)boundingBox
{
  objc_copyStruct(v6, &self->_boundingBox, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end