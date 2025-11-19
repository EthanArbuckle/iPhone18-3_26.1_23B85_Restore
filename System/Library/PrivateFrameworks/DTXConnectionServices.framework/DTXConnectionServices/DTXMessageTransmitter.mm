@interface DTXMessageTransmitter
- (unsigned)fragmentsForLength:(unint64_t)a3;
- (void)transmitMessage:(id)a3 routingInfo:(DTXMessageRoutingInfo)a4 fragment:(unsigned int)a5 transmitter:(id)a6;
@end

@implementation DTXMessageTransmitter

- (unsigned)fragmentsForLength:(unint64_t)a3
{
  if (objc_msgSend_suggestedFragmentSize(self, a2, a3) < 0x21)
  {
    return 1;
  }

  v8 = (a3 - 1) / (objc_msgSend_suggestedFragmentSize(self, v5, v6) - 32);
  if ((v8 + 1) <= 1)
  {
    return v8 + 1;
  }

  else
  {
    return v8 + 2;
  }
}

- (void)transmitMessage:(id)a3 routingInfo:(DTXMessageRoutingInfo)a4 fragment:(unsigned int)a5 transmitter:(id)a6
{
  v8 = *&a4.var2;
  v9 = *&a4.var0;
  v12 = a3;
  v15 = a6;
  if (!v12)
  {
    sub_247F5A3D8(a2, self, v14);
  }

  v16 = objc_msgSend_serializedLength(v12, v13, v14);
  v18 = objc_msgSend_fragmentsForLength_(self, v17, v16);
  if (v18 <= a5)
  {
    sub_247F5A454();
  }

  v34 = 0x201F3D5B79;
  v35 = a5;
  v36 = v18;
  v37 = v16;
  v38 = v9;
  v39 = v8;
  if (v18 == 1)
  {
    v15[2](v15, &v34, 32);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_247F50BD0;
    v32[3] = &unk_278EEF018;
    v33 = v15;
    objc_msgSend_serializedFormApply_(v12, v21, v32);
  }

  else if (a5)
  {
    v22 = objc_msgSend_suggestedFragmentSize(self, v19, v20) - 32;
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x2020000000;
    v31 = v22 * (a5 - 1);
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    if (v16 - v31 < v22)
    {
      LODWORD(v22) = v16 - v31;
    }

    v29 = v22;
    v37 = v22;
    v15[2](v15, &v34, 32);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_247F50BE0;
    v24[3] = &unk_278EEF040;
    v26 = v28;
    v27 = v30;
    v25 = v15;
    objc_msgSend_serializedFormApply_(v12, v23, v24);

    _Block_object_dispose(v28, 8);
    _Block_object_dispose(v30, 8);
  }

  else
  {
    v15[2](v15, &v34, 32);
  }
}

@end