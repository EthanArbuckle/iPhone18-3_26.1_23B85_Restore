@interface CWFEventID
+ (CWFEventID)eventIDWithType:(int64_t)type interfaceName:(id)name;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEventID:(id)d;
- (CWFEventID)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CWFEventID

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = sub_1E0BC9038(self->_type);
  v5 = [v3 stringWithFormat:@"type=%@, intf=%@", v4, self->_interfaceName];

  return v5;
}

+ (CWFEventID)eventIDWithType:(int64_t)type interfaceName:(id)name
{
  v13 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v6 = objc_alloc_init(CWFEventID);
  [(CWFEventID *)v6 setType:type];
  [(CWFEventID *)v6 setInterfaceName:nameCopy];

  v7 = CWFGetOSLog();
  if (os_signpost_enabled(v7))
  {
    v8 = sub_1E0BC9038(type);
    v11 = 138412290;
    v12 = v8;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CWFEventID eventIDWithType", "%@", &v11, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)isEqualToEventID:(id)d
{
  dCopy = d;
  type = self->_type;
  if (type == [dCopy type])
  {
    interfaceName = self->_interfaceName;
    interfaceName = [dCopy interfaceName];
    if (interfaceName == interfaceName)
    {
      v11 = 1;
    }

    else if (self->_interfaceName)
    {
      interfaceName2 = [dCopy interfaceName];
      if (interfaceName2)
      {
        v9 = self->_interfaceName;
        interfaceName3 = [dCopy interfaceName];
        v11 = [(NSString *)v9 isEqual:interfaceName3];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFEventID *)self isEqualToEventID:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setType:self->_type];
  [v4 setInterfaceName:self->_interfaceName];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"_type"];
  [coderCopy encodeObject:self->_interfaceName forKey:@"_interfaceName"];
}

- (CWFEventID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CWFEventID;
  v5 = [(CWFEventID *)&v9 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"_type"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_interfaceName"];
    interfaceName = v5->_interfaceName;
    v5->_interfaceName = v6;
  }

  return v5;
}

@end