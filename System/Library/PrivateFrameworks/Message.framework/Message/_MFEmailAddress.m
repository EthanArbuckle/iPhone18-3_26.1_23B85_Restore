@interface _MFEmailAddress
- (NSString)fullAddress;
- (_MFEmailAddress)initWithAddress:(id)a3;
- (_MFEmailAddress)initWithAddress:(id)a3 displayName:(id)a4;
@end

@implementation _MFEmailAddress

- (NSString)fullAddress
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_fullAddress)
  {
    v3 = objc_alloc(MEMORY[0x1E699B248]);
    v4 = [(_MFEmailAddress *)v2 address];
    v5 = [v3 initWithString:v4];

    v6 = [(_MFEmailAddress *)v2 displayName];
    [v5 setDisplayName:v6];

    v7 = [v5 stringValue];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [(_MFEmailAddress *)v2 address];
    }

    fullAddress = v2->_fullAddress;
    v2->_fullAddress = v9;
  }

  objc_sync_exit(v2);

  v11 = v2->_fullAddress;

  return v11;
}

- (_MFEmailAddress)initWithAddress:(id)a3 displayName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = _MFEmailAddress;
  v8 = [(_MFEmailAddress *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    address = v8->_address;
    v8->_address = v9;

    v11 = [v7 copy];
    displayName = v8->_displayName;
    v8->_displayName = v11;

    fullAddress = v8->_fullAddress;
    v8->_fullAddress = 0;
  }

  return v8;
}

- (_MFEmailAddress)initWithAddress:(id)a3
{
  v4 = a3;
  v5 = [v4 emailAddressValue];
  v6 = [v5 simpleAddress];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [v4 stringValue];
  }

  v9 = v8;

  v10 = [v5 displayName];
  if (v10)
  {
    v11 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v12 = [v10 stringByTrimmingCharactersInSet:v11];

    v13 = [v12 ef_stringByTrimmingOuterQuotes];

    v14 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v10 = [v13 stringByTrimmingCharactersInSet:v14];
  }

  if (v5)
  {
    v15 = [v10 emailAddressValue];
    if (v15)
    {

      v10 = 0;
    }
  }

  v16 = [(_MFEmailAddress *)self initWithAddress:v9 displayName:v10];

  return v16;
}

@end