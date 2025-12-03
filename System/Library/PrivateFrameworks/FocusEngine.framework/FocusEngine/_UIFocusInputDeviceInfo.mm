@interface _UIFocusInputDeviceInfo
+ (_UIFocusInputDeviceInfo)infoWithSenderID:(unint64_t)d;
- (_UIFocusInputDeviceInfo)initWithCoder:(id)coder;
- (_UIFocusInputDeviceInfo)initWithXPCDictionary:(id)dictionary;
- (id)_initWithSenderID:(unint64_t)d;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation _UIFocusInputDeviceInfo

+ (_UIFocusInputDeviceInfo)infoWithSenderID:(unint64_t)d
{
  v3 = [[self alloc] _initWithSenderID:d];

  return v3;
}

- (id)_initWithSenderID:(unint64_t)d
{
  v5.receiver = self;
  v5.super_class = _UIFocusInputDeviceInfo;
  result = [(_UIFocusInputDeviceInfo *)&v5 init];
  if (result)
  {
    *(result + 1) = d;
  }

  return result;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  xdict = dictionary;
  xpc_dictionary_set_uint64(xdict, [@"FocusInputDeviceInfoSenderIDKey" UTF8String], -[_UIFocusInputDeviceInfo senderID](self, "senderID"));
}

- (_UIFocusInputDeviceInfo)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v7.receiver = self;
  v7.super_class = _UIFocusInputDeviceInfo;
  v5 = [(_UIFocusInputDeviceInfo *)&v7 init];
  if (v5)
  {
    v5->_senderID = xpc_dictionary_get_uint64(dictionaryCopy, [@"FocusInputDeviceInfoSenderIDKey" UTF8String]);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  senderID = self->_senderID;

  return [v4 _initWithSenderID:senderID];
}

- (_UIFocusInputDeviceInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = _UIFocusInputDeviceInfo;
  v5 = [(_UIFocusInputDeviceInfo *)&v7 init];
  if (v5)
  {
    v5->_senderID = [coderCopy decodeIntegerForKey:@"FocusInputDeviceInfoSenderIDKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[_UIFocusInputDeviceInfo senderID](self forKey:{"senderID"), @"FocusInputDeviceInfoSenderIDKey"}];
}

@end