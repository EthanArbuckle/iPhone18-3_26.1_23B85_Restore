@interface CWFEventID
+ (CWFEventID)eventIDWithType:(int64_t)a3 interfaceName:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEventID:(id)a3;
- (CWFEventID)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CWFEventID

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = sub_1E0BC9038(self->_type);
  v5 = [v3 stringWithFormat:@"type=%@, intf=%@", v4, self->_interfaceName];

  return v5;
}

+ (CWFEventID)eventIDWithType:(int64_t)a3 interfaceName:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = objc_alloc_init(CWFEventID);
  [(CWFEventID *)v6 setType:a3];
  [(CWFEventID *)v6 setInterfaceName:v5];

  v7 = CWFGetOSLog();
  if (os_signpost_enabled(v7))
  {
    v8 = sub_1E0BC9038(a3);
    v11 = 138412290;
    v12 = v8;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CWFEventID eventIDWithType", "%@", &v11, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)isEqualToEventID:(id)a3
{
  v4 = a3;
  type = self->_type;
  if (type == [v4 type])
  {
    interfaceName = self->_interfaceName;
    v7 = [v4 interfaceName];
    if (interfaceName == v7)
    {
      v11 = 1;
    }

    else if (self->_interfaceName)
    {
      v8 = [v4 interfaceName];
      if (v8)
      {
        v9 = self->_interfaceName;
        v10 = [v4 interfaceName];
        v11 = [(NSString *)v9 isEqual:v10];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFEventID *)self isEqualToEventID:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setType:self->_type];
  [v4 setInterfaceName:self->_interfaceName];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"_type"];
  [v5 encodeObject:self->_interfaceName forKey:@"_interfaceName"];
}

- (CWFEventID)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CWFEventID;
  v5 = [(CWFEventID *)&v9 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"_type"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_interfaceName"];
    interfaceName = v5->_interfaceName;
    v5->_interfaceName = v6;
  }

  return v5;
}

@end