@interface CUNANPairingPromptInfo
- (CUNANPairingPromptInfo)initWithDataSession:(id)a3;
- (id)description;
@end

@implementation CUNANPairingPromptInfo

- (id)description
{
  v27 = 8;
  v26 = 0;
  CUAppendF(&v26, &v27, "name=%@", v2, v3, v4, v5, v6, self->_name);
  v8 = v26;
  textInfo = self->_textInfo;
  v25 = v8;
  v16 = NSPrintF("%##@", v9, v10, v11, v12, v13, v14, v15, textInfo);
  CUAppendF(&v25, &v27, "textInfo=%@", v17, v18, v19, v20, v21, v16);
  v22 = v25;

  return v22;
}

- (CUNANPairingPromptInfo)initWithDataSession:(id)a3
{
  v7.receiver = self;
  v7.super_class = CUNANPairingPromptInfo;
  v3 = [(CUNANPairingPromptInfo *)&v7 init];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

@end