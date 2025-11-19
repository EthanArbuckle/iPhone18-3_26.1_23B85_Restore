@interface CNUIContactPropertyIDSHandle
+ (id)idsIDForEmail:(id)a3;
+ (id)idsIDForPhoneNumber:(id)a3;
+ (id)supportedContactPropertyKeys;
- (BOOL)isEqual:(id)a3;
- (CNUIContactPropertyIDSHandle)initWithContactProperty:(id)a3;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation CNUIContactPropertyIDSHandle

+ (id)supportedContactPropertyKeys
{
  v5[2] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695C330];
  v5[0] = *MEMORY[0x1E695C208];
  v5[1] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];

  return v3;
}

+ (id)idsIDForPhoneNumber:(id)a3
{
  v3 = a3;
  v4 = [v3 digits];
  v5 = [v3 countryCode];
  v6 = v4;
  v7 = v5;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v8 = getIDSCopyIDForPhoneNumberWithOptionsSymbolLoc_ptr;
  v16 = getIDSCopyIDForPhoneNumberWithOptionsSymbolLoc_ptr;
  if (!getIDSCopyIDForPhoneNumberWithOptionsSymbolLoc_ptr)
  {
    v9 = IDSLibrary_0();
    v14[3] = dlsym(v9, "IDSCopyIDForPhoneNumberWithOptions");
    getIDSCopyIDForPhoneNumberWithOptionsSymbolLoc_ptr = v14[3];
    v8 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v8)
  {
    v12 = +[CNUIIDSRequest IDSServiceForService:];
    _Block_object_dispose(&v13, 8);
    _Unwind_Resume(v12);
  }

  v10 = v8(v6, v7, 1);

  return v10;
}

+ (id)idsIDForEmail:(id)a3
{
  v3 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v4 = getIDSCopyIDForEmailAddressSymbolLoc_ptr;
  v12 = getIDSCopyIDForEmailAddressSymbolLoc_ptr;
  if (!getIDSCopyIDForEmailAddressSymbolLoc_ptr)
  {
    v5 = IDSLibrary_0();
    v10[3] = dlsym(v5, "IDSCopyIDForEmailAddress");
    getIDSCopyIDForEmailAddressSymbolLoc_ptr = v10[3];
    v4 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v4)
  {
    v8 = +[CNUIIDSRequest IDSServiceForService:];
    _Block_object_dispose(&v9, 8);
    _Unwind_Resume(v8);
  }

  v6 = v4(v3);

  return v6;
}

- (CNUIContactPropertyIDSHandle)initWithContactProperty:(id)a3
{
  v28[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_opt_class() supportedContactPropertyKeys];
  v6 = [v4 key];
  v7 = [v5 containsObject:v6];

  if ((v7 & 1) == 0)
  {
    v20 = MEMORY[0x1E695DF30];
    v21 = *MEMORY[0x1E695D930];
    v27 = @"unsupportedKey";
    v22 = [v4 key];
    v28[0] = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v24 = [v20 exceptionWithName:v21 reason:@"Unsupported key passed to CNUIContactPropertyIDSHandle" userInfo:v23];
    v25 = v24;

    objc_exception_throw(v24);
  }

  v26.receiver = self;
  v26.super_class = CNUIContactPropertyIDSHandle;
  v8 = [(CNUIContactPropertyIDSHandle *)&v26 init];
  if (v8)
  {
    v9 = [v4 copy];
    contactProperty = v8->_contactProperty;
    v8->_contactProperty = v9;

    v11 = [v4 key];
    v12 = [v11 isEqual:*MEMORY[0x1E695C330]];

    v13 = objc_opt_class();
    v14 = [v4 value];
    if (v12)
    {
      [v13 idsIDForPhoneNumber:v14];
    }

    else
    {
      [v13 idsIDForEmail:v14];
    }
    v15 = ;

    v16 = [v15 copy];
    idsID = v8->_idsID;
    v8->_idsID = v16;

    v18 = v8;
  }

  return v8;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [(CNUIContactPropertyIDSHandle *)self contactProperty];
  v5 = [v3 appendName:@"contactProperty" object:v4];

  v6 = [(CNUIContactPropertyIDSHandle *)self idsID];
  v7 = [v3 appendName:@"idsID" object:v6];

  v8 = [v3 build];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69966F0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__CNUIContactPropertyIDSHandle_isEqual___block_invoke;
  v8[3] = &unk_1E76E7A88;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  LOBYTE(self) = [v5 isObject:self equalToOther:v6 withBlocks:{v8, 0}];

  return self;
}

uint64_t __40__CNUIContactPropertyIDSHandle_isEqual___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) idsID];
  if (!v3)
  {
    v1 = [*(a1 + 40) idsID];
    if (!v1)
    {
      v6 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v4 = [*(a1 + 32) idsID];
  v5 = [*(a1 + 40) idsID];
  v6 = [v4 isEqual:v5];

  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v6;
}

- (unint64_t)hash
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__CNUIContactPropertyIDSHandle_hash__block_invoke;
  v3[3] = &unk_1E76E7AB0;
  v3[4] = self;
  return [MEMORY[0x1E6996730] hashWithBlocks:{v3, 0}];
}

uint64_t __36__CNUIContactPropertyIDSHandle_hash__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) idsID];
  v2 = [v1 hash];

  return v2;
}

@end