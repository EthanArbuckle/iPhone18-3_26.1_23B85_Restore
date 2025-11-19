@interface ICCameraItemProxy
- (ICCameraItemProxy)init;
- (ICCameraItemProxy)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (ICCameraItemProxy)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ICCameraItemProxy;
  v5 = [(ICCameraItemProxy *)&v16 init];
  if (v5)
  {
    v5->_objectHandle = [v4 decodeInt32ForKey:@"objectHandle"];
    v5->_parentObjectHandle = [v4 decodeInt32ForKey:@"parentObjectHandle"];
    v5->_storageID = [v4 decodeInt32ForKey:@"storageID"];
    v5->_topLevel = [v4 decodeInt32ForKey:@"topLevel"] != 0;
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v5->_type = [v4 decodeInt32ForKey:@"type"];
    v5->_readOnly = [v4 decodeBoolForKey:@"readOnly"];
    v5->_sequenceNumber = [v4 decodeInt32ForKey:@"sequenceNumber"];
    v5->_size = [v4 decodeInt64ForKey:@"size"];
    v5->_width = [v4 decodeInt32ForKey:@"width"];
    v5->_height = [v4 decodeInt32ForKey:@"height"];
    v5->_orientation = [v4 decodeInt32ForKey:@"orientation"];
    v5->_hasThumbnail = [v4 decodeBoolForKey:@"hasThumbnail"];
    v5->_captureDate = [v4 decodeInt64ForKey:@"captureDate"];
    v5->_modificationDate = [v4 decodeInt64ForKey:@"modificationDate"];
    v8 = [MEMORY[0x29EDB8E50] setWithObjects:{objc_opt_class(), 0}];
    v9 = MEMORY[0x29EDB8E50];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [v4 decodeDictionaryWithKeysOfClasses:v8 objectsOfClasses:v11 forKey:@"keywords"];
    v13 = [v12 mutableCopy];
    keywords = v5->_keywords;
    v5->_keywords = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  objectHandle = self->_objectHandle;
  v5 = a3;
  [v5 encodeInt32:objectHandle forKey:@"objectHandle"];
  [v5 encodeInt32:self->_parentObjectHandle forKey:@"parentObjectHandle"];
  [v5 encodeInt32:self->_storageID forKey:@"storageID"];
  [v5 encodeInt32:self->_topLevel forKey:@"topLevel"];
  [v5 encodeObject:self->_name forKey:@"name"];
  [v5 encodeInt32:self->_type forKey:@"type"];
  [v5 encodeBool:self->_readOnly forKey:@"readOnly"];
  [v5 encodeInt32:self->_sequenceNumber forKey:@"sequenceNumber"];
  [v5 encodeInt64:self->_size forKey:@"size"];
  [v5 encodeInt32:self->_width forKey:@"width"];
  [v5 encodeInt32:self->_height forKey:@"height"];
  [v5 encodeInt32:self->_orientation forKey:@"orientation"];
  [v5 encodeBool:self->_hasThumbnail forKey:@"hasThumbnail"];
  [v5 encodeInt64:self->_captureDate forKey:@"captureDate"];
  [v5 encodeInt64:self->_modificationDate forKey:@"modificationDate"];
  [v5 encodeObject:self->_keywords forKey:@"keywords"];
}

@end