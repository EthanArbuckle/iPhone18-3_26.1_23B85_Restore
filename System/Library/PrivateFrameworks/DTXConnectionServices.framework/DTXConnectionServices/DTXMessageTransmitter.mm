@interface DTXMessageTransmitter
- (unsigned)fragmentsForLength:(unint64_t)length;
- (void)transmitMessage:(id)message routingInfo:(DTXMessageRoutingInfo)info fragment:(unsigned int)fragment transmitter:(id)transmitter;
@end

@implementation DTXMessageTransmitter

- (unsigned)fragmentsForLength:(unint64_t)length
{
  if (objc_msgSend_suggestedFragmentSize(self, a2, length) < 0x21)
  {
    return 1;
  }

  v8 = (length - 1) / (objc_msgSend_suggestedFragmentSize(self, v5, v6) - 32);
  if ((v8 + 1) <= 1)
  {
    return v8 + 1;
  }

  else
  {
    return v8 + 2;
  }
}

- (void)transmitMessage:(id)message routingInfo:(DTXMessageRoutingInfo)info fragment:(unsigned int)fragment transmitter:(id)transmitter
{
  v8 = *&info.var2;
  v9 = *&info.var0;
  messageCopy = message;
  transmitterCopy = transmitter;
  if (!messageCopy)
  {
    sub_247F5A3D8(a2, self, v14);
  }

  v16 = objc_msgSend_serializedLength(messageCopy, v13, v14);
  v18 = objc_msgSend_fragmentsForLength_(self, v17, v16);
  if (v18 <= fragment)
  {
    sub_247F5A454();
  }

  v34 = 0x201F3D5B79;
  fragmentCopy = fragment;
  v36 = v18;
  v37 = v16;
  v38 = v9;
  v39 = v8;
  if (v18 == 1)
  {
    transmitterCopy[2](transmitterCopy, &v34, 32);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_247F50BD0;
    v32[3] = &unk_278EEF018;
    v33 = transmitterCopy;
    objc_msgSend_serializedFormApply_(messageCopy, v21, v32);
  }

  else if (fragment)
  {
    v22 = objc_msgSend_suggestedFragmentSize(self, v19, v20) - 32;
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x2020000000;
    v31 = v22 * (fragment - 1);
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    if (v16 - v31 < v22)
    {
      LODWORD(v22) = v16 - v31;
    }

    v29 = v22;
    v37 = v22;
    transmitterCopy[2](transmitterCopy, &v34, 32);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_247F50BE0;
    v24[3] = &unk_278EEF040;
    v26 = v28;
    v27 = v30;
    v25 = transmitterCopy;
    objc_msgSend_serializedFormApply_(messageCopy, v23, v24);

    _Block_object_dispose(v28, 8);
    _Block_object_dispose(v30, 8);
  }

  else
  {
    transmitterCopy[2](transmitterCopy, &v34, 32);
  }
}

@end