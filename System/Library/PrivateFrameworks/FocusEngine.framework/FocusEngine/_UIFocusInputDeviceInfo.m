@interface _UIFocusInputDeviceInfo
+ (_UIFocusInputDeviceInfo)infoWithSenderID:(unint64_t)a3;
- (_UIFocusInputDeviceInfo)initWithCoder:(id)a3;
- (_UIFocusInputDeviceInfo)initWithXPCDictionary:(id)a3;
- (id)_initWithSenderID:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation _UIFocusInputDeviceInfo

+ (_UIFocusInputDeviceInfo)infoWithSenderID:(unint64_t)a3
{
  v3 = [[a1 alloc] _initWithSenderID:a3];

  return v3;
}

- (id)_initWithSenderID:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = _UIFocusInputDeviceInfo;
  result = [(_UIFocusInputDeviceInfo *)&v5 init];
  if (result)
  {
    *(result + 1) = a3;
  }

  return result;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  xdict = a3;
  xpc_dictionary_set_uint64(xdict, [@"FocusInputDeviceInfoSenderIDKey" UTF8String], -[_UIFocusInputDeviceInfo senderID](self, "senderID"));
}

- (_UIFocusInputDeviceInfo)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UIFocusInputDeviceInfo;
  v5 = [(_UIFocusInputDeviceInfo *)&v7 init];
  if (v5)
  {
    v5->_senderID = xpc_dictionary_get_uint64(v4, [@"FocusInputDeviceInfoSenderIDKey" UTF8String]);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  senderID = self->_senderID;

  return [v4 _initWithSenderID:senderID];
}

- (_UIFocusInputDeviceInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UIFocusInputDeviceInfo;
  v5 = [(_UIFocusInputDeviceInfo *)&v7 init];
  if (v5)
  {
    v5->_senderID = [v4 decodeIntegerForKey:@"FocusInputDeviceInfoSenderIDKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[_UIFocusInputDeviceInfo senderID](self forKey:{"senderID"), @"FocusInputDeviceInfoSenderIDKey"}];
}

@end