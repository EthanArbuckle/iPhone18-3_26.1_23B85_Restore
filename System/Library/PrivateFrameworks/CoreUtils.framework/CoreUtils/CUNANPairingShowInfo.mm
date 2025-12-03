@interface CUNANPairingShowInfo
- (CUNANPairingShowInfo)initWithSubscriberInfo:(id)info pinCode:(id)code;
- (id)description;
@end

@implementation CUNANPairingShowInfo

- (id)description
{
  v33 = 8;
  v32 = 0;
  CUAppendF(&v32, &v33, "name=%@", v2, v3, v4, v5, v6, self->_name);
  v8 = v32;
  v31 = v8;
  CUAppendF(&v31, &v33, "pinCode=%@", v9, v10, v11, v12, v13, self->_pinCode);
  v14 = v31;

  v30 = v14;
  v22 = NSPrintF("%##@", v15, v16, v17, v18, v19, v20, v21, self->_textInfo);
  CUAppendF(&v30, &v33, "textInfo=%@", v23, v24, v25, v26, v27, v22);
  v28 = v30;

  return v28;
}

- (CUNANPairingShowInfo)initWithSubscriberInfo:(id)info pinCode:(id)code
{
  infoCopy = info;
  codeCopy = code;
  v17.receiver = self;
  v17.super_class = CUNANPairingShowInfo;
  v8 = [(CUNANPairingShowInfo *)&v17 init];
  if (v8)
  {
    instanceName = [infoCopy instanceName];
    name = v8->_name;
    v8->_name = instanceName;

    objc_storeStrong(&v8->_pinCode, code);
    txtRecordData = [infoCopy txtRecordData];
    v13 = CUTXTDictionaryCreateWithTXTData(txtRecordData, v12, 0);
    textInfo = v8->_textInfo;
    v8->_textInfo = v13;

    v15 = v8;
  }

  return v8;
}

@end