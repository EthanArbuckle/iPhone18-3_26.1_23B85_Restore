@interface ICCameraItemProxy
- (ICCameraItemProxy)init;
- (ICCameraItemProxy)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICCameraItemProxy

- (ICCameraItemProxy)init
{
  v6.receiver = self;
  v6.super_class = ICCameraItemProxy;
  v2 = [(ICCameraItemProxy *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    keywords = v2->_keywords;
    v2->_keywords = v3;
  }

  return v2;
}

- (ICCameraItemProxy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = ICCameraItemProxy;
  v5 = [(ICCameraItemProxy *)&v16 init];
  if (v5)
  {
    v5->_objectHandle = [coderCopy decodeInt32ForKey:@"objectHandle"];
    v5->_parentObjectHandle = [coderCopy decodeInt32ForKey:@"parentObjectHandle"];
    v5->_storageID = [coderCopy decodeInt32ForKey:@"storageID"];
    v5->_topLevel = [coderCopy decodeInt32ForKey:@"topLevel"] != 0;
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v5->_type = [coderCopy decodeInt32ForKey:@"type"];
    v5->_readOnly = [coderCopy decodeBoolForKey:@"readOnly"];
    v5->_sequenceNumber = [coderCopy decodeInt32ForKey:@"sequenceNumber"];
    v5->_size = [coderCopy decodeInt64ForKey:@"size"];
    v5->_width = [coderCopy decodeInt32ForKey:@"width"];
    v5->_height = [coderCopy decodeInt32ForKey:@"height"];
    v5->_orientation = [coderCopy decodeInt32ForKey:@"orientation"];
    v5->_hasThumbnail = [coderCopy decodeBoolForKey:@"hasThumbnail"];
    v5->_captureDate = [coderCopy decodeInt64ForKey:@"captureDate"];
    v5->_modificationDate = [coderCopy decodeInt64ForKey:@"modificationDate"];
    v8 = [MEMORY[0x29EDB8E50] setWithObjects:{objc_opt_class(), 0}];
    v9 = MEMORY[0x29EDB8E50];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeDictionaryWithKeysOfClasses:v8 objectsOfClasses:v11 forKey:@"keywords"];
    v13 = [v12 mutableCopy];
    keywords = v5->_keywords;
    v5->_keywords = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  objectHandle = self->_objectHandle;
  coderCopy = coder;
  [coderCopy encodeInt32:objectHandle forKey:@"objectHandle"];
  [coderCopy encodeInt32:self->_parentObjectHandle forKey:@"parentObjectHandle"];
  [coderCopy encodeInt32:self->_storageID forKey:@"storageID"];
  [coderCopy encodeInt32:self->_topLevel forKey:@"topLevel"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeInt32:self->_type forKey:@"type"];
  [coderCopy encodeBool:self->_readOnly forKey:@"readOnly"];
  [coderCopy encodeInt32:self->_sequenceNumber forKey:@"sequenceNumber"];
  [coderCopy encodeInt64:self->_size forKey:@"size"];
  [coderCopy encodeInt32:self->_width forKey:@"width"];
  [coderCopy encodeInt32:self->_height forKey:@"height"];
  [coderCopy encodeInt32:self->_orientation forKey:@"orientation"];
  [coderCopy encodeBool:self->_hasThumbnail forKey:@"hasThumbnail"];
  [coderCopy encodeInt64:self->_captureDate forKey:@"captureDate"];
  [coderCopy encodeInt64:self->_modificationDate forKey:@"modificationDate"];
  [coderCopy encodeObject:self->_keywords forKey:@"keywords"];
}

@end