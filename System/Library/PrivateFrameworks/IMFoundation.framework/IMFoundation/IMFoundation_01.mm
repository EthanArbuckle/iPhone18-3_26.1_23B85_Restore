void *_IMStringFromFZListenerCapabilities(int a1)
{
  v2 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_msgSend_initWithString_(v2, v3, @"(");
  v7 = v4;
  if (a1)
  {
    if (objc_msgSend_length(v4, v5, v6) >= 2)
    {
      objc_msgSend_appendString_(v7, v8, @", ");
    }

    objc_msgSend_appendString_(v7, v8, @"Status");
  }

  if ((a1 & 2) != 0)
  {
    if (objc_msgSend_length(v7, v5, v6) >= 2)
    {
      objc_msgSend_appendString_(v7, v9, @", ");
    }

    objc_msgSend_appendString_(v7, v9, @"Notifications");
  }

  if ((a1 & 4) != 0)
  {
    if (objc_msgSend_length(v7, v5, v6) >= 2)
    {
      objc_msgSend_appendString_(v7, v10, @", ");
    }

    objc_msgSend_appendString_(v7, v10, @"Chats");
  }

  if ((a1 & 8) != 0)
  {
    if (objc_msgSend_length(v7, v5, v6) >= 2)
    {
      objc_msgSend_appendString_(v7, v11, @", ");
    }

    objc_msgSend_appendString_(v7, v11, @"VC");
  }

  if ((a1 & 0x80000) != 0)
  {
    if (objc_msgSend_length(v7, v5, v6) >= 2)
    {
      objc_msgSend_appendString_(v7, v12, @", ");
    }

    objc_msgSend_appendString_(v7, v12, @"FTA");
  }

  if ((a1 & 0x10) != 0)
  {
    if (objc_msgSend_length(v7, v5, v6) >= 2)
    {
      objc_msgSend_appendString_(v7, v13, @", ");
    }

    objc_msgSend_appendString_(v7, v13, @"AV Chat Info");
  }

  if ((a1 & 0x20) != 0)
  {
    if (objc_msgSend_length(v7, v5, v6) >= 2)
    {
      objc_msgSend_appendString_(v7, v14, @", ");
    }

    objc_msgSend_appendString_(v7, v14, @"Aux Input");
  }

  if ((a1 & 0x40) != 0)
  {
    if (objc_msgSend_length(v7, v5, v6) >= 2)
    {
      objc_msgSend_appendString_(v7, v15, @", ");
    }

    objc_msgSend_appendString_(v7, v15, @"VC Invitations");
  }

  if ((a1 & 0x80) != 0)
  {
    if (objc_msgSend_length(v7, v5, v6) >= 2)
    {
      objc_msgSend_appendString_(v7, v16, @", ");
    }

    objc_msgSend_appendString_(v7, v16, @"Legacy VC");
  }

  if ((a1 & 0x100) != 0)
  {
    if (objc_msgSend_length(v7, v5, v6) >= 2)
    {
      objc_msgSend_appendString_(v7, v17, @", ");
    }

    objc_msgSend_appendString_(v7, v17, @"Transfers");
  }

  if ((a1 & 0x200) != 0)
  {
    if (objc_msgSend_length(v7, v5, v6) >= 2)
    {
      objc_msgSend_appendString_(v7, v18, @", ");
    }

    objc_msgSend_appendString_(v7, v18, @"Accounts");
  }

  if ((a1 & 0x400) != 0)
  {
    if (objc_msgSend_length(v7, v5, v6) >= 2)
    {
      objc_msgSend_appendString_(v7, v19, @", ");
    }

    objc_msgSend_appendString_(v7, v19, @"Buddy List");
  }

  if ((a1 & 0x1000) != 0)
  {
    if (objc_msgSend_length(v7, v5, v6) >= 2)
    {
      objc_msgSend_appendString_(v7, v20, @", ");
    }

    objc_msgSend_appendString_(v7, v20, @"Send Messages");
  }

  if ((a1 & 0x4000) != 0)
  {
    if (objc_msgSend_length(v7, v5, v6) >= 2)
    {
      objc_msgSend_appendString_(v7, v21, @", ");
    }

    objc_msgSend_appendString_(v7, v21, @"ID Queries");
  }

  if ((a1 & 0x2000) != 0)
  {
    if (objc_msgSend_length(v7, v5, v6) >= 2)
    {
      objc_msgSend_appendString_(v7, v22, @", ");
    }

    objc_msgSend_appendString_(v7, v22, @"Message History");
  }

  if ((a1 & 0x40000) != 0)
  {
    if (objc_msgSend_length(v7, v5, v6) >= 2)
    {
      objc_msgSend_appendString_(v7, v23, @", ");
    }

    objc_msgSend_appendString_(v7, v23, @"Modify Read State");
  }

  if ((a1 & 0x8000) != 0)
  {
    if (objc_msgSend_length(v7, v5, v6) >= 2)
    {
      objc_msgSend_appendString_(v7, v24, @", ");
    }

    objc_msgSend_appendString_(v7, v24, @"Chat Counts");
  }

  if ((a1 & 0x10000) != 0)
  {
    if (objc_msgSend_length(v7, v5, v6) >= 2)
    {
      objc_msgSend_appendString_(v7, v25, @", ");
    }

    objc_msgSend_appendString_(v7, v25, @"Sent Messages");
  }

  if ((a1 & 0x20000) != 0)
  {
    if (objc_msgSend_length(v7, v5, v6) >= 2)
    {
      objc_msgSend_appendString_(v7, v26, @", ");
    }

    objc_msgSend_appendString_(v7, v26, @"Database Update");
  }

  if ((a1 & 0x100000) != 0)
  {
    if (objc_msgSend_length(v7, v5, v6) >= 2)
    {
      objc_msgSend_appendString_(v7, v27, @", ");
    }

    objc_msgSend_appendString_(v7, v27, @"AV");
  }

  if ((a1 & 0x200000) != 0)
  {
    if (objc_msgSend_length(v7, v5, v6) >= 2)
    {
      objc_msgSend_appendString_(v7, v28, @", ");
    }

    objc_msgSend_appendString_(v7, v28, @"On Demand Chats");
  }

  if ((a1 & 0x400000) != 0)
  {
    if (objc_msgSend_length(v7, v5, v6) >= 2)
    {
      objc_msgSend_appendString_(v7, v29, @", ");
    }

    objc_msgSend_appendString_(v7, v29, @"Truncated Chats");
  }

  if ((a1 & 0x2000000) != 0)
  {
    if (objc_msgSend_length(v7, v5, v6) >= 2)
    {
      objc_msgSend_appendString_(v7, v30, @", ");
    }

    objc_msgSend_appendString_(v7, v30, @"Even more Truncated Chats");
  }

  if ((a1 & 0x800000) != 0)
  {
    if (objc_msgSend_length(v7, v5, v6) >= 2)
    {
      objc_msgSend_appendString_(v7, v31, @", ");
    }

    objc_msgSend_appendString_(v7, v31, @"OneTimeCode");
  }

  if ((a1 & 0x1000000) != 0)
  {
    if (objc_msgSend_length(v7, v5, v6) >= 2)
    {
      objc_msgSend_appendString_(v7, v32, @", ");
    }

    objc_msgSend_appendString_(v7, v32, @"Skip Last Message");
  }

  if ((a1 & 0x4000000) != 0)
  {
    if (objc_msgSend_length(v7, v5, v6) >= 2)
    {
      objc_msgSend_appendString_(v7, v33, @", ");
    }

    objc_msgSend_appendString_(v7, v33, @"Blackhole Chats");
  }

  if ((a1 & 0x8000000) != 0)
  {
    if (objc_msgSend_length(v7, v5, v6) >= 2)
    {
      objc_msgSend_appendString_(v7, v34, @", ");
    }

    objc_msgSend_appendString_(v7, v34, @"Send Emergency Messages");
  }

  objc_msgSend_appendString_(v7, v5, @""));
  v35 = v7;

  return v7;
}

void *_IMStringFromFZCapabilities(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_msgSend_initWithString_(v2, v3, @"(");
  v7 = v4;
  if (a1)
  {
    if (objc_msgSend_length(v4, v5, v6) >= 2)
    {
      objc_msgSend_appendString_(v7, v8, @", ");
    }

    objc_msgSend_appendString_(v7, v8, @"Buddy Icon");
    if ((a1 & 4) == 0)
    {
LABEL_3:
      if ((a1 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_53;
    }
  }

  else if ((a1 & 4) == 0)
  {
    goto LABEL_3;
  }

  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v9, @", ");
  }

  objc_msgSend_appendString_(v7, v9, @"IM Image");
  if ((a1 & 8) == 0)
  {
LABEL_4:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

LABEL_53:
  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v10, @", ");
  }

  objc_msgSend_appendString_(v7, v10, @"Chat");
  if ((a1 & 0x10) == 0)
  {
LABEL_5:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_59;
  }

LABEL_56:
  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v11, @", ");
  }

  objc_msgSend_appendString_(v7, v11, @"GetFile");
  if ((a1 & 0x20) == 0)
  {
LABEL_6:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_62;
  }

LABEL_59:
  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v12, @", ");
  }

  objc_msgSend_appendString_(v7, v12, @"SendFile");
  if ((a1 & 0x40) == 0)
  {
LABEL_7:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_65;
  }

LABEL_62:
  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v13, @", ");
  }

  objc_msgSend_appendString_(v7, v13, @"Chat Roomts");
  if ((a1 & 0x80) == 0)
  {
LABEL_8:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_68;
  }

LABEL_65:
  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v14, @", ");
  }

  objc_msgSend_appendString_(v7, v14, @"Registration");
  if ((a1 & 0x100) == 0)
  {
LABEL_9:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_71;
  }

LABEL_68:
  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v15, @", ");
  }

  objc_msgSend_appendString_(v7, v15, @"Offline IM");
  if ((a1 & 0x200) == 0)
  {
LABEL_10:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_74;
  }

LABEL_71:
  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v16, @", ");
  }

  objc_msgSend_appendString_(v7, v16, @"Broadcast Messages");
  if ((a1 & 0x400) == 0)
  {
LABEL_11:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_77;
  }

LABEL_74:
  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v17, @", ");
  }

  objc_msgSend_appendString_(v7, v17, @"IM");
  if ((a1 & 0x1000) == 0)
  {
LABEL_12:
    if ((a1 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_80;
  }

LABEL_77:
  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v18, @", ");
  }

  objc_msgSend_appendString_(v7, v18, @"Message Blocking");
  if ((a1 & 0x2000) == 0)
  {
LABEL_13:
    if ((a1 & 0x8000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_83;
  }

LABEL_80:
  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v19, @", ");
  }

  objc_msgSend_appendString_(v7, v19, @"Presence Blocking");
  if ((a1 & 0x8000) == 0)
  {
LABEL_14:
    if ((a1 & 0x10000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_86;
  }

LABEL_83:
  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v20, @", ");
  }

  objc_msgSend_appendString_(v7, v20, @"Buddy List");
  if ((a1 & 0x10000) == 0)
  {
LABEL_15:
    if ((a1 & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_89;
  }

LABEL_86:
  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v21, @", ");
  }

  objc_msgSend_appendString_(v7, v21, @"Conference Active");
  if ((a1 & 0x20000) == 0)
  {
LABEL_16:
    if ((a1 & 0x40000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_92;
  }

LABEL_89:
  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v22, @", ");
  }

  objc_msgSend_appendString_(v7, v22, @"Viceroy");
  if ((a1 & 0x40000) == 0)
  {
LABEL_17:
    if ((a1 & 0x80000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_95;
  }

LABEL_92:
  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v23, @", ");
  }

  objc_msgSend_appendString_(v7, v23, @"Video Chat");
  if ((a1 & 0x80000) == 0)
  {
LABEL_18:
    if ((a1 & 0x100000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_98;
  }

LABEL_95:
  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v24, @", ");
  }

  objc_msgSend_appendString_(v7, v24, @"Audio Chat");
  if ((a1 & 0x100000) == 0)
  {
LABEL_19:
    if ((a1 & 0x200000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_101;
  }

LABEL_98:
  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v25, @", ");
  }

  objc_msgSend_appendString_(v7, v25, @"Conference Available");
  if ((a1 & 0x200000) == 0)
  {
LABEL_20:
    if ((a1 & 0x400000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_104;
  }

LABEL_101:
  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v26, @", ");
  }

  objc_msgSend_appendString_(v7, v26, @"AOL Video");
  if ((a1 & 0x400000) == 0)
  {
LABEL_21:
    if ((a1 & 0x800000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_107;
  }

LABEL_104:
  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v27, @", ");
  }

  objc_msgSend_appendString_(v7, v27, @"AOL Audio");
  if ((a1 & 0x800000) == 0)
  {
LABEL_22:
    if ((a1 & 0x1000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_110;
  }

LABEL_107:
  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v28, @", ");
  }

  objc_msgSend_appendString_(v7, v28, @"Multi Audio");
  if ((a1 & 0x1000000) == 0)
  {
LABEL_23:
    if ((a1 & 0x2000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_113;
  }

LABEL_110:
  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v29, @", ");
  }

  objc_msgSend_appendString_(v7, v29, @"Multi Video");
  if ((a1 & 0x2000000) == 0)
  {
LABEL_24:
    if ((a1 & 0x4000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_116;
  }

LABEL_113:
  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v30, @", ");
  }

  objc_msgSend_appendString_(v7, v30, @"AOL Multi Audio");
  if ((a1 & 0x4000000) == 0)
  {
LABEL_25:
    if ((a1 & 0x8000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_119;
  }

LABEL_116:
  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v31, @", ");
  }

  objc_msgSend_appendString_(v7, v31, @"RD Server");
  if ((a1 & 0x8000000) == 0)
  {
LABEL_26:
    if ((a1 & 0x10000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_122;
  }

LABEL_119:
  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v32, @", ");
  }

  objc_msgSend_appendString_(v7, v32, @"RD Client");
  if ((a1 & 0x10000000) == 0)
  {
LABEL_27:
    if ((a1 & 0x20000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_125;
  }

LABEL_122:
  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v33, @", ");
  }

  objc_msgSend_appendString_(v7, v33, @"Subscription");
  if ((a1 & 0x20000000) == 0)
  {
LABEL_28:
    if ((a1 & 0x40000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_128;
  }

LABEL_125:
  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v34, @", ");
  }

  objc_msgSend_appendString_(v7, v34, @"Profile");
  if ((a1 & 0x40000000) == 0)
  {
LABEL_29:
    if ((a1 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_131;
  }

LABEL_128:
  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v35, @", ");
  }

  objc_msgSend_appendString_(v7, v35, @"Notes");
  if ((a1 & 0x80000000) == 0)
  {
LABEL_30:
    if ((a1 & 0x100000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_134;
  }

LABEL_131:
  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v36, @", ");
  }

  objc_msgSend_appendString_(v7, v36, @"Forgot Password");
  if ((a1 & 0x100000000) == 0)
  {
LABEL_31:
    if ((a1 & 0x200000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_137;
  }

LABEL_134:
  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v37, @", ");
  }

  objc_msgSend_appendString_(v7, v37, @"Custom Ordering");
  if ((a1 & 0x200000000) == 0)
  {
LABEL_32:
    if ((a1 & 0x400000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_140;
  }

LABEL_137:
  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v38, @", ");
  }

  objc_msgSend_appendString_(v7, v38, @"Buddy Watching");
  if ((a1 & 0x400000000) == 0)
  {
LABEL_33:
    if ((a1 & 0x800000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_143;
  }

LABEL_140:
  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v39, @", ");
  }

  objc_msgSend_appendString_(v7, v39, @"Groups");
  if ((a1 & 0x800000000) == 0)
  {
LABEL_34:
    if ((a1 & 0x1000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_146;
  }

LABEL_143:
  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v40, @", ");
  }

  objc_msgSend_appendString_(v7, v40, @"AV Recording");
  if ((a1 & 0x1000000000) == 0)
  {
LABEL_35:
    if ((a1 & 0x2000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_149;
  }

LABEL_146:
  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v41, @", ");
  }

  objc_msgSend_appendString_(v7, v41, @"Aux Video");
  if ((a1 & 0x2000000000) == 0)
  {
LABEL_36:
    if ((a1 & 0x4000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_152;
  }

LABEL_149:
  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v42, @", ");
  }

  objc_msgSend_appendString_(v7, v42, @"ICE");
  if ((a1 & 0x4000000000) == 0)
  {
LABEL_37:
    if ((a1 & 0x8000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_155;
  }

LABEL_152:
  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v43, @", ");
  }

  objc_msgSend_appendString_(v7, v43, @"Invisible");
  if ((a1 & 0x8000000000) == 0)
  {
LABEL_38:
    if ((a1 & 0x10000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_158;
  }

LABEL_155:
  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v44, @", ");
  }

  objc_msgSend_appendString_(v7, v44, @"Require Chat Suffix");
  if ((a1 & 0x10000000000) == 0)
  {
LABEL_39:
    if ((a1 & 0x20000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_161;
  }

LABEL_158:
  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v45, @", ");
  }

  objc_msgSend_appendString_(v7, v45, @"Chat Ignore");
  if ((a1 & 0x20000000000) == 0)
  {
LABEL_40:
    if ((a1 & 0x40000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_164;
  }

LABEL_161:
  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v46, @", ");
  }

  objc_msgSend_appendString_(v7, v46, @"SMS");
  if ((a1 & 0x40000000000) == 0)
  {
LABEL_41:
    if ((a1 & 0x80000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_167;
  }

LABEL_164:
  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v47, @", ");
  }

  objc_msgSend_appendString_(v7, v47, @"RD Mux");
  if ((a1 & 0x80000000000) == 0)
  {
LABEL_42:
    if ((a1 & 0x100000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_170;
  }

LABEL_167:
  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v48, @", ");
  }

  objc_msgSend_appendString_(v7, v48, @"Directory Transfer");
  if ((a1 & 0x100000000000) == 0)
  {
LABEL_43:
    if ((a1 & 0x200000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_173;
  }

LABEL_170:
  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v49, @", ");
  }

  objc_msgSend_appendString_(v7, v49, @"FaceTime Blob");
  if ((a1 & 0x200000000000) == 0)
  {
LABEL_44:
    if ((a1 & 0x400000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_176;
  }

LABEL_173:
  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v50, @", ");
  }

  objc_msgSend_appendString_(v7, v50, @"FaceTime VC");
  if ((a1 & 0x400000000000) == 0)
  {
LABEL_45:
    if ((a1 & 0x800000000000) == 0)
    {
      goto LABEL_182;
    }

    goto LABEL_179;
  }

LABEL_176:
  if (objc_msgSend_length(v7, v5, v6) >= 2)
  {
    objc_msgSend_appendString_(v7, v51, @", ");
  }

  objc_msgSend_appendString_(v7, v51, @"Delivery Receipts");
  if ((a1 & 0x800000000000) != 0)
  {
LABEL_179:
    if (objc_msgSend_length(v7, v5, v6) >= 2)
    {
      objc_msgSend_appendString_(v7, v52, @", ");
    }

    objc_msgSend_appendString_(v7, v52, @"Read Receipts");
  }

LABEL_182:
  objc_msgSend_appendString_(v7, v5, @""));
  v53 = v7;

  return v7;
}

id IMGenerateLoginID(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend__FZBestGuessFZIDType(v1, v2, v3);
  v6 = objc_msgSend__IDFromFZIDType_(v1, v5, v4);

  return v6;
}

uint64_t IMCopyThreadNameForChat(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return _NSNewStringByAppendingStrings();
  }

  else
  {
    return 0;
  }
}

uint64_t IMCopyGUIDForChat(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return _NSNewStringByAppendingStrings();
  }

  else
  {
    return 0;
  }
}

uint64_t IMCopyProcessNameForPid(int a1)
{
  v7 = *MEMORY[0x1E69E9840];
  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v6[0] = v1;
  v6[1] = v1;
  if (proc_name(a1, v6, 0x20u) < 1)
  {
    result = 0;
  }

  else
  {
    v2 = objc_alloc(MEMORY[0x1E696AEC0]);
    result = objc_msgSend_initWithUTF8String_(v2, v3, v6);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1959A25AC(void *a1)
{
  obj = a1;
  objc_sync_enter(obj);
  v3 = objc_msgSend_count(obj, v1, v2);
  v4 = v3;
  if (v3 >= 2)
  {
    v5 = 0;
    v6 = v3 - 1;
    do
    {
      if (v5 != arc4random() % v6)
      {
        objc_msgSend_exchangeObjectAtIndex_withObjectAtIndex_(obj, v7, v5);
      }

      ++v5;
    }

    while (v4 != v5);
  }

  objc_sync_exit(obj);
}

id _PhotoSharingResponsesForString(void *a1, int a2)
{
  v3 = a1;
  v6 = objc_msgSend_dataDetector(IMIDSLog, v4, v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (a2)
  {
    if (v7)
    {
      sub_1959D3F40();
    }

LABEL_15:

    v24 = 0;
    goto LABEL_19;
  }

  if (v7)
  {
    sub_1959D3E3C();
  }

  if (!v3)
  {
    v6 = objc_msgSend_dataDetector(IMIDSLog, v8, v9);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1959D3EB4();
    }

    goto LABEL_15;
  }

  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_1959968C0;
  v39 = sub_195996EC0;
  v40 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v10 = objc_autoreleasePoolPush();
  v15 = objc_msgSend_sharedManager(IMRKMessageResponseManager, v11, v12);
  if (v15)
  {
    v16 = IMCurrentPreferredLanguage();
    v17 = dispatch_semaphore_create(0);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_1959A2964;
    v27[3] = &unk_1E7438600;
    v29 = &v31;
    v30 = &v35;
    v18 = v17;
    v28 = v18;
    objc_msgSend_responsesForMessage_maximumResponses_forContext_withLanguage_options_completionBlock_(v15, v19, v3, 0, 0, v16, 512, v27);
    v20 = dispatch_time(0, 200000000);
    if (dispatch_semaphore_wait(v18, v20))
    {
      *(v32 + 24) = 1;
      __dmb(0xBu);
      v23 = objc_msgSend_dataDetector(IMIDSLog, v21, v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1959D3E78();
      }
    }
  }

  else
  {
    v16 = objc_msgSend_dataDetector(IMIDSLog, v13, v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      _os_log_impl(&dword_195988000, v16, OS_LOG_TYPE_DEFAULT, "Failed to link RKMessageResponseManager.", v26, 2u);
    }
  }

  objc_autoreleasePoolPop(v10);
  v24 = v36[5];
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);

LABEL_19:

  return v24;
}

void sub_1959A292C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1959A2964(uint64_t a1, void *a2)
{
  v4 = a2;
  __dmb(0xBu);
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    dispatch_semaphore_signal(*(a1 + 32));
    v4 = v5;
  }
}

uint64_t _AddDDPhotoSharingIntentResultToAttributedString(void *a1, void *a2)
{
  v87 = *MEMORY[0x1E69E9840];
  v75 = a1;
  v3 = a2;
  if (!objc_msgSend_count(v3, v4, v5))
  {
    v65 = objc_msgSend_dataDetector(IMIDSLog, v6, v7);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      sub_1959D3FF0();
    }

    goto LABEL_32;
  }

  v8 = IMRKAttributedTokenTypeKey();
  if (v8)
  {
    v11 = v8;
    v12 = IMRKAttributedTokenPhotosharingType();
    if (v12)
    {
      v13 = v12;
      v14 = IMRKAttributedTokenPhotosharingKeywordsKey();
      if (v14)
      {
        v15 = v14;
        v16 = IMRKAttributedTokenPhotosharingKeywordRangesKey();

        if (v16)
        {
          v17 = objc_autoreleasePoolPush();
          v78 = 0u;
          v79 = 0u;
          v80 = 0u;
          v81 = 0u;
          v18 = v3;
          v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v78, v86, 16);
          if (v20)
          {
            v23 = v20;
            v69 = v17;
            v70 = v3;
            v24 = 0;
            v25 = *v79;
            v71 = *v79;
            v72 = v18;
            do
            {
              v26 = 0;
              v73 = v23;
              do
              {
                if (*v79 != v25)
                {
                  objc_enumerationMutation(v18);
                }

                v27 = objc_msgSend_attributes(*(*(&v78 + 1) + 8 * v26), v21, v22, v69, v70);
                v28 = IMRKAttributedTokenTypeKey();
                v30 = objc_msgSend_objectForKeyedSubscript_(v27, v29, v28);

                v31 = IMRKAttributedTokenPhotosharingType();
                v74 = v30;
                LODWORD(v30) = objc_msgSend_isEqualToString_(v30, v32, v31);

                if (v30)
                {
                  v33 = IMRKAttributedTokenPhotosharingKeywordsKey();
                  v35 = objc_msgSend_objectForKeyedSubscript_(v27, v34, v33);

                  v36 = IMRKAttributedTokenPhotosharingKeywordRangesKey();
                  v38 = objc_msgSend_objectForKeyedSubscript_(v27, v37, v36);

                  if (objc_msgSend_count(v35, v39, v40))
                  {
                    v43 = 0;
                    do
                    {
                      if (v43 >= objc_msgSend_count(v38, v41, v42))
                      {
                        v55 = objc_msgSend_dataDetector(IMIDSLog, v44, v45);
                        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
                        {
                          sub_1959D3F7C(&v76, v77);
                        }
                      }

                      else
                      {
                        v46 = objc_msgSend_objectAtIndexedSubscript_(v38, v44, v43);
                        v49 = objc_msgSend_rangeValue(v46, v47, v48);
                        v51 = v50;

                        objc_msgSend_addAttribute_value_range_(v75, v52, @"__kIMPhotoSharingAttributeName", MEMORY[0x1E695E0F8], v49, v51);
                        v55 = objc_msgSend_dataDetector(IMIDSLog, v53, v54);
                        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
                        {
                          v59 = objc_msgSend_objectAtIndexedSubscript_(v35, v56, v43);
                          v61 = objc_msgSend_objectAtIndexedSubscript_(v38, v60, v43);
                          *buf = 138412546;
                          v83 = v59;
                          v84 = 2112;
                          v85 = v61;
                          _os_log_debug_impl(&dword_195988000, v55, OS_LOG_TYPE_DEBUG, "Found photo sharing intent:%@(%@)", buf, 0x16u);
                        }

                        v24 = 1;
                      }

                      ++v43;
                    }

                    while (v43 < objc_msgSend_count(v35, v57, v58));
                  }

                  v25 = v71;
                  v18 = v72;
                  v23 = v73;
                }

                ++v26;
              }

              while (v26 != v23);
              v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v78, v86, 16);
            }

            while (v23);

            v17 = v69;
            v3 = v70;
            if (v24)
            {
              v64 = 1;
LABEL_38:
              objc_autoreleasePoolPop(v17);
              goto LABEL_33;
            }
          }

          else
          {
          }

          v68 = objc_msgSend_dataDetector(IMIDSLog, v62, v63);
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
          {
            sub_1959D3FB4();
          }

          v64 = 0;
          goto LABEL_38;
        }

        goto LABEL_30;
      }
    }
  }

LABEL_30:
  v65 = objc_msgSend_dataDetector(IMIDSLog, v9, v10);
  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195988000, v65, OS_LOG_TYPE_DEFAULT, "Failed to link ResponseKit symbols. Bailing.", buf, 2u);
  }

LABEL_32:

  v64 = 0;
LABEL_33:

  v66 = *MEMORY[0x1E69E9840];
  return v64;
}

uint64_t IMSharedDDScanner()
{
  pthread_mutex_lock(&stru_1EAED7D58);
  if (qword_1EAED8D50 != -1)
  {
    sub_1959D4064();
  }

  v1 = 0;
  if (!qword_1EAED8D40)
  {
    qword_1EAED8D40 = off_1EAED8D60(0, 0, &v1);
    if (qword_1EAED8D40)
    {
      if (qword_1EAED8D48 != -1)
      {
        sub_1959D4078();
      }

      if (qword_1EAED8B78 != -1)
      {
        sub_1959D40A0();
      }

      off_1EAED8D58(qword_1EAED8D40, 2, 1);
      off_1EAED8D58(qword_1EAED8D40, 8, 1);
      off_1EAED8B80(qword_1EAED8D40, 2);
    }
  }

  pthread_mutex_unlock(&stru_1EAED7D58);
  return qword_1EAED8D40;
}

void *sub_1959A2F54()
{
  result = IMWeakLinkSymbol();
  off_1EAED8D60 = result;
  return result;
}

void *sub_1959A2F84()
{
  result = IMWeakLinkSymbol();
  off_1EAED8D58 = result;
  return result;
}

void *sub_1959A2FB4()
{
  result = IMWeakLinkSymbol();
  off_1EAED8B80 = result;
  return result;
}

uint64_t IMSharedDDShortNumberScanner()
{
  pthread_mutex_lock(&stru_1EAED7D58);
  if (qword_1EAED8D30 != -1)
  {
    sub_1959D40C8();
  }

  v1 = 0;
  if (!qword_1EAED8D28)
  {
    qword_1EAED8D28 = off_1EAED8D38(1, 0, &v1);
  }

  pthread_mutex_unlock(&stru_1EAED7D58);
  return qword_1EAED8D28;
}

void *sub_1959A3068()
{
  result = IMWeakLinkSymbol();
  off_1EAED8D38 = result;
  return result;
}

uint64_t IMDDScanAttributedStringWithExtendedContext(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, char a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  if (qword_1EAED8D70 != -1)
  {
    sub_1959D40DC();
  }

  v19 = 0;
  if (v13 && v14)
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    v20 = qword_1EAED8D68;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = sub_1959A32C0;
    v22[3] = &unk_1E7438640;
    v23 = v14;
    v30 = a7;
    v24 = v18;
    v29 = &v31;
    v25 = v13;
    v26 = v15;
    v27 = v16;
    v28 = v17;
    dispatch_sync(v20, v22);
    v19 = *(v32 + 24);

    _Block_object_dispose(&v31, 8);
  }

  return v19 & 1;
}

void sub_1959A325C()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("IMDDScannerQueue", v2);
  v1 = qword_1EAED8D68;
  qword_1EAED8D68 = v0;
}

void sub_1959A32C0(uint64_t a1)
{
  v165 = *MEMORY[0x1E69E9840];
  if (qword_1EAED8C98 != -1)
  {
    sub_1959D40F0();
  }

  if (qword_1EAED8CA0 != -1)
  {
    sub_1959D4104();
  }

  if (qword_1EAED8CA8 != -1)
  {
    sub_1959D4118();
  }

  if (qword_1EAED8CB0 != -1)
  {
    sub_1959D412C();
  }

  if (qword_1EAED8CB8 != -1)
  {
    sub_1959D4140();
  }

  v1 = off_1EAED8CC0;
  v2 = IMSharedDDScanner();
  v3 = *(a1 + 32);
  v5 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 40), v4, @"ConversationID");
  v6 = v1(v2, v3, v5);

  v7 = off_1EAED8CC8;
  v8 = IMSharedDDShortNumberScanner();
  v9 = v7(v8, *(a1 + 32));
  v141 = _PhotoSharingResponsesForString(*(a1 + 32), *(a1 + 88));
  if (!v6 && !v9 && !v141)
  {
    v12 = objc_msgSend_dataDetector(IMIDSLog, v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1959D4154();
    }

    goto LABEL_157;
  }

  v13 = objc_msgSend_dataDetector(IMIDSLog, v10, v11);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_1959D4190();
  }

  if (v6)
  {
    v16 = off_1EAED8CD8;
    v17 = IMSharedDDScanner();
    if (qword_1EAED8AF8 != -1)
    {
      sub_1959D41CC();
    }

    otherArray = v16(v17, qword_1EAED8B00);
    if (v9)
    {
      goto LABEL_23;
    }

LABEL_25:
    theArray = 0;
    goto LABEL_26;
  }

  otherArray = 0;
  if (!v9)
  {
    goto LABEL_25;
  }

LABEL_23:
  v18 = off_1EAED8CD8;
  v19 = IMSharedDDShortNumberScanner();
  theArray = v18(v19, 8);
LABEL_26:
  v20 = objc_msgSend_dataDetector(IMIDSLog, v14, v15);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    sub_1959D41F4();
  }

  v23 = objc_msgSend_dataDetector(IMIDSLog, v21, v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    sub_1959D425C();
  }

  MutableCopy = 0;
  if (otherArray && theArray)
  {
    MutableCopy = CFArrayCreateMutableCopy(0, 0, theArray);
    v166.length = CFArrayGetCount(otherArray);
    v166.location = 0;
    CFArrayAppendArray(MutableCopy, otherArray, v166);
    v27 = off_1EAED8CE0;
    v28 = IMSharedDDScanner();
    v27(MutableCopy, v28, 32);
  }

  cf = MutableCopy;
  if (theArray)
  {
    v29 = MutableCopy;
  }

  else
  {
    v29 = otherArray;
  }

  if (otherArray)
  {
    v30 = v29;
  }

  else
  {
    v30 = theArray;
  }

  v31 = objc_msgSend_dataDetector(IMIDSLog, v24, v25);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    sub_1959D42C4();
  }

  if (!v30)
  {
    goto LABEL_145;
  }

  v34 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 40), v32, @"ConversationID");
  v36 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 40), v35, @"ServiceName");
  v37 = *(a1 + 56);
  v38 = *(a1 + 64);
  v39 = *(a1 + 72);
  v127 = *(a1 + 88);
  v145 = *(a1 + 48);
  v136 = v37;
  v137 = v38;
  v138 = v39;
  v134 = v36;
  v135 = v34;
  if (qword_1EAED8B20 != -1)
  {
    sub_1959D432C();
  }

  if (qword_1EAED8B18 != -1)
  {
    sub_1959D4354();
  }

  if (qword_1EAED8B10 != -1)
  {
    sub_1959D437C();
  }

  if (!CFArrayGetCount(v30))
  {
    goto LABEL_141;
  }

  v42 = objc_msgSend_dataDetector(IMIDSLog, v40, v41);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
  {
    sub_1959D43A4();
  }

  if (CFArrayGetCount(v30) < 1)
  {
LABEL_141:
    LOBYTE(v143) = 0;
    goto LABEL_144;
  }

  v143 = 0;
  v128 = 0;
  v129 = 0;
  v44 = 0;
  *&v43 = 138412802;
  v123 = v43;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v30, v44);
    v46 = off_1EAED8B30();
    v49 = v46;
    if (v46 > 2)
    {
      if (v46 <= 4)
      {
        if (v46 != 3)
        {
          v50 = sub_1959A4BCC(v145, ValueAtIndex, @"__kIMCalendarEventAttributeName");
LABEL_113:
          v143 |= v50;
          goto LABEL_139;
        }

        v131 = v145;
        v133 = v136;
        v89 = v137;
        v90 = v138;
        v93 = objc_msgSend_dataDetector(IMIDSLog, v91, v92);
        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
        {
          sub_1959D449C(&v146, v147);
        }

        v94 = v145 == 0;
        if (!ValueAtIndex)
        {
          v94 = 1;
        }

        if (!v94)
        {
          v95 = objc_autoreleasePoolPush();
          v96 = sub_1959A5360(ValueAtIndex);
          v99 = objc_msgSend_dataDetector(IMIDSLog, v97, v98);
          if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            *&buf[4] = v96;
            _os_log_debug_impl(&dword_195988000, v99, OS_LOG_TYPE_DEBUG, "Found an address category %@", buf, 0xCu);
          }

          v126 = sub_1959A4BCC(v131, ValueAtIndex, @"__kIMAddressAttributeName");
          v100 = v96;
          v101 = v133;
          v102 = v89;
          v105 = v90;
          if (v127)
          {
            v106 = objc_msgSend_dataDetector(IMIDSLog, v103, v104);
            if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
            {
              sub_1959D4520(&v148, v149);
            }
          }

          else
          {
            if (qword_1EAED8EB8 != -1)
            {
              sub_1959D4554();
            }

            if (qword_1EAED8EC8 != -1)
            {
              sub_1959D457C();
            }

            sub_1959A5490(v100, v101, v102, v105, qword_1EAED8EC0, qword_1EAED8ED0);
          }

          objc_autoreleasePoolPop(v95);
          v143 |= v126;
        }

        goto LABEL_139;
      }

      if (v46 == 5)
      {
        if (!off_1EAED8B28(ValueAtIndex, qword_1EAED8B38))
        {
          v50 = sub_1959A4BCC(v145, ValueAtIndex, @"__kIMDataDetectedAttributeName");
          goto LABEL_113;
        }

        v107 = v128;
        if (!v128)
        {
          v107 = ValueAtIndex;
        }

        v128 = v107;
        goto LABEL_139;
      }

      if (v46 != 6)
      {
LABEL_90:
        v88 = objc_msgSend_dataDetector(IMIDSLog, v47, v48, v123);
        if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v49;
          _os_log_impl(&dword_195988000, v88, OS_LOG_TYPE_DEFAULT, "Found result of type: %d", buf, 8u);
        }

        goto LABEL_139;
      }

      v69 = v129;
      if (!v129)
      {
        v69 = ValueAtIndex;
      }

      v129 = v69;
      v70 = v145;
      v71 = @"__kIMMoneyAttributeName";
      v72 = v134;
      v73 = v135;
      v76 = objc_msgSend_dataDetector(IMIDSLog, v74, v75);
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
      {
        sub_1959D440C(&v158, v159);
      }

      if (ValueAtIndex)
      {
        v79 = v145 != 0;
      }

      else
      {
        v79 = 0;
      }

      if (!v79)
      {
        v109 = objc_msgSend_dataDetector(IMIDSLog, v77, v78);
        if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          *&buf[4] = v145;
          v161 = 2112;
          v162 = *&ValueAtIndex;
          _os_log_debug_impl(&dword_195988000, v109, OS_LOG_TYPE_DEBUG, "Failed to add detected money result due to invalid preconditions. attributedString: %@, result: %@", buf, 0x16u);
        }

        goto LABEL_124;
      }

      v80 = objc_autoreleasePoolPush();
      v156 = 0.0;
      v157 = 0;
      if (qword_1EAED8F80 != -1)
      {
        sub_1959D4440();
      }

      if (off_1EAED8F78(ValueAtIndex, &v156, &v157) && v157 && (v83 = v156, v156 != 0.0))
      {
        if (sub_1959A4BCC(v70, ValueAtIndex, v71))
        {
          v143 = 1;
LABEL_123:
          objc_autoreleasePoolPop(v80);
LABEL_124:

          goto LABEL_139;
        }
      }

      else
      {
        v110 = objc_msgSend_dataDetector(IMIDSLog, v81, v82, v83, v123);
        if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
        {
          *buf = v123;
          *&buf[4] = ValueAtIndex;
          v161 = 2048;
          v162 = v156;
          v163 = 2112;
          v164 = v157;
          _os_log_debug_impl(&dword_195988000, v110, OS_LOG_TYPE_DEBUG, "Failed to extract amount and currency from money result. Result: %@, amount: %f, currencyCode: %@", buf, 0x20u);
        }
      }

      v111 = objc_msgSend_dataDetector(IMIDSLog, v84, v85, v123);
      if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
      {
        sub_1959D4468(&v154, v155);
      }

      goto LABEL_123;
    }

    if (v46)
    {
      if (v46 == 1)
      {
        v143 |= sub_1959A4BCC(v145, ValueAtIndex, @"__kIMDataDetectedAttributeName");
        v50 = sub_1959A4E68(v145, ValueAtIndex);
        goto LABEL_113;
      }

      if (v46 != 2)
      {
        goto LABEL_90;
      }

      v51 = v145;
      v130 = v136;
      v132 = v137;
      v52 = v138;
      v55 = objc_msgSend_dataDetector(IMIDSLog, v53, v54);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
      {
        sub_1959D449C(&v150, v151);
      }

      v56 = v145 == 0;
      if (!ValueAtIndex)
      {
        v56 = 1;
      }

      if (!v56)
      {
        v57 = objc_autoreleasePoolPush();
        v58 = sub_1959A5360(ValueAtIndex);
        v61 = objc_msgSend_dataDetector(IMIDSLog, v59, v60);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *&buf[4] = v58;
          _os_log_debug_impl(&dword_195988000, v61, OS_LOG_TYPE_DEBUG, "Found an phone number category %@", buf, 0xCu);
        }

        v125 = sub_1959A4BCC(v51, ValueAtIndex, @"__kIMPhoneNumberAttributeName");
        v124 = sub_1959A4E68(v51, ValueAtIndex);
        v62 = v58;
        v63 = v130;
        v64 = v132;
        v67 = v52;
        if (v127)
        {
          v68 = objc_msgSend_dataDetector(IMIDSLog, v65, v66);
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
          {
            sub_1959D4520(&v152, v153);
          }
        }

        else
        {
          if (qword_1EAED8F58 != -1)
          {
            sub_1959D44D0();
          }

          if (qword_1EAED8F68 != -1)
          {
            sub_1959D44F8();
          }

          sub_1959A5490(v62, v63, v64, v67, qword_1EAED8F60, qword_1EAED8F70);
        }

        objc_autoreleasePoolPop(v57);
        v143 |= v125 | v124;
      }
    }

    else if (off_1EAED8B28(ValueAtIndex, qword_1EAED8B38))
    {
      v143 = sub_1959A50B8(v145, v128, ValueAtIndex);
    }

    else
    {
      v108 = objc_msgSend_dataDetector(IMIDSLog, v86, v87);
      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        _os_log_impl(&dword_195988000, v108, OS_LOG_TYPE_DEFAULT, "Found result of type: %d", buf, 8u);
      }
    }

LABEL_139:
    ++v44;
  }

  while (v44 < CFArrayGetCount(v30));
  if (v128)
  {
    v143 |= sub_1959A50B8(v145, v128, v129);
  }

LABEL_144:

  *(*(*(a1 + 80) + 8) + 24) = v143 & 1;
LABEL_145:
  v112 = objc_msgSend_dataDetector(IMIDSLog, v32, v33, v123);
  if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
  {
    sub_1959D45A4();
  }

  if (objc_msgSend_count(v141, v113, v114))
  {
    *(*(*(a1 + 80) + 8) + 24) |= _AddDDPhotoSharingIntentResultToAttributedString(*(a1 + 48), v141);
  }

  v117 = objc_msgSend_dataDetector(IMIDSLog, v115, v116);
  if (os_log_type_enabled(v117, OS_LOG_TYPE_DEBUG))
  {
    sub_1959D4684(a1);
  }

  v118 = off_1EAED8CD0;
  v119 = IMSharedDDScanner();
  v118(v119);
  v120 = off_1EAED8CD0;
  v121 = IMSharedDDShortNumberScanner();
  v120(v121);
  if (otherArray)
  {
    CFRelease(otherArray);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

LABEL_157:

  v122 = *MEMORY[0x1E69E9840];
}

void sub_1959A423C(void *a1, int a2)
{
  objc_end_catch();
  if (a2 == 1)
  {
    v4 = objc_begin_catch(a1);
    v7 = objc_msgSend_dataDetector(IMIDSLog, v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1959D460C(v8);
    }

    objc_end_catch();
    JUMPOUT(0x1959A4134);
  }

  JUMPOUT(0x1959A4320);
}

void sub_1959A424C(void *a1, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(a1);
    v3 = objc_claimAutoreleasedReturnValue(+[IMIDSLog dataDetector]);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1959D460C(v4, v2, v3);
    }

    objc_end_catch();
    JUMPOUT(0x1959A4134);
  }

  JUMPOUT(0x1959A4320);
}

void sub_1959A4308(void *a1, int a2)
{
  objc_end_catch();
  if (a2 == 1)
  {
    v4 = objc_begin_catch(a1);
    v7 = objc_msgSend_dataDetector(IMIDSLog, v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1959D46F0(v8);
    }

    objc_end_catch();
    JUMPOUT(0x1959A41B8);
  }

  JUMPOUT(0x1959A438CLL);
}

void *sub_1959A4394()
{
  result = IMWeakLinkSymbol();
  off_1EAED8CC0 = result;
  return result;
}

void *sub_1959A43C4()
{
  result = IMWeakLinkSymbol();
  off_1EAED8CC8 = result;
  return result;
}

void *sub_1959A43F4()
{
  result = IMWeakLinkSymbol();
  off_1EAED8CD0 = result;
  return result;
}

void *sub_1959A4424()
{
  result = IMWeakLinkSymbol();
  off_1EAED8CD8 = result;
  return result;
}

void *sub_1959A4454()
{
  result = IMWeakLinkSymbol();
  off_1EAED8CE0 = result;
  return result;
}

uint64_t IMSetThreadPriority(int a1)
{
  v2 = pthread_self();
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v4 = -1431655766;
  result = pthread_getschedparam(v2, &v4, &v5);
  if (!result)
  {
    v5.sched_priority = a1;
    return pthread_setschedparam(v2, v4, &v5);
  }

  return result;
}

void IMEnumerateArrayInRange(void *a1, unint64_t a2, uint64_t a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a4;
  v23 = 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v7;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v19, v24, 16);
  if (v11)
  {
    v13 = v11;
    v14 = 0;
    v15 = a2 + a3;
    v16 = *v20;
LABEL_3:
    v17 = 0;
    while (1)
    {
      if (*v20 != v16)
      {
        objc_enumerationMutation(v9);
      }

      if (v14 >= a2)
      {
        v8[2](v8, *(*(&v19 + 1) + 8 * v17), v14, &v23);
      }

      if (v23)
      {
        break;
      }

      if (++v14 >= v15)
      {
        break;
      }

      if (v13 == ++v17)
      {
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v19, v24, 16);
        if (v13)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

void IMSubmitSimpleAggegateMetric(void *a1, uint64_t a2)
{
  v3 = a1;
  if (v3)
  {
    v4 = dispatch_get_global_queue(-32768, 0);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1959A4724;
    v5[3] = &unk_1E7438668;
    v6 = v3;
    v7 = a2;
    dispatch_async(v4, v5);
  }
}

void sub_1959A4724(uint64_t a1)
{
  if (qword_1EAED8EA0 != -1)
  {
    sub_1959D4768();
  }

  v2 = off_1EAED8E98;
  if (off_1EAED8E98)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    v2(v3, v4);
  }
}

void *sub_1959A4788()
{
  result = IMWeakLinkSymbol();
  off_1EAED8E98 = result;
  return result;
}

void IMSubmitSimpleAWDMetric(uint64_t a1, uint64_t a2)
{
  v4 = dispatch_get_global_queue(-32768, 0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1959A4854;
  v5[3] = &unk_1E7438688;
  v5[4] = a1;
  v5[5] = a2;
  dispatch_async(v4, v5);
}

uint64_t sub_1959A4854(uint64_t a1)
{
  result = IMWeakLinkClass();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return MEMORY[0x1EEE66B58](result, sel_postMetricWithId_integerValue_, v3);
  }

  return result;
}

__CFString *_IMFastCreateFormatString(void *a1, va_list a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a1;
  Mutable = CFStringCreateMutable(0, 300);
  CFStringAppendFormatAndArguments(Mutable, 0, v3, a2);

  return Mutable;
}

id IMPreviewCachesDirectoryWithAttachmentURL(void *a1, const char *a2, uint64_t a3)
{
  if (a1)
  {
    v3 = objc_msgSend_path(a1, a2, a3);
    v5 = objc_msgSend_rangeOfString_options_(v3, v4, @"/var/mobile/Library/SMS/", 8);
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0;
    }

    else
    {
      v8 = objc_msgSend_substringFromIndex_(v3, v6, &v6[v5]);
      v11 = objc_msgSend_stringByDeletingLastPathComponent(v8, v9, v10);

      v13 = objc_msgSend_arrayWithObjects_(MEMORY[0x1E695DEC8], v12, @"/var/mobile/Library/Caches/com.apple.MobileSMS", @"Previews", v11, 0);
      v16 = objc_msgSend_pathWithComponents_(MEMORY[0x1E696AEC0], v14, v13);
      if (v16)
      {
        v7 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x1E695DFF8], v15, v16, 1);
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

__CFString *IMGetHostUUID()
{
  memset(v5, 170, sizeof(v5));
  v4.tv_sec = 0;
  v4.tv_nsec = 0;
  if (gethostuuid(v5, &v4) == -1)
  {
    v2 = 0;
  }

  else
  {
    v0 = *MEMORY[0x1E695E4A8];
    v1 = CFUUIDCreateFromUUIDBytes(*MEMORY[0x1E695E4A8], *v5);
    v2 = CFUUIDCreateString(v0, v1);
    if (v1)
    {
      CFRelease(v1);
    }
  }

  return v2;
}

uint64_t *sub_1959A4AE8()
{
  result = IMWeakLinkSymbol();
  qword_1EAED8B00 = *result;
  return result;
}

uint64_t (*sub_1959A4B1C())(void)
{
  result = IMWeakLinkSymbol();
  off_1EAED8B30 = result;
  return result;
}

uint64_t (*sub_1959A4B4C())(void, void)
{
  result = IMWeakLinkSymbol();
  off_1EAED8B28 = result;
  return result;
}

void sub_1959A4B7C()
{
  v0 = IMWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EAED8B38, v1);
}

uint64_t sub_1959A4BCC(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v9 = objc_msgSend_dataDetector(IMIDSLog, v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1959D477C();
  }

  v10 = 0;
  if (v5 && a2)
  {
    if (qword_1EAED8B68 != -1)
    {
      sub_1959D47E4();
    }

    v11 = objc_autoreleasePoolPush();
    v12 = IMWeakLinkClass();
    v10 = objc_msgSend_resultFromCoreResult_(v12, v13, a2);
    if (v10)
    {
      v14 = objc_alloc(MEMORY[0x1E696ACC8]);
      inited = objc_msgSend_initRequiringSecureCoding_(v14, v15, 0);
      objc_msgSend_encodeObject_forKey_(inited, v17, v10, @"dd-result");
      objc_msgSend_encodeObject_forKey_(inited, v18, &unk_1F09E4B70, @"version");
      v19 = objc_alloc(MEMORY[0x1E695DEF0]);
      v22 = objc_msgSend_encodedData(inited, v20, v21);
      v24 = objc_msgSend_initWithData_(v19, v23, v22);

      if (!v24)
      {
        v27 = objc_msgSend_dataDetector(IMIDSLog, v25, v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          sub_1959D4880();
        }

        v24 = 0;
      }

      if (v24)
      {
        v28 = off_1EAED8B70(a2);
        objc_msgSend_addAttribute_value_range_(v5, v29, v6, v24, v28, v29);

        v10 = 1;
      }

      else
      {
        v10 = 0;
      }
    }

    objc_autoreleasePoolPop(v11);
  }

  return v10;
}

void sub_1959A4DE8(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    v6 = objc_msgSend_dataDetector(*(v2 + 3568), v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1959D480C();
    }

    objc_end_catch();
    JUMPOUT(0x1959A4D14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1959A4E68(void *a1, uint64_t a2)
{
  v3 = a1;
  v6 = objc_msgSend_dataDetector(IMIDSLog, v4, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1959D490C();
  }

  v7 = 0;
  if (v3 && a2)
  {
    if (qword_1EAED8B48 != -1)
    {
      sub_1959D498C();
    }

    if (qword_1EAED8B50 != -1)
    {
      sub_1959D49B4();
    }

    v8 = objc_autoreleasePoolPush();
    v9 = off_1EAED8B58(a2);
    v11 = v10;
    v12 = off_1EAED8B60(a2);
    v15 = v12;
    if (v12)
    {
      v16 = objc_msgSend_urlFromString(v12, v13, v14);
      v19 = objc_msgSend_scheme(v16, v17, v18);
      v22 = objc_msgSend_lowercaseString(v19, v20, v21);

      if ((objc_msgSend_isEqualToString_(v22, v23, @"http") & 1) != 0 || objc_msgSend_isEqualToString_(v22, v24, @"https"))
      {
        v25 = objc_alloc(IMWeakLinkClass());
        v28 = objc_msgSend_absoluteString(v16, v26, v27);
        v30 = objc_msgSend_initWithString_(v25, v29, v28);

        if (v30 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v33 = objc_msgSend__lp_userVisibleStringUsesEncodedHost(v30, v31, v32);
        }

        else
        {
          v33 = 0;
        }
      }

      else
      {
        v33 = 0;
      }

      if (!((v16 == 0) | v33 & 1))
      {
        objc_msgSend_addAttribute_value_range_(v3, v34, @"__kIMLinkAttributeName", v16, v9, v11);
        v37 = objc_msgSend_dataDetector(IMIDSLog, v35, v36);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          sub_1959D49DC();
        }
      }

      v7 = ((v16 == 0) | v33) ^ 1;
    }

    else
    {
      v7 = 0;
    }

    objc_autoreleasePoolPop(v8);
  }

  return v7 & 1;
}

uint64_t sub_1959A50B8(void *a1, uint64_t a2, uint64_t a3)
{
  v31[3] = *MEMORY[0x1E69E9840];
  v7 = a1;
  if (qword_1EAED8F90 != -1)
  {
    sub_1959D4A44();
  }

  if (qword_1EAED8FA0 != -1)
  {
    sub_1959D4A58();
  }

  if (qword_1EAED8FB0 != -1)
  {
    sub_1959D4A6C();
  }

  v8 = objc_msgSend_dataDetector(IMIDSLog, v5, v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195988000, v8, OS_LOG_TYPE_DEFAULT, "Found an one time code result", buf, 2u);
  }

  v9 = 0;
  if (v7 && a2)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = off_1EAED8F98(a2);
    v12 = off_1EAED8FA8(a2);
    v13 = v12;
    if (v11)
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 1;
    }

    v9 = !v14;
    if (!v14)
    {
      v15 = off_1EAED8FA8(a3);
      if (objc_msgSend_length(v15, v16, v17))
      {
        v30[0] = @"code";
        v30[1] = @"displayCode";
        v31[0] = v11;
        v31[1] = v13;
        v30[2] = @"displayMoneyAmount";
        v31[2] = v15;
        objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v18, v31, v30, 3);
      }

      else
      {
        v28[0] = @"code";
        v28[1] = @"displayCode";
        v29[0] = v11;
        v29[1] = v13;
        objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v18, v29, v28, 2);
      }
      v19 = ;
      v20 = off_1EAED8F88(a2);
      off_1EAED8F88(a2);
      objc_msgSend_addAttribute_value_range_(v7, v21, @"__kIMOneTimeCodeAttributeName", v19, v20, v21);
      sub_1959A4BCC(v7, a2, @"__kIMDataDetectedAttributeName");
      v24 = objc_msgSend_dataDetector(IMIDSLog, v22, v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        sub_1959D4A80();
      }
    }

    objc_autoreleasePoolPop(v10);
  }

  v25 = *MEMORY[0x1E69E9840];
  return v9;
}

id sub_1959A5360(uint64_t a1)
{
  if (qword_1EAED8EB0 != -1)
  {
    sub_1959D4AF8();
  }

  v2 = off_1EAED8EA8(a1);
  if (v2)
  {
    v2 = CFRetain(v2);
  }

  return v2;
}

uint64_t (*sub_1959A53C0())(void)
{
  result = IMWeakLinkSymbol();
  off_1EAED8EA8 = result;
  return result;
}

void sub_1959A53F0()
{
  v0 = IMWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EAED8EC0, v1);
}

void sub_1959A5440()
{
  v0 = IMWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EAED8ED0, v1);
}

void sub_1959A5490(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v58 = a1;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v18 = v15;
  if (!v12 || !v13 || !v11 || !v14 || !v58 || !v15)
  {
    v19 = objc_msgSend_dataDetector(IMIDSLog, v16, v17);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1959D4B0C();
    }
  }

  v20 = v11;
  v21 = v12;
  v24 = v13;
  if (qword_1EAED8ED8 != -1)
  {
    sub_1959D4B48();
  }

  if (qword_1EAED8EE8 != -1)
  {
    sub_1959D4B70();
  }

  if (qword_1EAED8EF8 != -1)
  {
    sub_1959D4B98();
  }

  if (qword_1EAED8F08 != -1)
  {
    sub_1959D4BC0();
  }

  if (qword_1EAED8F18 != -1)
  {
    sub_1959D4BE8();
  }

  if (qword_1EAED8F28 != -1)
  {
    sub_1959D4C10();
  }

  if (qword_1EAED8F38 != -1)
  {
    sub_1959D4C38();
  }

  v25 = objc_msgSend__appearsToBePhoneNumber(v21, v22, v23);
  if (v25)
  {
    v26 = 3;
  }

  else
  {
    v26 = 2;
  }

  if (v25)
  {
    v27 = &unk_1EAED8EF0;
  }

  else
  {
    v27 = &unk_1EAED8EE0;
  }

  v28 = IMNormalizeFormattedString(v21, v26);
  v30 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v29, @"sms:/open?message-guid=%@", v20);
  v32 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x1E695DF20], v31, v28, qword_1EAED8F20, *v27, qword_1EAED8F30, 0);
  v34 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x1E695DF20], v33, v24, qword_1EAED8F00, v32, qword_1EAED8F40, v30, qword_1EAED8F10, 0);
  v37 = objc_msgSend_dataDetector(IMIDSLog, v35, v36);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    sub_1959D4C60();
  }

  v38 = IMWeakLinkClass();
  if (v38)
  {
    v41 = v38;
    v44 = objc_msgSend_date(MEMORY[0x1E695DF00], v39, v40);
    v45 = MEMORY[0x1E696AD98];
    if (qword_1EAED8F48 != -1)
    {
      sub_1959D4CC8();
    }

    v46 = objc_msgSend_numberWithDouble_(v45, v42, v43, *&qword_1EAED8F50);
    v48 = objc_msgSend_recentEventForAddress_displayName_kind_date_weight_metadata_options_(v41, v47, v58, 0, v14, v44, v46, v34, 0);

    v51 = objc_msgSend_defaultInstance(v41, v49, v50);
    v53 = IMSingleObjectArray(v48, v52);
    objc_msgSend_recordContactEvents_recentsDomain_sendingAddress_completion_(v51, v54, v53, v18, 0, &unk_1F09D19A0);

    v57 = objc_msgSend_dataDetector(IMIDSLog, v55, v56);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
    {
      sub_1959D4CF0();
    }
  }
}

void sub_1959A586C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = objc_msgSend_dataDetector(IMIDSLog, v2, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1959D4D58();
    }
  }
}

void sub_1959A58CC()
{
  v0 = IMWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EAED8EE0, v1);
}

void sub_1959A591C()
{
  v0 = IMWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EAED8EF0, v1);
}

void sub_1959A596C()
{
  v0 = IMWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EAED8F00, v1);
}

void sub_1959A59BC()
{
  v0 = IMWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EAED8F10, v1);
}

void sub_1959A5A0C()
{
  v0 = IMWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EAED8F20, v1);
}

void sub_1959A5A5C()
{
  v0 = IMWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EAED8F30, v1);
}

void sub_1959A5AAC()
{
  v0 = IMWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EAED8F40, v1);
}

double sub_1959A5AFC()
{
  result = *IMWeakLinkSymbol();
  qword_1EAED8F50 = *&result;
  return result;
}

uint64_t (*sub_1959A5B30())(void)
{
  result = IMWeakLinkSymbol();
  off_1EAED8B70 = result;
  return result;
}

void sub_1959A5B60()
{
  v0 = IMWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EAED8F60, v1);
}

void sub_1959A5BB0()
{
  v0 = IMWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EAED8F70, v1);
}

uint64_t (*sub_1959A5C00())(void)
{
  result = IMWeakLinkSymbol();
  off_1EAED8B58 = result;
  return result;
}

uint64_t (*sub_1959A5C30())(void)
{
  result = IMWeakLinkSymbol();
  off_1EAED8B60 = result;
  return result;
}

uint64_t (*sub_1959A5C60())(void, void, void)
{
  result = IMWeakLinkSymbol();
  off_1EAED8F78 = result;
  return result;
}

uint64_t (*sub_1959A5C90())(void)
{
  result = IMWeakLinkSymbol();
  off_1EAED8F88 = result;
  return result;
}

uint64_t (*sub_1959A5CC0())(void)
{
  result = IMWeakLinkSymbol();
  off_1EAED8F98 = result;
  return result;
}

uint64_t (*sub_1959A5CF0())(void)
{
  result = IMWeakLinkSymbol();
  off_1EAED8FA8 = result;
  return result;
}

_BYTE *sub_1959A5D20(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void sub_1959A5D40(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_1959A5FE4(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v5 = *(*(a1 + 32) + 8);
  if (v5 == 1)
  {
    v6 = objc_msgSend_timer(IMIDSLog, v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v23 = 134217984;
      v24 = v7;
      _os_log_impl(&dword_195988000, v6, OS_LOG_TYPE_DEFAULT, "[IMDispatchTimer fired] {self: %p}", &v23, 0xCu);
    }
  }

  objc_sync_exit(v2);

  v8 = *(a1 + 40);
  v9 = v5 ^ 1;
  if (!v8)
  {
    v9 = 1;
  }

  if ((v9 & 1) == 0)
  {
    (*(v8 + 16))(v8, *(a1 + 32));
  }

  v10 = *(a1 + 32);
  objc_sync_enter(v10);
  if (objc_msgSend_isValid(*(a1 + 32), v11, v12))
  {
    if (*(*(a1 + 32) + 9) == 1)
    {
      v15 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x1E695DF00], v13, v14, *(a1 + 48));
      v16 = *(a1 + 32);
      v17 = *(v16 + 24);
      *(v16 + 24) = v15;
    }

    else
    {
      v18 = objc_msgSend_timer(IMIDSLog, v13, v14);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 32);
        v23 = 134217984;
        v24 = v19;
        _os_log_impl(&dword_195988000, v18, OS_LOG_TYPE_DEFAULT, "[IMDispatchTimer invalidating] {self: %p}", &v23, 0xCu);
      }

      objc_msgSend_invalidate(*(a1 + 32), v20, v21);
    }
  }

  objc_sync_exit(v10);

  v22 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1959A6610()
{
  qword_1EAED8DB8 = objc_alloc_init(IMFileManager);

  return MEMORY[0x1EEE66BB8]();
}

void *sub_1959A6820()
{
  result = IMWeakLinkSymbol();
  off_1EAED8FB8 = result;
  return result;
}

void *sub_1959A6A10()
{
  result = IMWeakLinkSymbol();
  off_1EAED8FC8 = result;
  return result;
}

void *sub_1959A6B28()
{
  result = IMWeakLinkSymbol();
  off_1EAED8FD8 = result;
  return result;
}

void *sub_1959A6BF4()
{
  result = IMWeakLinkSymbol();
  off_1EAED8FE8 = result;
  return result;
}

uint64_t sub_1959A6C24(void *a1, const char *a2)
{
  v2 = objc_msgSend_objectForKey_(a1, a2, @"HFSFileFlags");
  v5 = objc_msgSend_unsignedShortValue(v2, v3, v4);

  return v5;
}

uint64_t sub_1959A6C64(void *a1, const char *a2)
{
  v2 = objc_msgSend_objectForKey_(a1, a2, @"HFSResourceForkSize");
  v5 = v2;
  if (v2)
  {
    v6 = objc_msgSend_unsignedLongLongValue(v2, v3, v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

CFTypeRef sub_1959A6CB4()
{
  result = *IMWeakLinkSymbol();
  qword_1EAED9000 = result;
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

CFTypeRef sub_1959A6D04()
{
  result = *IMWeakLinkSymbol();
  qword_1EAED8D10 = result;
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

void sub_1959A77B0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_1959A7810()
{
  qword_1ED5175C8 = objc_alloc_init(IMWeakObjectCache);

  return MEMORY[0x1EEE66BB8]();
}

CFTypeRef IMStringForSocketAddress(void *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    v4 = objc_msgSend_bytes(v1, v2, v3);
    v5 = v4;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v34[11] = v6;
    *v34 = v6;
    v33 = v6;
    v32 = v6;
    v31 = v6;
    v30 = v6;
    v29 = v6;
    v28 = v6;
    v27 = v6;
    v26 = v6;
    v25 = v6;
    v24 = v6;
    v23 = v6;
    v22 = v6;
    v21 = v6;
    v20 = v6;
    *__s = 0;
    if (v4)
    {
      v7 = *(v4 + 1);
      if (v7 == 2)
      {
        v12 = malloc_type_calloc(1uLL, 0x11uLL, 0xD3603BC9uLL);
        if (inet_ntop(2, (v5 + 4), v12, 0x11u))
        {
          v13 = objc_alloc(MEMORY[0x1E696AEC0]);
          v14 = strlen(v12);
          v5 = objc_msgSend_initWithBytes_length_encoding_(v13, v15, v12, v14, 1);
        }

        else
        {
          v5 = 0;
        }

        free(v12);
      }

      else if (v7 == 30 && inet_ntop(30, (v4 + 8), __s, 0x2Fu))
      {
        v8 = objc_alloc(MEMORY[0x1E696AEC0]);
        v9 = strlen(__s);
        v5 = objc_msgSend_initWithBytes_length_encoding_(v8, v10, __s, v9, 1);
      }

      else
      {
        v5 = 0;
      }
    }

    v16 = v5;
    v11 = CFAutorelease(v16);
  }

  else
  {
    v11 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t IsPersonalFirewallOn(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_dictionaryWithContentsOfFile_(MEMORY[0x1E695DF20], a2, @"/Library/Preferences/com.apple.sharing.firewall.plist");
  v4 = objc_msgSend_objectForKey_(v2, v3, @"state");
  v7 = objc_msgSend_BOOLValue(v4, v5, v6);

  return v7;
}

uint64_t IsPersonalFirewallBlockingPort(int a1, const char *a2)
{
  v3 = objc_msgSend_dictionaryWithContentsOfFile_(MEMORY[0x1E695DF20], a2, @"/Library/Preferences/com.apple.sharing.firewall.plist");
  v5 = objc_msgSend_objectForKey_(v3, v4, @"state");
  v8 = objc_msgSend_BOOLValue(v5, v6, v7);

  if (!v8)
  {
    v35 = 0;
    goto LABEL_22;
  }

  v10 = objc_msgSend_objectForKey_(v3, v9, @"allports");
  v13 = objc_msgSend_count(v10, v11, v12);
  if (v13 < 1)
  {
LABEL_18:
    v35 = 1;
    goto LABEL_21;
  }

  v15 = (v13 & 0x7FFFFFFF) + 1;
  while (1)
  {
    v16 = objc_msgSend_objectAtIndex_(v10, v14, v15 - 2);
    v18 = objc_msgSend_rangeOfString_(v16, v17, @"-");
    if (v19)
    {
      break;
    }

    if (objc_msgSend_isEqualToString_(v16, 0, @"*"))
    {
    }

    else
    {
      v34 = objc_msgSend_intValue(v16, v29, v30);

      if (v34 == a1)
      {
        goto LABEL_20;
      }
    }

LABEL_17:
    if (--v15 <= 1)
    {
      goto LABEL_18;
    }
  }

  v20 = v18;
  v21 = objc_msgSend_substringToIndex_(v16, v19, v18);
  v23 = objc_msgSend_substringFromIndex_(v16, v22, v20 + 1);
  if (objc_msgSend_length(v21, v24, v25))
  {
    v28 = objc_msgSend_intValue(v21, v26, v27);
  }

  else
  {
    v28 = 0;
  }

  if (objc_msgSend_length(v23, v26, v27))
  {
    v33 = objc_msgSend_intValue(v23, v31, v32);
  }

  else
  {
    v33 = 0xFFFF;
  }

  if (v28 > a1 || v33 < a1)
  {
    goto LABEL_17;
  }

LABEL_20:
  v35 = 0;
LABEL_21:

LABEL_22:
  return v35;
}

uint64_t IMPCInterfaceName()
{
  v0 = IMWeakLinkClass();
  v2 = objc_msgSend_sharedInstanceForIdentifier_(v0, v1, 1);
  if (objc_opt_respondsToSelector())
  {
    v5 = objc_msgSend_wwanInterfaceName(v2, v3, v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL IMPCDoesInterfaceExist()
{
  v0 = IMPCInterfaceName();
  v3 = v0;
  if (v0)
  {
    v4 = objc_msgSend_length(v0, v1, v2) != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL IMGetIDSSettings(void *a1, char *a2, void *a3, _BYTE *a4, _BYTE *a5)
{
  v10 = objc_msgSend_arrayWithObjects_(MEMORY[0x1E695DEC8], a2, @"com.apple.private.ids", 0);
  v11 = sub_19598CD6C(a1, a2, a3, a4, a5, @"/AppleInternal/Library/Conference/Environments.plist", v10, @"https://init.ess.apple.com/WebObjects/VCInit.woa/wa/getBag?ix=3");

  return v11;
}

id IMGetiMessageTopic()
{
  v5 = 0;
  IMGetiMessageSettings(0, 0, &v5, 0, 0);
  v0 = v5;
  v3 = objc_msgSend_lastObject(v0, v1, v2);

  return v3;
}

id IMGetSPSEnvironmentName(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = qword_1EAED9008;
  if (!qword_1EAED9008)
  {
    v4 = IMGetCachedDomainValueForKey(@"com.apple.ids", @"sps-env");
    v5 = qword_1EAED9008;
    qword_1EAED9008 = v4;

    v3 = qword_1EAED9008;
  }

  v6 = objc_msgSend_length(v3, a2, a3);
  if (!v6)
  {
    goto LABEL_8;
  }

  isEqualToIgnoringCase = objc_msgSend_isEqualToIgnoringCase_(qword_1EAED9008, v7, @"canary");
  if (isEqualToIgnoringCase)
  {
    v12 = IMGetEnvironmentName(isEqualToIgnoringCase, v10, v11);
    v14 = objc_msgSend_isEqualToIgnoringCase_(v12, v13, @"ven1-external");
    if (v14)
    {

LABEL_8:
      v20 = IMGetEnvironmentName(v6, v7, v8);
      goto LABEL_10;
    }

    v17 = IMGetEnvironmentName(v14, v15, v16);
    v19 = objc_msgSend_isEqualToIgnoringCase_(v17, v18, @"ven2-external");

    if (v19)
    {
      goto LABEL_8;
    }
  }

  v20 = qword_1EAED9008;
LABEL_10:

  return v20;
}

id IMGetSPSCustomURL()
{
  v0 = qword_1EAED89D8;
  if (!qword_1EAED89D8)
  {
    v1 = IMGetCachedDomainValueForKey(@"com.apple.ids", @"custom-sps-bag-url");
    v2 = qword_1EAED89D8;
    qword_1EAED89D8 = v1;

    v0 = qword_1EAED89D8;
  }

  return v0;
}

void sub_1959A82CC()
{
  v0 = IMWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1ED5173D0, v1);
}

void sub_1959A831C()
{
  v0 = IMWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1ED5173D8, v1);
}

void sub_1959A836C()
{
  v0 = IMWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1ED5173E0, v1);
}

void IMTimingStartTimingForKey(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v36 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  if (IMShouldLog(v14, a2))
  {
    v17 = v13;
    v18 = v14;
    v19 = v15;
    v21 = v16;
    if (qword_1EAED9018 != -1)
    {
      sub_1959D4F44();
    }

    objc_msgSend_startTimingForKey_(qword_1EAED9010, v20, v17);
    v22 = objc_alloc(MEMORY[0x1E696AD60]);
    v24 = objc_msgSend_initWithFormat_arguments_(v22, v23, v21, &a9);
    v25 = IMTimeOfDay();
    objc_msgSend_appendFormat_(v24, v26, @" (Time Started: %f)", *&v25, &a9);
    IMLogString();
    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory("Timing");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v35 = v24;
        _os_log_impl(&dword_195988000, v27, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      }
    }

    if (IMShouldLog(@"Messages", 0))
    {
      sub_1959A8B98();
    }

    if (_IMWillLog(@"Timing"))
    {
      _IMAlwaysLog(0, @"Timing", @"%@", v28, v29, v30, v31, v32, v24);
    }
  }

  v33 = *MEMORY[0x1E69E9840];
}

void IMTimingStopTimingForKey(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v42 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  if (IMShouldLog(v14, a2))
  {
    v17 = v13;
    v18 = v14;
    v19 = v15;
    v20 = v16;
    if (objc_msgSend_hasKey_(qword_1EAED9010, v21, v17))
    {
      objc_msgSend_stopTimingForKey_(qword_1EAED9010, v22, v17);
      objc_msgSend_totalTimeForKey_(qword_1EAED9010, v23, v17);
      v25 = v24;
      v26 = objc_alloc(MEMORY[0x1E696AD60]);
      v28 = objc_msgSend_initWithFormat_arguments_(v26, v27, v20, &a9);
      v29 = IMTimeOfDay();
      objc_msgSend_appendFormat_(v28, v30, @" (Time Finished: %f   Total Time: %f)", *&v29, v25);
      v39 = 0;
      IMLogString();
      if (IMOSLoggingEnabled())
      {
        v31 = OSLogHandleForIMFoundationCategory("Timing");
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v41 = v28;
          _os_log_impl(&dword_195988000, v31, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
        }
      }

      if (IMShouldLog(@"Messages", 0))
      {
        v39 = v28;
        sub_1959A8B98();
      }

      if (_IMWillLog(@"Timing"))
      {
        _IMAlwaysLog(0, @"Timing", @"%@", v33, v34, v35, v36, v37, v28);
      }

      objc_msgSend_removeTimingForKey_(qword_1EAED9010, v32, v17, v39);
    }
  }

  v38 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1959A8B5C()
{
  qword_1EAED9010 = objc_alloc_init(IMTimingCollection);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959A8B98()
{
  result = IMShouldLog(@"Messages", 0);
  if (result)
  {
    return IMLogString_V();
  }

  return result;
}

uint64_t sub_1959A9168(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  *&c.wbuf[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&c.wbuf[6] = v5;
  *&c.wbuf[10] = v5;
  *&c.hash[6] = v5;
  *&c.wbuf[2] = v5;
  *c.count = v5;
  *&c.hash[2] = v5;
  CC_SHA256_Init(&c);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = a1;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v23, v28, 16);
  if (v8)
  {
    v10 = v8;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = objc_msgSend_maximumLengthOfBytesUsingEncoding_(v13, v9, 4);
        v15 = malloc_type_malloc(2 * v14, 0x1000040BDFB0063uLL);
        *len = 0;
        v18 = objc_msgSend_length(v13, v16, v17);
        if (objc_msgSend_getBytes_maxLength_usedLength_encoding_options_range_remainingRange_(v13, v19, v15, v14, len, 4, 0, 0, v18, 0))
        {
          CC_SHA256_Update(&c, v15, len[0]);
        }

        free(v15);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v23, v28, 16);
    }

    while (v10);
  }

  result = CC_SHA256_Final(a3, &c);
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1959A9310(void *a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7[0] = v2;
  v7[1] = v2;
  objc_msgSend__SHA256Bytes_(a1, a2, v7);
  v4 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v3, v7, 32);
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id sub_1959A9390(void *a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7[0] = v2;
  v7[1] = v2;
  objc_msgSend__SHA256Bytes_(a1, a2, v7);
  v4 = objc_msgSend___imHexStringOfBytes_withLength_(MEMORY[0x1E695DEF0], v3, v7, 32);
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

uint64_t sub_1959A9410()
{
  qword_1ED5175D0 = objc_alloc_init(IMDeviceSupport);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t (*sub_1959A94B0())(void)
{
  result = IMWeakLinkSymbol();
  off_1ED517268 = result;
  return result;
}

void *sub_1959A94E0()
{
  result = IMWeakLinkSymbol();
  off_1ED517200 = result;
  return result;
}

uint64_t (*sub_1959A9510())(void, void, void, void)
{
  result = IMWeakLinkSymbol();
  off_1ED5171F0 = result;
  return result;
}

uint64_t (*sub_1959A9540())(void)
{
  result = IMWeakLinkSymbol();
  off_1ED517208 = result;
  return result;
}

void sub_1959A9570(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[2] || !v2[4] || !v2[3])
  {
    v3 = objc_alloc(MEMORY[0x1E695DF20]);
    v17 = objc_msgSend_initWithContentsOfFile_(v3, v4, @"/System/Library/CoreServices/SystemVersion.plist");
    v6 = objc_msgSend_objectForKey_(v17, v5, @"ProductBuildVersion");
    v7 = *(a1 + 32);
    v8 = *(v7 + 32);
    *(v7 + 32) = v6;

    v10 = objc_msgSend_objectForKey_(v17, v9, @"ProductVersion");
    v11 = *(a1 + 32);
    v12 = *(v11 + 24);
    *(v11 + 24) = v10;

    v14 = objc_msgSend_objectForKey_(v17, v13, @"ProductName");
    v15 = *(a1 + 32);
    v16 = *(v15 + 16);
    *(v15 + 16) = v14;
  }
}

int *sub_1959A9820()
{
  result = IMWeakLinkSymbol();
  dword_1ED5170C8 = *result;
  return result;
}

BOOL sub_1959A9854(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_methodSignature(a1, a2, a3);
  v6 = objc_msgSend_methodReturnLength(v3, v4, v5) != 0;

  return v6;
}

uint64_t IMGetKeychainPassword(void *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v8 = a3;
  if (a1 && objc_msgSend_length(v5, v6, v7) && objc_msgSend_length(v8, v9, v10))
  {
    v22 = 0;
    v21 = 0;
    v11 = IMGetKeychainData(&v21, v5, v8, 0, &v22);
    v12 = v21;
    v15 = v12;
    if (v11)
    {
      if (objc_msgSend_length(v12, v13, v14))
      {
        v16 = objc_alloc(MEMORY[0x1E696AEC0]);
        *a1 = objc_msgSend_initWithData_encoding_(v16, v17, v15, 4);
      }
    }

    else
    {
      v18 = objc_msgSend_keychain(IMRGLog, v13, v14);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v24 = v22;
        _os_log_impl(&dword_195988000, v18, OS_LOG_TYPE_DEFAULT, "IMGetKeychainPassword: Could not get password (error %d)", buf, 8u);
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v11;
}

BOOL IMSetKeychainPassword(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (objc_msgSend_length(v5, v8, v9) && objc_msgSend_length(v6, v10, v11) && objc_msgSend_length(v7, v12, v13))
  {
    v15 = objc_msgSend_dataUsingEncoding_(v5, v14, 4);
    v21 = 0;
    v18 = sub_195997C58(v15, v6, v7, @"apple", &v21, 1, 1, 2);
    if (!v18)
    {
      v19 = objc_msgSend_warning(IMRGLog, v16, v17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        sub_1959D50CC(&v21);
      }
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

BOOL IMRemoveKeychainPassword(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = v4;
  if (objc_msgSend_length(v5, v7, v8) && objc_msgSend_length(v6, v9, v10))
  {
    v16 = 0;
    v13 = sub_1959AB908(v5, v6, *MEMORY[0x1E697AEB8], &v16);
    if (!v13)
    {
      v14 = objc_msgSend_warning(IMRGLog, v11, v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        sub_1959D513C(&v16);
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t IMGetKeychainAuthToken(void *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (sub_1959AA98C(a1, v5, v6))
  {
    v9 = 1;
  }

  else if (objc_msgSend_hasMobileMeSuffix(v6, v7, v8))
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = ValidMobileMeDomains();
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v24, v28, 16);
    if (v12)
    {
      v15 = v12;
      v16 = *v25;
      while (2)
      {
        v17 = 0;
        do
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v10);
          }

          v18 = *(*(&v24 + 1) + 8 * v17);
          v19 = objc_msgSend_stripMobileMSuffixIfPresent(v6, v13, v14);
          v21 = objc_msgSend_stringByAppendingFormat_(v19, v20, @"@%@", v18);

          LOBYTE(v19) = sub_1959AA98C(a1, v5, v21);
          if (v19)
          {
            v9 = 1;
            goto LABEL_15;
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v24, v28, 16);
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v9 = 0;
LABEL_15:
  }

  else
  {
    v9 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t sub_1959AA98C(void *a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v8 = a3;
  if (a1 && objc_msgSend_length(v5, v6, v7) && objc_msgSend_length(v8, v9, v10))
  {
    v13 = objc_msgSend_lowercaseString(v8, v11, v12);
    if (objc_msgSend_hasPrefix_(v13, v14, @"e:"))
    {
      v16 = objc_msgSend_substringFromIndex_(v13, v15, 2);

      v13 = v16;
    }

    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v17, @"%@-AuthToken", v13);

    v29 = 0;
    v28 = 0;
    v18 = IMGetKeychainData(&v28, v5, v8, @"apple", &v29);
    v19 = v28;
    v22 = v19;
    if (v18)
    {
      if (objc_msgSend_length(v19, v20, v21))
      {
        v23 = objc_alloc(MEMORY[0x1E696AEC0]);
        *a1 = objc_msgSend_initWithData_encoding_(v23, v24, v22, 4);
      }
    }

    else
    {
      v25 = objc_msgSend_keychain(IMRGLog, v20, v21);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v31 = v29;
        _os_log_impl(&dword_195988000, v25, OS_LOG_TYPE_DEFAULT, "IMGetKeychainAuthToken: Could not get auth token (error: %d)", buf, 8u);
      }
    }
  }

  else
  {
    v18 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v18;
}

BOOL IMSetKeychainAuthToken(void *a1, void *a2, void *a3)
{
  v60 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (objc_msgSend_length(v6, v8, v9) && objc_msgSend_length(v7, v10, v11))
  {
    if (objc_msgSend_hasMobileMeSuffix(v7, v12, v13))
    {
      v53 = v5;
      v16 = objc_msgSend_mobileMeDomain(v7, v14, v15);
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v17 = ValidMobileMeDomains();
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v54, v59, 16);
      if (v19)
      {
        v21 = v19;
        v22 = *v55;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v55 != v22)
            {
              objc_enumerationMutation(v17);
            }

            v24 = *(*(&v54 + 1) + 8 * i);
            if ((objc_msgSend_hasSuffix_(v24, v20, v16) & 1) == 0)
            {
              v26 = objc_msgSend_stripMobileMSuffixIfPresent(v7, v20, v25);
              v28 = objc_msgSend_stringByAppendingFormat_(v26, v27, @"@%@", v24);

              sub_1959AAE4C(v6, v28);
            }
          }

          v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v54, v59, 16);
        }

        while (v21);
      }

      v5 = v53;
    }

    v29 = v5;
    v30 = v6;
    v31 = v7;
    if (objc_msgSend_length(v29, v32, v33) && objc_msgSend_length(v30, v34, v35) && objc_msgSend_length(v31, v36, v37))
    {
      v40 = objc_msgSend_lowercaseString(v31, v38, v39);
      if (objc_msgSend_hasPrefix_(v40, v41, @"e:"))
      {
        v43 = objc_msgSend_substringFromIndex_(v40, v42, 2);

        v40 = v43;
      }

      v31 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v44, @"%@-AuthToken", v40);

      v46 = objc_msgSend_dataUsingEncoding_(v29, v45, 4);
      v58 = 0;
      v49 = sub_195997C58(v46, v30, v31, @"apple", &v58, 0, 1, 2);
      if (!v49)
      {
        v50 = objc_msgSend_warning(IMRGLog, v47, v48);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
        {
          sub_1959D51AC(&v58);
        }
      }
    }

    else
    {
      v49 = 0;
    }
  }

  else
  {
    v49 = 0;
  }

  v51 = *MEMORY[0x1E69E9840];
  return v49;
}

BOOL sub_1959AAE4C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (objc_msgSend_length(v3, v5, v6) && objc_msgSend_length(v4, v7, v8))
  {
    v11 = objc_msgSend_lowercaseString(v4, v9, v10);
    if (objc_msgSend_hasPrefix_(v11, v12, @"e:"))
    {
      v14 = objc_msgSend_substringFromIndex_(v11, v13, 2);

      v11 = v14;
    }

    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v15, @"%@-AuthToken", v11);

    v21 = 0;
    v18 = sub_1959AB908(v3, v4, *MEMORY[0x1E697AEB8], &v21);
    if (!v18)
    {
      v19 = objc_msgSend_warning(IMRGLog, v16, v17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        sub_1959D521C(&v21);
      }
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

BOOL IMRemoveKeychainAuthToken(void *a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (objc_msgSend_length(v3, v5, v6) && objc_msgSend_length(v4, v7, v8))
  {
    if (objc_msgSend_hasMobileMeSuffix(v4, v9, v10))
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v11 = ValidMobileMeDomains();
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v26, v30, 16);
      if (v13)
      {
        v16 = v13;
        v17 = *v27;
        do
        {
          v18 = 0;
          do
          {
            if (*v27 != v17)
            {
              objc_enumerationMutation(v11);
            }

            v19 = *(*(&v26 + 1) + 8 * v18);
            v20 = objc_msgSend_stripMobileMSuffixIfPresent(v4, v14, v15);
            v22 = objc_msgSend_stringByAppendingFormat_(v20, v21, @"@%@", v19);

            sub_1959AAE4C(v3, v22);
            ++v18;
          }

          while (v16 != v18);
          v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v26, v30, 16);
        }

        while (v16);
      }
    }

    v23 = sub_1959AAE4C(v3, v4);
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

void IMSetKeychainDataWithProtectionWithCompletion(void *a1, void *a2, void *a3, void *a4, int a5, void *a6)
{
  v70 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a6;
  if (objc_msgSend_length(v12, v16, v17) && objc_msgSend_length(v13, v18, v19) && objc_msgSend_length(v11, v20, v21))
  {
    v60 = 0;
    v61 = &v60;
    v62 = 0x2020000000;
    v63 = 0;
    v22 = MEMORY[0x1E697ABE8];
    if (a5)
    {
      v22 = MEMORY[0x1E697AC00];
    }

    if (a5 == 1)
    {
      v23 = MEMORY[0x1E697AC28];
    }

    else
    {
      v23 = v22;
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B008]);
    v25 = *MEMORY[0x1E697AEB0];
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AEB0], *MEMORY[0x1E697AEB8]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ABD8], *v23);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AE88], v12);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AC30], v13);
    if (objc_msgSend_length(v14, v26, v27))
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ABD0], v14);
    }

    v28 = *MEMORY[0x1E695E4D0];
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B310], *MEMORY[0x1E695E4D0]);
    result = 0;
    v29 = SecItemCopyMatching(Mutable, &result);
    *(v61 + 6) = v29;
    v32 = objc_msgSend_keychain(IMRGLog, v30, v31);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = *(v61 + 6);
      *buf = 134218240;
      v67 = result;
      v68 = 1024;
      v69 = v33;
      _os_log_impl(&dword_195988000, v32, OS_LOG_TYPE_DEFAULT, "Found existing item %p error: %d", buf, 0x12u);
    }

    v36 = objc_msgSend_keychain(IMRGLog, v34, v35);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195988000, v36, OS_LOG_TYPE_DEFAULT, "Trying to add query as item", buf, 2u);
    }

    CFDictionarySetValue(Mutable, v25, v28);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B3C0], v11);
    v53 = MEMORY[0x1E69E9820];
    v54 = 3221225472;
    v55 = sub_1959AB6E8;
    v56 = &unk_1E74388D8;
    v58 = &v60;
    v37 = v15;
    v57 = v37;
    *(v61 + 6) = _SecItemAddAndNotifyOnSync();
    v40 = objc_msgSend_keychain(IMRGLog, v38, v39);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = *(v61 + 6);
      *buf = 67109120;
      LODWORD(v67) = v41;
      _os_log_impl(&dword_195988000, v40, OS_LOG_TYPE_DEFAULT, "   _SecItemAddAndNotifyOnSync result: %d", buf, 8u);
    }

    if (objc_msgSend_length(v14, v42, v43))
    {
      v45 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v44, @"   accessGroup: %@", v14);
    }

    else
    {
      v45 = &stru_1F09D3C40;
    }

    if (*(v61 + 6))
    {
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = sub_1959AB870;
      v47[3] = &unk_1E7438900;
      v52 = &v60;
      v48 = v12;
      v49 = v13;
      v50 = v45;
      v51 = v37;
      dispatch_async(MEMORY[0x1E69E96A0], v47);
    }

    if (result)
    {
      CFRelease(result);
      result = 0;
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    _Block_object_dispose(&v60, 8);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1959AB6A0;
    block[3] = &unk_1E74384C0;
    v65 = v15;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v46 = *MEMORY[0x1E69E9840];
}

uint64_t IMGetSecAttrDataProtectionClassFromKeychainDataProtectionClass(int a1)
{
  v1 = MEMORY[0x1E697AC28];
  v2 = MEMORY[0x1E697ABE8];
  if (a1)
  {
    v2 = MEMORY[0x1E697AC00];
  }

  if (a1 != 1)
  {
    v1 = v2;
  }

  return *v1;
}

void sub_1959AB6E8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = a2;
  v21 = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v6 = objc_msgSend_warning(IMRGLog, a2, a3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = @"NO";
      v8 = *(*(*(a1 + 40) + 8) + 24);
      if (v4)
      {
        v7 = @"YES";
      }

      *buf = 67109634;
      v16 = v8;
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = a3;
      _os_log_fault_impl(&dword_195988000, v6, OS_LOG_TYPE_FAULT, "IMSetKeychainData: %d -- Got callback from _SecItemAddAndNotifyOnSync despite original call failing. didSync: %@ CallbackError: %@", buf, 0x1Cu);
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1959AB858;
    block[3] = &unk_1E74388B0;
    v9 = *(a1 + 32);
    v14 = v4;
    v12 = v9;
    v13 = a3;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v6 = v12;
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1959AB870(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_warning(IMRGLog, a2, a3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_1959D528C(a1);
  }

  return (*(a1[7] + 16))();
}

BOOL sub_1959AB908(void *a1, void *a2, const void *a3, OSStatus *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v10 = a2;
  if (a4)
  {
    *a4 = 0;
  }

  if (objc_msgSend_length(v7, v8, v9) && objc_msgSend_length(v10, v11, v12))
  {
    v13 = v7;
    v14 = v10;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B008]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AEB0], a3);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AE88], v13);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AC30], v14);
    v18 = objc_msgSend_keychain(IMRGLog, v16, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138412290;
      *v28 = Mutable;
      _os_log_impl(&dword_195988000, v18, OS_LOG_TYPE_DEFAULT, "IMRemoveKeychainData: Removing item matching: %@", &v27, 0xCu);
    }

    v19 = SecItemDelete(Mutable);
    if (v19 == -25300)
    {
      v22 = 0;
    }

    else
    {
      v22 = v19;
    }

    v23 = v22 == 0;
    if (v22)
    {
      v24 = objc_msgSend_warning(IMRGLog, v20, v21);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        v27 = 67109634;
        *v28 = v22;
        *&v28[4] = 2112;
        *&v28[6] = v13;
        v29 = 2112;
        v30 = v14;
        _os_log_fault_impl(&dword_195988000, v24, OS_LOG_TYPE_FAULT, "IMRemoveKeychainData: %d -- Could not remove data for service: %@   account: %@", &v27, 0x1Cu);
      }
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (a4)
    {
      *a4 = v22;
    }
  }

  else
  {
    v23 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v23;
}

uint64_t IMGetTemporaryKeychainPassword(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = sub_1959ABBD4(a2);
  v9 = objc_msgSend_lowercaseString(v5, v7, v8);

  v10 = IMGetKeychainPassword(a1, v6, v9);
  return v10;
}

id sub_1959ABBD4(void *a1)
{
  v1 = a1;
  if (objc_msgSend_length(v1, v2, v3))
  {
    v5 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v4, @"%@_temporary", v1);
  }

  else
  {
    v5 = v1;
  }

  v6 = v5;

  return v6;
}

BOOL IMSetTemporaryKeychainPassword(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (objc_msgSend_length(v5, v8, v9) && objc_msgSend_length(v6, v10, v11) && objc_msgSend_length(v7, v12, v13))
  {
    v14 = sub_1959ABBD4(v6);

    v16 = objc_msgSend_dataUsingEncoding_(v5, v15, 4);
    v25 = 0;
    v19 = objc_msgSend_lowercaseString(v7, v17, v18);
    v20 = sub_195997C58(v16, v14, v19, @"apple", &v25, 0, 1, 2);

    if (!v20)
    {
      v23 = objc_msgSend_warning(IMRGLog, v21, v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        sub_1959D532C(&v25);
      }
    }

    v6 = v14;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

BOOL IMRemoveTemporaryKeychainPassword(void *a1, void *a2)
{
  v3 = a2;
  v4 = sub_1959ABBD4(a1);
  v5 = IMRemoveKeychainPassword(v4, v3);

  return v5;
}

uint64_t IMIterateOverItemsOfService(void *a1, void *a2)
{
  v3 = a1;
  v6 = a2;
  if (v6 && objc_msgSend_length(v3, v4, v5))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B008]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AEB0], *MEMORY[0x1E697AEB8]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AE88], v3);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B260], *MEMORY[0x1E697B268]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B310], *MEMORY[0x1E695E4D0]);
    result = 0;
    v8 = SecItemCopyMatching(Mutable, &result);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    v9 = result;
    if (v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = result == 0;
    }

    v11 = !v10;
    if (!v10)
    {
      if (CFArrayGetCount(result) >= 1)
      {
        v12 = 0;
        do
        {
          v13 = CFArrayGetValueAtIndex(result, v12);
          v6[2](v6, v13);

          ++v12;
        }

        while (v12 < CFArrayGetCount(result));
      }

      v9 = result;
    }

    if (v9)
    {
      CFRelease(v9);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t IMDeleteItemsForService(void *a1)
{
  v1 = a1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1959AC020;
  v5[3] = &unk_1E7438350;
  v6 = v1;
  v2 = v1;
  v3 = IMIterateOverItemsOfService(v2, v5);

  return v3;
}

void sub_1959AC020(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_objectForKey_(a2, a2, *MEMORY[0x1E697AC30]);
  sub_1959AB908(v2, v3, *MEMORY[0x1E697AEB8], 0);
}

uint64_t IMGetKeychainDataProtectionClassFromSecAttrDataProtectionClass(CFStringRef theString2)
{
  if (CFStringCompare(*MEMORY[0x1E697AC28], theString2, 0))
  {
    return 2 * (CFStringCompare(*MEMORY[0x1E697ABE8], theString2, 0) != kCFCompareEqualTo);
  }

  else
  {
    return 1;
  }
}

void sub_1959AC880(const __SCDynamicStore *a1, BOOL *a2, CFTypeRef *a3)
{
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  v6 = *MEMORY[0x1E695E480];
  v7 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v9 = *MEMORY[0x1E69822F0];
  NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(v6, *MEMORY[0x1E69822F0], *MEMORY[0x1E6982338]);
  CFArrayAppendValue(Mutable, NetworkGlobalEntity);
  v11 = SCDynamicStoreKeyCreateNetworkGlobalEntity(v6, v9, *MEMORY[0x1E6982340]);
  CFArrayAppendValue(Mutable, v11);
  v12 = CFArrayCreateMutable(v6, 0, v7);
  entity = *MEMORY[0x1E6982320];
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(v6, v9, *MEMORY[0x1E69822E0], *MEMORY[0x1E6982320]);
  CFArrayAppendValue(v12, NetworkServiceEntity);
  CFRelease(NetworkServiceEntity);
  v14 = SCDynamicStoreCopyMultiple(a1, Mutable, v12);
  CFRelease(Mutable);
  CFRelease(v12);
  Value = CFDictionaryGetValue(v14, NetworkGlobalEntity);
  v16 = Value;
  if (Value)
  {
    v17 = CFGetTypeID(Value);
    if (v17 == CFDictionaryGetTypeID())
    {
      v18 = CFDictionaryGetValue(v16, *MEMORY[0x1E6982300]);
      v16 = CFDictionaryGetValue(v16, *MEMORY[0x1E6982308]);
      goto LABEL_10;
    }

    v16 = 0;
  }

  v18 = 0;
LABEL_10:
  CFRelease(NetworkGlobalEntity);
  if (!v18 || !v16)
  {
    v19 = CFDictionaryGetValue(v14, v11);
    if (v19)
    {
      v20 = v19;
      v21 = CFGetTypeID(v19);
      if (v21 == CFDictionaryGetTypeID())
      {
        v18 = CFDictionaryGetValue(v20, *MEMORY[0x1E6982300]);
        v16 = CFDictionaryGetValue(v20, *MEMORY[0x1E6982308]);
      }
    }
  }

  CFRelease(v11);
  v22 = 0;
  if (v18 && v16)
  {
    v23 = SCDynamicStoreKeyCreateNetworkServiceEntity(v6, v9, v16, entity);
    v24 = CFDictionaryGetValue(v14, v23);
    CFRelease(v23);
    v22 = v24 != 0;
  }

  if (a2)
  {
    *a2 = v22;
  }

  if (a3 && v18)
  {
    *a3 = CFRetain(v18);
  }

  if (v14)
  {

    CFRelease(v14);
  }
}

__CFString *MobileMeBrandName(int a1)
{
  if (a1 == 1)
  {
    return @"me.com";
  }

  else
  {
    return @"Mac.com";
  }
}

id MobileMeSuffix(uint64_t a1, char a2)
{
  v2 = a1;
  if (a2)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = MobileMeSuffix(a1, 0);
    v6 = objc_msgSend_stringWithFormat_(v3, v5, @"@%@", v4);
  }

  else
  {
    v4 = ValidMobileMeDomains();
    v9 = objc_msgSend_count(v4, v7, v8);
    v10 = ValidMobileMeDomains();
    v12 = v10;
    if (v9 <= v2)
    {
      objc_msgSend_objectAtIndex_(v10, v11, 0);
    }

    else
    {
      objc_msgSend_objectAtIndex_(v10, v11, v2);
    }
    v6 = ;
  }

  return v6;
}

id sub_1959ACF70(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = ValidMobileMeDomains();
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v16, v20, 16);
  if (v4)
  {
    v6 = v4;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v5, @"@%@", v9);
        hasSuffix = objc_msgSend_hasSuffix_(a1, v11, v10);

        if (hasSuffix)
        {
          v13 = v9;
          goto LABEL_11;
        }
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v16, v20, 16);
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

BOOL sub_1959AD0CC(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_mobileMeDomain(a1, a2, a3);
  v4 = v3 != 0;

  return v4;
}

id sub_1959AD100(void *a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_mobileMeDomain(a1, a2, a3);
  if (v6)
  {
    v7 = objc_msgSend_length(a1, v4, v5);
    v10 = objc_msgSend_length(v6, v8, v9);
    v12 = objc_msgSend_substringWithRange_(a1, v11, 0, v7 + ~v10);
  }

  else
  {
    v12 = a1;
  }

  v13 = v12;

  return v13;
}

uint64_t sub_1959AD2A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_1EAED9020 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x1EEE66BB8]();
}

void sub_1959ADD08()
{
  os_unfair_lock_lock(&unk_1ED517458);
  if (dword_1EAED8C68)
  {
    IONotificationPortSetDispatchQueue(qword_1EAED8C70, 0);
    IODeregisterForSystemPower(dword_1EAED8C78);
    IOServiceClose(dword_1EAED8C68);
    IONotificationPortDestroy(qword_1EAED8C70);
    dword_1EAED8C68 = 0;
  }

  os_unfair_lock_unlock(&unk_1ED517458);
}

void sub_1959AE1F4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedInstance(IMSystemMonitor, a2, a3);
  objc_msgSend_setWatchesSystemLockState_(v4, v3, 1);
}

void sub_1959AE54C()
{
  os_unfair_lock_lock(&unk_1ED517458);
  if (!dword_1EAED8C68)
  {
    dword_1EAED8C68 = IORegisterForSystemPower(0, &qword_1EAED8C70, sub_195993D28, dword_1EAED8C78);
    if (dword_1EAED8C68)
    {
      v0 = qword_1EAED8C70;
      v1 = im_primary_queue();
      IONotificationPortSetDispatchQueue(v0, v1);
    }

    else
    {
      v2 = sub_1959AF938();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_1959D53B0(v2);
      }
    }
  }

  os_unfair_lock_unlock(&unk_1ED517458);
}

uint64_t sub_1959AF34C(uint64_t a1)
{
  result = IMGetDomainBoolForKey(@"com.apple.conference", @"restoredFromBackup");
  if (result)
  {
    v4 = *(a1 + 32);

    return objc_msgSend__deliverNotificationSelector_(v4, v3, sel_systemDidFinishMigration);
  }

  return result;
}

void sub_1959AF520()
{
  v0 = IMWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EAED8A50, v1);
}

void sub_1959AF570(uint64_t a1, void *a2)
{
  v3 = sub_1959AF938();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_195988000, v3, OS_LOG_TYPE_INFO, "Setup state changed", v6, 2u);
  }

  if (a2)
  {
    objc_msgSend__setupStateChanged(a2, v4, v5);
  }
}

id sub_1959AF5E8()
{
  if (qword_1EAED8A58 != -1)
  {
    sub_1959D5408();
  }

  v1 = qword_1EAED8A60;

  return v1;
}

void sub_1959AF62C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    MEMORY[0x1EEE66B58](a2, sel__checkRestoredFromBackup, a3);
  }
}

void sub_1959AF63C(uint64_t a1, void *a2)
{
  v3 = sub_1959AF938();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_195988000, v3, OS_LOG_TYPE_INFO, "Restore started", v6, 2u);
  }

  if (a2)
  {
    objc_msgSend__restoreDidStart(a2, v4, v5);
  }
}

void sub_1959AF6B4(uint64_t a1, void *a2)
{
  v3 = sub_1959AF938();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_195988000, v3, OS_LOG_TYPE_INFO, "Restore stopped", v6, 2u);
  }

  if (a2)
  {
    objc_msgSend__restoreDidStop(a2, v4, v5);
  }
}

void sub_1959AF7C0()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    byte_1EAED8788 = CFEqual(v0, @"AppleTV") != 0;
    byte_1EAED9049 = CFEqual(v1, @"AudioAccessory") != 0;

    CFRelease(v1);
  }
}

uint64_t (*sub_1959AF850())(void)
{
  result = IMWeakLinkSymbol();
  off_1EAED87A8 = result;
  return result;
}

uint64_t (*sub_1959AF880())(void)
{
  result = IMWeakLinkSymbol();
  off_1EAED87A0 = result;
  return result;
}

id sub_1959AF938()
{
  if (qword_1EAED8A88 != -1)
  {
    sub_1959D5458();
  }

  v1 = qword_1EAED8A90;

  return v1;
}

void sub_1959AFA40(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_sharedInstance(IMSystemMonitor, a2, a3);
  objc_msgSend__receivedMemoryNotification(v5, v3, v4);
}

void sub_1959AFC1C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_registration(IMRGLog, a2, a3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_195988000, v3, OS_LOG_TYPE_DEFAULT, "IMSystemMonitor: Received IMSystemMonitorSBShutdownCallback", v4, 2u);
  }

  sub_1959AFCFC();
}

void sub_1959AFC90()
{
  v0 = sub_1959AF938();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_195988000, v0, OS_LOG_TYPE_DEFAULT, "kMobileObliterationNotification received", v1, 2u);
  }

  sub_1959AFCFC();
}

void sub_1959AFCFC()
{
  os_unfair_lock_lock(&unk_1ED517458);
  if (byte_1EAED9044)
  {

    os_unfair_lock_unlock(&unk_1ED517458);
  }

  else
  {
    v0 = sub_1959AF938();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_195988000, v0, OS_LOG_TYPE_DEFAULT, "Updating to note that system is currently shutting down", v7, 2u);
    }

    byte_1EAED9044 = 1;
    os_unfair_lock_unlock(&unk_1ED517458);
    v3 = objc_msgSend_sharedInstance(IMSystemMonitor, v1, v2);
    objc_msgSend__systemWillShutdown(v3, v4, v5);

    v6 = im_primary_queue();
    dispatch_async(v6, &unk_1F09D1FA0);
  }
}

void sub_1959AFDF0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, a3);
  objc_msgSend_postNotificationName_object_(v4, v3, @"IMSystemShuttingDownNotification", 0);
}

void sub_1959AFE44()
{
  if (!qword_1EAED8A60)
  {
    v1 = IMWeakLinkSymbol();
    if (v1)
    {
      v2 = *v1;
    }

    else
    {
      v2 = 0;
    }

    objc_storeStrong(&qword_1EAED8A60, v2);
  }
}

uint64_t sub_1959AFEA4()
{
  qword_1EAED8A90 = os_log_create("com.apple.imfoundation", "IMSystemMonitor");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B08B4()
{
  qword_1ED5175E0 = objc_alloc_init(IMUserNotificationCenter);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1959B1300(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_sharedInstance(IMUserNotificationCenter, a2, a3);
  objc_msgSend__handleUserNotification_responseFlags_(v6, v5, a1, a2);
}

uint64_t (*sub_1959B1EC4())(void)
{
  result = IMWeakLinkSymbol();
  off_1EAED9058 = result;
  return result;
}

uint64_t (*sub_1959B1EF4())(void)
{
  result = IMWeakLinkSymbol();
  off_1EAED8818 = result;
  return result;
}

void *sub_1959B2220()
{
  result = IMWeakLinkSymbol();
  off_1EAED9068 = result;
  return result;
}

uint64_t sub_1959B27C4()
{
  result = IMWeakLinkSymbol();
  qword_1EAED8930 = result;
  return result;
}

uint64_t (*sub_1959B27F4())(void)
{
  result = IMWeakLinkSymbol();
  off_1EAED8928 = result;
  return result;
}

uint64_t (*sub_1959B2824())(void, void)
{
  result = IMWeakLinkSymbol();
  off_1EAED88F8 = result;
  return result;
}

uint64_t (*sub_1959B2854())(void, void)
{
  result = IMWeakLinkSymbol();
  off_1EAED8918 = result;
  return result;
}

uint64_t (*sub_1959B2884())(void, void)
{
  result = IMWeakLinkSymbol();
  off_1EAED8910 = result;
  return result;
}

uint64_t (*sub_1959B28B4())(void, void)
{
  result = IMWeakLinkSymbol();
  off_1EAED8900 = result;
  return result;
}

uint64_t (*sub_1959B28E4())(void, void)
{
  result = IMWeakLinkSymbol();
  off_1EAED8908 = result;
  return result;
}

uint64_t (*sub_1959B2914())(void, void)
{
  result = IMWeakLinkSymbol();
  off_1EAED8920 = result;
  return result;
}

uint64_t (*sub_1959B2944())(void, void, void, void)
{
  result = IMWeakLinkSymbol();
  off_1EAED8938 = result;
  return result;
}

uint64_t sub_1959B2974(uint64_t a1)
{
  if (qword_1EAED86E0 != -1)
  {
    sub_1959D56A8();
  }

  v2 = off_1EAED86E8(a1);
  v5 = v2;
  v6 = 2;
  if (v2)
  {
    if (objc_msgSend_wasCancelled(v2, v3, v4))
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

uint64_t sub_1959B29E4(uint64_t a1, uint64_t a2, int a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1EAED9080 != -1)
  {
    sub_1959D56BC();
  }

  v6 = off_1EAED9078(a1);
  v7 = sub_1959B2EC4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412802;
    v11 = v6;
    v12 = 2080;
    v13 = a2;
    v14 = 1024;
    v15 = a3;
    _os_log_impl(&dword_195988000, v7, OS_LOG_TYPE_DEFAULT, "%@: File Error: %s, %d", &v10, 0x1Cu);
  }

  v8 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t sub_1959B2AE8(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1EAED90A0 != -1)
  {
    sub_1959D56D0();
  }

  v4 = off_1EAED9098(a1);
  v5 = sub_1959B2EC4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v4;
    v10 = 2080;
    v11 = a2;
    _os_log_impl(&dword_195988000, v5, OS_LOG_TYPE_DEFAULT, "%@: File Conflict Error: %s", &v8, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
  return 3;
}

void sub_1959B2BDC(uint64_t a1)
{
  if (qword_1EAED90B0 != -1)
  {
    sub_1959D56E4();
  }

  v2 = off_1EAED90A8(a1);
  v3 = sub_1959B2EC4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1959D56F8(v2, v3);
  }
}

void sub_1959B2C5C(uint64_t a1, uint64_t a2, int a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (qword_1EAED90C0 != -1)
  {
    sub_1959D5770();
  }

  v6 = off_1EAED90B8(a1);
  v7 = sub_1959B2EC4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412802;
    v10 = v6;
    v11 = 2080;
    v12 = a2;
    v13 = 1024;
    v14 = a3;
    _os_log_impl(&dword_195988000, v7, OS_LOG_TYPE_DEFAULT, "%@: Fatal File Error: %s, %d", &v9, 0x1Cu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t (*sub_1959B2E64())(void)
{
  result = IMWeakLinkSymbol();
  off_1EAED86E8 = result;
  return result;
}

uint64_t (*sub_1959B2E94())(void)
{
  result = IMWeakLinkSymbol();
  off_1EAED9078 = result;
  return result;
}

id sub_1959B2EC4()
{
  if (qword_1EAED9090 != -1)
  {
    sub_1959D5784();
  }

  v1 = qword_1EAED9088;

  return v1;
}

uint64_t sub_1959B2F08()
{
  qword_1EAED9088 = os_log_create("com.apple.imfoundation", "fileCopier");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t (*sub_1959B2F4C())(void)
{
  result = IMWeakLinkSymbol();
  off_1EAED9098 = result;
  return result;
}

uint64_t (*sub_1959B2F7C())(void)
{
  result = IMWeakLinkSymbol();
  off_1EAED90A8 = result;
  return result;
}

uint64_t (*sub_1959B2FAC())(void)
{
  result = IMWeakLinkSymbol();
  off_1EAED90B8 = result;
  return result;
}

void sub_1959B330C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1959B3B18;
  v7[3] = &unk_1E7438668;
  v6 = v4;
  v8 = v6;
  v9 = a1;
  dispatch_async(MEMORY[0x1E69E96A0], v7);

  objc_autoreleasePoolPop(v5);
}

void sub_1959B3B18(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_object(*(a1 + 32), a2, a3);
  objc_msgSend__handleCallbackForSCNetworkReachability_(v5, v4, *(a1 + 40));
}

uint64_t sub_1959B3C9C()
{
  qword_1EAED90C8 = objc_alloc_init(IMPerfProfiler);

  return MEMORY[0x1EEE66BB8]();
}

dispatch_queue_t sub_1959B55D4()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = im_primary_base_queue();
  result = dispatch_queue_create_with_target_V2("IMLocalObjectQueueWithTargetWorkloop", v0, v1);
  qword_1EAED90E0 = result;
  return result;
}

uint64_t sub_1959B5D40(uint64_t a1, const char *a2)
{
  objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x1E69E58C0], a2, *(a1 + 32), sel__handleNewInvocations, 0);
  *(*(*(a1 + 32) + 8) + 100) = 0;
  isMainThread = objc_msgSend_isMainThread(MEMORY[0x1E696AF00], v3, v4);
  v8 = *(a1 + 32);
  if (isMainThread)
  {

    return objc_msgSend__portDidBecomeInvalid(v8, v5, v6);
  }

  else
  {

    return MEMORY[0x1EEE66B58](v8, sel_performSelectorOnMainThread_withObject_waitUntilDone_modes_, sel__portDidBecomeInvalid);
  }
}

void sub_1959B5DE4(uint64_t a1, xpc_connection_t connection, void *a3)
{
  if (!connection)
  {
    return;
  }

  im_configure_connection_with_local_object(connection, *(a1 + 32));
  v6 = &unk_1ED517000;
  if (dword_1ED517080 < 0)
  {
    if (qword_1ED517528 != -1)
    {
      sub_19598C678();
      v6 = &unk_1ED517000;
    }

    if (v6[32] <= 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (dword_1ED517080)
  {
LABEL_4:
    context = xpc_connection_get_context(connection);
    v15 = *(a1 + 32);
    _IMLog(@"* Incoming event for IMLocalObject: %@   (object: %p)", v8, v9, v10, v11, v12, v13, v14, context);
  }

LABEL_5:

  im_local_object_peer_event_handler_is_syncReply(connection, a3, 0);
}

uint64_t sub_1959B61BC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, a3);
  v6 = *(a1 + 32);

  return objc_msgSend_postNotificationName_object_(v4, v5, @"IMLocalObjectDidDisconnect", v6);
}

uint64_t sub_1959B6204(uint64_t a1)
{
  v2 = OSLogHandleForIDSCategory("IMLocalObject");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_195988000, v2, OS_LOG_TYPE_DEFAULT, "_clearPort posting IMLocalObjectDidDisconnectNotification after waking main thread", v8, 2u);
  }

  v5 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v3, v4);
  return objc_msgSend___mainThreadPostNotificationName_object_(v5, v6, @"IMLocalObjectDidDisconnect", *(a1 + 32));
}

void sub_1959B6754(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 24);
  if (v2)
  {
    v5 = v2;
    v6 = objc_msgSend_selector(*(*(*(a1 + 40) + 8) + 40), v3, v4);
    v9 = objc_msgSend_methodSignature(*(*(*(a1 + 40) + 8) + 40), v7, v8);
    v12 = objc_msgSend_numberOfArguments(v9, v10, v11);
    v13 = NSStringFromSelector(v6);
    if (v12 == 2)
    {
      v15 = objc_msgSend_stringByAppendingString_(v13, v14, @"WithMessageContext:");
    }

    else
    {
      v15 = objc_msgSend_stringByAppendingString_(v13, v14, @"messageContext:");
    }

    v16 = NSSelectorFromString(v15);
    if (v16)
    {
      v18 = v16;
      if (objc_opt_respondsToSelector())
      {
        v19 = objc_msgSend_methodSignatureForSelector_(v5, v17, v18);
        if (v19)
        {
          v20 = objc_msgSend_invocationWithMethodSignature_(MEMORY[0x1E695DF50], v17, v19);
          objc_msgSend_setSelector_(v20, v21, v18);
          JWCopyInvocationArguments(*(*(*(a1 + 40) + 8) + 40), v20);
          objc_msgSend_setArgument_atIndex_(v20, v22, *(*(a1 + 48) + 8) + 40, v12);
          *(*(*(a1 + 40) + 8) + 40) = v20;
        }
      }
    }

    objc_msgSend_invokeWithTarget_(*(*(*(a1 + 40) + 8) + 40), v17, v5);
    if (*(a1 + 56) == 1)
    {
      kdebug_trace();
    }

    if (*(a1 + 56) == 1)
    {
      *(*(*(a1 + 32) + 8) + 8) = 0;
    }
  }
}

uint64_t sub_1959B6EC0(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = OSLogHandleForIDSCategory("IMLocalObject");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 8);
    if (*(v5 + 101))
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    if (*(v5 + 100))
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_195988000, v2, OS_LOG_TYPE_DEFAULT, "Posting IMLocalObjectDidDisconnectNotification as we detected run loop was blocked. _localInternal(busyForwarding) %@ or had pending component processing %@ ", &v12, 0x16u);
  }

  v8 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v3, v4);
  result = objc_msgSend___mainThreadPostNotificationName_object_(v8, v9, @"IMLocalObjectDidDisconnect", *(a1 + 32));
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1959B72DC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((dword_1ED517080 & 0x80000000) == 0)
  {
    if (!dword_1ED517080)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (qword_1ED517528 != -1)
  {
    sub_19598C678();
  }

  if (dword_1ED517080 > 0)
  {
LABEL_3:
    _IMLog(@"Remote object died: %@", a2, a3, a4, a5, a6, a7, a8, *(a1 + 32));
  }

LABEL_4:
  v9 = *(a1 + 32);

  return objc_msgSend__portDidBecomeInvalid(v9, a2, a3);
}

dispatch_queue_t sub_1959B7918()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create(0, v0);
  qword_1EAED90E8 = result;
  return result;
}

void sub_1959B7FCC(uint64_t a1, const char *a2, uint64_t a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (!v3)
  {
    goto LABEL_30;
  }

  v4 = *(a1 + 40);
  v5 = v4[1];
  v6 = v4[4];
  v39 = v4[6];
  if (objc_msgSend_count(v5, a2, a3))
  {
    v9 = objc_msgSend__copyForEnumerating(v5, v7, v8);
  }

  else
  {
    v9 = 0;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v7, &v41, v45, 16);
  if (!v10)
  {
    goto LABEL_29;
  }

  v13 = v10;
  v14 = *v42;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v42 != v14)
      {
        objc_enumerationMutation(v9);
      }

      v16 = *(*(&v41 + 1) + 8 * i);
      if ((objc_msgSend_isValid(v16, v11, v12) & 1) == 0)
      {
        if (dword_1ED517080 < 0)
        {
          if (qword_1ED517528 != -1)
          {
            sub_1959D57C0();
          }

          if (dword_1ED517080 <= 0)
          {
            goto LABEL_29;
          }
        }

        else if (!dword_1ED517080)
        {
          goto LABEL_29;
        }

        _IMLog(@"* Object is no longer valid, skipping this enqueue: %@", v17, v18, v19, v20, v21, v22, v23, v16);
        goto LABEL_29;
      }

      v24 = objc_msgSend__queue(v16, v17, v18);
      if (v24)
      {
        v25 = v24;
        dispatch_retain(v24);
        xpc_retain(v3);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_19598DE94;
        block[3] = &unk_1E74395C0;
        block[4] = v16;
        block[5] = v3;
        block[7] = v25;
        block[8] = v39;
        block[6] = v6;
        v28 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
        if (v6 && ((objc_msgSend_isReply(v6, v26, v27) & 1) != 0 || objc_msgSend_isSync(v6, v29, v30)))
        {
          if ((_os_feature_enabled_impl() & 1) != 0 || (v33 = objc_msgSend_currentThread(MEMORY[0x1E696AF00], v31, v32), v36 = objc_msgSend_threadDictionary(v33, v34, v35), objc_msgSend_objectForKey_(v36, v37, @"com.apple.IMRemoteObjectDeliveringMessageKey") == v16))
          {
            v28[2](v28);
LABEL_22:
            _Block_release(v28);
            continue;
          }

          dispatch_sync(v25, v28);
        }

        else
        {
          dispatch_async(v25, v28);
        }

        if (v28)
        {
          goto LABEL_22;
        }
      }
    }

    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v41, v45, 16);
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_29:

LABEL_30:
  v38 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1959B8740()
{
  qword_1EAED86F8 = os_log_create("com.apple.IDS", "Registration-oversized");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B87CC()
{
  qword_1ED517158 = os_log_create("com.apple.Registration", "Warning");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B8854()
{
  qword_1EAED90F8 = os_log_create("com.apple.Registration", "ACKTracker");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B88DC()
{
  qword_1EAED9108 = os_log_create("com.apple.Registration", "Engram");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B8964()
{
  qword_1EAED8A08 = os_log_create("com.apple.Registration", "FTMessageDelivery-oversized");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B89A8()
{
  qword_1EAED89F8 = os_log_create("com.apple.Registration", "GDR");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B8A30()
{
  qword_1EAED89E8 = os_log_create("com.apple.Registration", "GDR-oversized");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B8AB8()
{
  qword_1EAED8C30 = os_log_create("com.apple.Registration", "IDSService");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B8AFC()
{
  qword_1ED517338 = os_log_create("com.apple.Registration", "IDSService-oversized");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B8B84()
{
  qword_1EAED8A80 = os_log_create("com.apple.Registration", "NRPairing");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B8C0C()
{
  qword_1EAED9118 = os_log_create("com.apple.Registration", "OTRStore");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B8C94()
{
  qword_1EAED88A8 = os_log_create("com.apple.Registration", "AccountCleanup");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B8D1C()
{
  qword_1EAED8898 = os_log_create("com.apple.Registration", "AccountSync");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B8DA4()
{
  qword_1EAED8888 = os_log_create("com.apple.Registration", "AccountUpdate");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B8E2C()
{
  qword_1EAED8878 = os_log_create("com.apple.Registration", "AccountsDebugging");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B8EB4()
{
  qword_1EAED9128 = os_log_create("com.apple.Registration", "AppleCare");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B8F3C()
{
  qword_1EAED9138 = os_log_create("com.apple.Registration", "ClassKeys");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B8FC4()
{
  qword_1EAED8828 = os_log_create("com.apple.Registration", "DataProtectionClass");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B9008()
{
  qword_1EAED8808 = os_log_create("com.apple.Registration", "DeviceHeartbeat");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B9090()
{
  qword_1EAED9148 = os_log_create("com.apple.Registration", "DeviceIDMap");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B90D4()
{
  qword_1EAED87F8 = os_log_create("com.apple.Registration", "DeviceState");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B915C()
{
  qword_1EAED87D8 = os_log_create("com.apple.Registration", "HealthDebug");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B91A0()
{
  qword_1EAED87C8 = os_log_create("com.apple.Registration", "HealthDebugging");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B9228()
{
  qword_1EAED8A38 = os_log_create("com.apple.Registration", "iCloud");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B92B0()
{
  qword_1EAED9158 = os_log_create("com.apple.Registration", "IMMacNotificationCenterManager");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B9338()
{
  qword_1EAED9168 = os_log_create("com.apple.Registration", "iMessageSpam");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B93C0()
{
  qword_1EAED9178 = os_log_create("com.apple.Registration", "SpamReporting");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B9448()
{
  qword_1EAED87B8 = os_log_create("com.apple.Registration", "InternalCleanup");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B94D0()
{
  qword_1EAED9188 = os_log_create("com.apple.Registration", "isActive");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B9558()
{
  qword_1EAED9198 = os_log_create("com.apple.Registration", "KeyRoll");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B959C()
{
  qword_1EAED8778 = os_log_create("com.apple.Registration", "Keychain");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B95E0()
{
  qword_1EAED8DA0 = os_log_create("com.apple.Registration", "KeychainManager");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B9668()
{
  qword_1EAED8768 = os_log_create("com.apple.Registration", "LiveMigration");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B96AC()
{
  qword_1EAED8A18 = os_log_create("com.apple.Registration", "MessageDelivery-oversized");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B9734()
{
  qword_1EAED8758 = os_log_create("com.apple.Registration", "Migration");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B97BC()
{
  qword_1EAED8AE0 = os_log_create("com.apple.Registration", "Nonce");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B9844()
{
  qword_1EAED91A8 = os_log_create("com.apple.Registration", "PairedDeviceRepo");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B98CC()
{
  qword_1EAED91B8 = os_log_create("com.apple.Registration", "PairedIdentities");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B9954()
{
  qword_1EAED91C8 = os_log_create("com.apple.Registration", "Pairing");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B99DC()
{
  qword_1EAED91D8 = os_log_create("com.apple.Registration", "PairingIdentities");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B9A64()
{
  qword_1EAED8748 = os_log_create("com.apple.Registration", "PairingProtocolDebug");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B9AEC()
{
  qword_1EAED8738 = os_log_create("com.apple.Registration", "PhoneRepair");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B9B74()
{
  qword_1EAED8728 = os_log_create("com.apple.Registration", "PushToken");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B9BFC()
{
  qword_1EAED91E8 = os_log_create("com.apple.Registration", "QueryRetry");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B9C84()
{
  qword_1EAED91F8 = os_log_create("com.apple.Registration", "Regeneration");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B9D0C()
{
  qword_1EAED8718 = os_log_create("com.apple.Registration", "RegistrationAuthKit");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B9D94()
{
  qword_1EAED8708 = os_log_create("com.apple.Registration", "RegistrationListener");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B9E1C()
{
  qword_1EAED9208 = os_log_create("com.apple.Registration", "ReloadAccounts");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B9EA4()
{
  qword_1ED517368 = os_log_create("com.apple.Registration", "ServerBag");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B9EE8()
{
  qword_1ED5172B0 = os_log_create("com.apple.Registration", "SMS");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B9F70()
{
  qword_1EAED86B8 = os_log_create("com.apple.Registration", "Sub-services");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959B9FF8()
{
  qword_1EAED8698 = os_log_create("com.apple.Registration", "Sysdiagnose-oversized");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959BA080()
{
  qword_1EAED86A8 = os_log_create("com.apple.Registration", "Sysdiagnose-KeyTransparency");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959BA108()
{
  qword_1EAED9218 = os_log_create("com.apple.Registration", "UniqueID");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959BA190()
{
  qword_1EAED9228 = os_log_create("com.apple.Registration", "VoicemailSync");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959BA1D4()
{
  qword_1EAED8BD0 = os_log_create("com.apple.Registration", "WatchPairing");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959BA25C()
{
  qword_1EAED9238 = os_log_create("com.apple.Registration", "VM");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959BA2E4()
{
  qword_1EAED87E8 = os_log_create("com.apple.Registration", "eventTracing-oversized");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1959BA35C(uint64_t a1, void *a2, va_list a3)
{
  v5 = a2;
  v42 = v5;
  if (!qword_1ED5171B0)
  {
    v8 = IMGetMainBundle(v5, v6, v7);
    v11 = v8;
    if (v8)
    {
      v12 = objc_msgSend_bundleIdentifier(v8, v9, v10);
      v13 = qword_1ED5171B0;
      qword_1ED5171B0 = v12;
    }

    if (!objc_msgSend_length(qword_1ED5171B0, v9, v10))
    {
      v14 = qword_1ED5171B0;
      qword_1ED5171B0 = @"com.apple.imlogging";
    }
  }

  v15 = objc_autoreleasePoolPush();
  FormatString = _IMFastCreateFormatString(v42, a3);
  if ((a1 - 2) >= 3)
  {
    objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v16, 5);
  }

  else
  {
    objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v16, (6 - a1));
  }
  v25 = ;
  if (byte_1EAED9268 == 1)
  {
    IMPrintf(@"%@", v18, v19, v20, v21, v22, v23, v24, FormatString);
  }

  else if (objc_msgSend_length(FormatString, v18, v19))
  {
    v28 = objc_msgSend_UTF8String(qword_1ED5171B0, v26, v27);
    v29 = asl_open(0, v28, 2u);
    v30 = asl_new(0);
    v33 = objc_msgSend_stringValue(v25, v31, v32);
    v34 = v33;
    v37 = objc_msgSend_UTF8String(v34, v35, v36);
    asl_set(v30, "Level", v37);

    v38 = FormatString;
    v41 = objc_msgSend_UTF8String(v38, v39, v40);
    asl_set(v30, "Message", v41);
    asl_send(v29, v30);
    MEMORY[0x19A8B9AA0](v30);
    MEMORY[0x19A8B9A90](v29);
  }

  objc_autoreleasePoolPop(v15);
}

void _IMAlwaysLogV(uint64_t a1, void *a2, void *a3, va_list a4)
{
  v16 = a2;
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  FormatString = _IMFastCreateFormatString(v7, a4);
  _IMLogLevel(a1, @"[%@] %@", v9, v10, v11, v12, v13, v14, v16);

  objc_autoreleasePoolPop(v8);
}

id _IMLogCategoryFromMessage(void *a1)
{
  v1 = a1;
  if (objc_msgSend_hasPrefix_(v1, v2, @"[") && (v5 = objc_msgSend_length(v1, v3, v4), v7 = objc_msgSend_rangeOfString_options_range_(v1, v6, @"]", 0, 1, v5 - 1), v8))
  {
    v9 = objc_msgSend_substringWithRange_(v1, v8, 1, v7 - 1);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id _IMLogMessageFromMessage(void *a1)
{
  v1 = a1;
  if (objc_msgSend_hasPrefix_(v1, v2, @"[") && (v5 = objc_msgSend_length(v1, v3, v4), v7 = objc_msgSend_rangeOfString_options_range_(v1, v6, @"]", 0, 1, v5 - 1), v8))
  {
    v9 = objc_msgSend_substringFromIndex_(v1, v8, v7 + 1);
  }

  else
  {
    v9 = v1;
  }

  v10 = v9;

  return v10;
}

void _IMLogBacktraceForException(void *a1)
{
  v60 = a1;
  v61 = objc_msgSend_callStackReturnAddresses(v60, v1, v2);
  ClassList = objc_getClassList(0, -1);
  v4 = malloc_type_calloc(8uLL, ClassList, 0x80040B8603338uLL);
  v5 = objc_getClassList(v4, ClassList);
  Mutable = CFArrayCreateMutable(0, 0, 0);
  v7 = CFDictionaryCreateMutable(0, 0, 0, 0);
  v8 = CFDictionaryCreateMutable(0, 0, 0, 0);
  v63 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if (v5 >= 1)
  {
    v9 = 0;
    v10 = v5;
    while (1)
    {
      LODWORD(outCount.dli_fname) = 0;
      v11 = class_copyMethodList(v4[v9], &outCount);
      v12 = v11;
      if (LODWORD(outCount.dli_fname))
      {
        break;
      }

      if (v11)
      {
        goto LABEL_8;
      }

LABEL_9:
      if (++v9 == v10)
      {
        goto LABEL_10;
      }
    }

    v13 = 0;
    do
    {
      Name = method_getName(v12[v13]);
      Implementation = method_getImplementation(v12[v13]);
      CFDictionarySetValue(v7, Implementation, Name);
      CFDictionarySetValue(v8, Implementation, v4[v9]);
      CFArrayAppendValue(Mutable, Implementation);
      ++v13;
    }

    while (v13 < LODWORD(outCount.dli_fname));
LABEL_8:
    free(v12);
    goto LABEL_9;
  }

LABEL_10:
  Count = CFArrayGetCount(Mutable);
  v17 = Count;
  v65.location = 0;
  v65.length = Count;
  CFArraySortValues(Mutable, v65, sub_1959BABC0, 0);
  v18 = v61;
  v21 = objc_msgSend_count(v61, v19, v20);
  if (v21 >= 1)
  {
    v23 = v21;
    v24 = 0;
    v62 = v17;
    do
    {
      memset(&outCount, 0, sizeof(outCount));
      v25 = objc_msgSend_objectAtIndex_(v18, v22, v24);
      v28 = objc_msgSend_integerValue(v25, v26, v27);

      if (!dladdr(v28, &outCount))
      {
        goto LABEL_29;
      }

      v66.location = 0;
      v66.length = v17;
      v30 = CFArrayBSearchValues(Mutable, v66, v28, sub_1959BABC0, 0);
      v32 = v30;
      if (v30 < 0 || (v31 = v30 & 0x7FFFFFFF, v31 >= v17))
      {
        ValueAtIndex = 0;
      }

      else
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v31);
      }

      if (ValueAtIndex != v28)
      {
        if (v32 < 1 || (v31 = (v32 - 1), v31 >= v62))
        {
LABEL_24:
          objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v31, @"%s", outCount.dli_sname, v58);
          goto LABEL_25;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v31);
      }

      if (!ValueAtIndex || v28 - ValueAtIndex >= (v28 - outCount.dli_saddr))
      {
        goto LABEL_24;
      }

      Value = CFDictionaryGetValue(v8, ValueAtIndex);
      v35 = CFDictionaryGetValue(v7, ValueAtIndex);
      v36 = MEMORY[0x1E696AEC0];
      v37 = class_getName(Value);
      v59 = sel_getName(v35);
      v38 = v36;
      v18 = v61;
      objc_msgSend_stringWithFormat_(v38, v39, @"[%s %s]", v37, v59);
      v40 = LABEL_25:;
      v42 = v40;
      if (!outCount.dli_fname || !outCount.dli_sname)
      {

        v17 = v62;
LABEL_29:
        v58 = "???";
        objc_msgSend_appendFormat_(v63, v29, @"%3d. %-24s %lu", v24);
        goto LABEL_30;
      }

      v43 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v41, @"%s", outCount.dli_fname);
      v46 = objc_msgSend_lastPathComponent(v43, v44, v45);
      v47 = v46;
      v58 = objc_msgSend_UTF8String(v47, v48, v49);
      objc_msgSend_appendFormat_(v63, v50, @"%3d. %-24s 0x%08lx %@", v24);

      v18 = v61;
      v17 = v62;
LABEL_30:
      if (v23 != 1)
      {
        objc_msgSend_appendString_(v63, v22, @"\n");
      }

      ++v24;
      --v23;
    }

    while (v23);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  free(v4);
  _IMLog(@"Backtrace:\n%@", v51, v52, v53, v54, v55, v56, v57, v63);
}

uint64_t sub_1959BABC0(unint64_t a1, unint64_t a2)
{
  v2 = 1;
  if (a1 <= a2)
  {
    v2 = -1;
  }

  if (a1 == a2)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

void IMSetBacktraceLogBlock(void *a1)
{
  v1 = a1;
  v4 = qword_1EAED9258;
  v7 = v1;
  if (qword_1EAED9258)
  {
    qword_1EAED9258 = 0;

    v1 = v7;
  }

  if (v1)
  {
    v5 = objc_msgSend_copy(v7, v2, v3);
    v6 = qword_1EAED9258;
    qword_1EAED9258 = v5;

    v1 = v7;
  }
}

void IMSetBacktraceWarnBlock(void *a1)
{
  v1 = a1;
  v4 = qword_1EAED9250;
  v7 = v1;
  if (qword_1EAED9250)
  {
    qword_1EAED9250 = 0;

    v1 = v7;
  }

  if (v1)
  {
    v5 = objc_msgSend_copy(v7, v2, v3);
    v6 = qword_1EAED9250;
    qword_1EAED9250 = v5;

    v1 = v7;
  }
}

uint64_t IMCurrentBacktraceHasSelector(const char *a1)
{
  __b[128] = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(a1);
  v2 = objc_alloc(MEMORY[0x1E695DF70]);
  v4 = objc_msgSend_initWithCapacity_(v2, v3, 128);
  memset(__b, 170, 0x400uLL);
  v5 = backtrace(__b, 128);
  v6 = backtrace_symbols(__b, v5);
  v7 = v6;
  if (v5 >= 2)
  {
    v8 = v5 - 1;
    v9 = (v6 + 1);
    do
    {
      v10 = objc_alloc(MEMORY[0x1E696AEC0]);
      v11 = *v9++;
      v13 = objc_msgSend_initWithUTF8String_(v10, v12, v11);
      objc_msgSend_addObject_(v4, v14, v13);

      --v8;
    }

    while (v8);
  }

  free(v7);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = v4;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v23, v27, 16);
  if (v18)
  {
    v19 = *v24;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v15);
        }

        if (objc_msgSend_rangeOfString_(*(*(&v23 + 1) + 8 * i), v17, v1, v23) != 0x7FFFFFFFFFFFFFFFLL)
        {
          v18 = 1;
          goto LABEL_14;
        }
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v23, v27, 16);
      if (v18)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v21 = *MEMORY[0x1E69E9840];
  return v18;
}

void IMLogGenerateStackshotWithReason(void *a1, uint64_t a2)
{
  v3 = a1;
  if (qword_1EAED89C8 != -1)
  {
    v5 = v3;
    sub_1959D5C88();
    v3 = v5;
  }

  if (off_1EAED89D0)
  {
    v4 = v3;
    if (!v3)
    {
      v3 = @"IMGeneratedStackShot";
    }

    off_1EAED89D0(v3, a2);
    v3 = v4;
  }
}

uint64_t (*sub_1959BAF08())(void, void)
{
  result = IMWeakLinkSymbol();
  off_1EAED89D0 = result;
  return result;
}

void IMLogSimulateCrashForException(void *a1)
{
  v1 = MEMORY[0x1E696AE30];
  v2 = a1;
  v11 = objc_msgSend_processInfo(v1, v3, v4);
  v7 = objc_msgSend_processName(v11, v5, v6);
  v8 = getpid();
  v10 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v9, @"Exception: %@", v2);

  IMLogSimulateCrashForProcessAndPID(v7, v8, v10, 4277006349);
}

void IMLogSimulateCrashForProcessAndPID(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v13 = a1;
  v7 = a3;
  if (objc_msgSend_length(v13, v8, v9))
  {
    if (!objc_msgSend_length(v7, v10, v11))
    {

      v7 = @"None Supplied";
    }

    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v13, @"Simulating crash for %@ from IMLogSimulateCrashForProcess (Reason: %@)", v13, v7);
    if (qword_1EAED8BA8 != -1)
    {
      sub_1959D5C9C();
    }

    if (off_1EAED8BB0)
    {
      off_1EAED8BB0(a2, a4, v12);
    }
  }
}

void IMLogSimulateCrashForProcess(void *a1, void *a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  if (!objc_msgSend_length(v5, v7, v8))
  {
    goto LABEL_12;
  }

  v9 = v5;
  v12 = objc_msgSend_UTF8String(v9, v10, v11);
  *v20 = 0xE00000001;
  v21 = 0;
  v22 = 0;
  size = 0xAAAAAAAAAAAAAAAALL;
  v13 = sysctl(v20, 3u, 0, &size, 0, 0);
  if (!v13)
  {
    v14 = malloc_type_malloc(size, 0x10B2040B74D5165uLL);
    v15 = sysctl(v20, 3u, v14, &size, 0, 0);
    if (v15)
    {
      v13 = v15;
LABEL_5:
      free(v14);
      goto LABEL_13;
    }

    if ((size / 0x288) >= 1)
    {
      v16 = (size / 0x288) & 0x7FFFFFFF;
      v17 = v14 + 243;
      do
      {
        v13 = *(v17 - 203);
        if (v13 >= 1 && !strncmp(v12, v17, 0x10uLL))
        {
          goto LABEL_5;
        }

        v17 += 648;
      }

      while (--v16);
    }

    free(v14);
LABEL_12:
    v13 = 0xFFFFFFFFLL;
  }

LABEL_13:
  IMLogSimulateCrashForProcessAndPID(v5, v13, v6, a3);

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t (*sub_1959BB278())(void, void, void)
{
  result = IMWeakLinkSymbol();
  off_1EAED8BB0 = result;
  return result;
}

void IMPrintf(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = objc_autoreleasePoolPush();
  v11 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13 = objc_msgSend_initWithFormat_arguments_(v11, v12, v9, &a9);
  v14 = v13;
  v17 = objc_msgSend_UTF8String(v14, v15, v16);
  puts(v17);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = v17;
    _os_log_impl(&dword_195988000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  fflush(*MEMORY[0x1E69E9858]);

  objc_autoreleasePoolPop(v10);
  v18 = *MEMORY[0x1E69E9840];
}

void _IMLogForceEnableCategory(void *a1, int a2)
{
  v15 = a1;
  v3 = objc_autoreleasePoolPush();
  if (objc_msgSend_length(v15, v4, v5))
  {
    if (!qword_1EAED9248)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v8 = qword_1EAED9248;
      qword_1EAED9248 = Mutable;
    }

    v9 = qword_1EAED9248;
    if (a2)
    {
      v10 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v6, 1);
      objc_msgSend_setObject_forKey_(v9, v11, v10, v15);
    }

    else
    {
      objc_msgSend_removeObjectForKey_(qword_1EAED9248, v6, v15);
    }

    if (!objc_msgSend_count(qword_1EAED9248, v12, v13))
    {
      v14 = qword_1EAED9248;
      qword_1EAED9248 = 0;
    }
  }

  objc_autoreleasePoolPop(v3);
}

void IMLogRegisterStateToSysdiagnoseBlock(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v7)
  {
    v7 = dispatch_get_global_queue(-32768, 0);
  }

  if (v5 && v7)
  {
    v9 = v5;
    v8 = v6;
    os_state_add_handler();
  }
}

id JWEncodeCodableObject(void *a1, const char *a2)
{
  if (a1)
  {
    a1 = objc_msgSend_archivedDataWithRootObject_(MEMORY[0x1E696AAA0], a2, a1);
    v2 = vars8;
  }

  return a1;
}

id JWDecodeKeyedCodableObject(void *a1)
{
  v1 = a1;
  v4 = v1;
  if (v1 && objc_msgSend_length(v1, v2, v3))
  {
    v5 = objc_alloc(MEMORY[0x1E696ACD0]);
    v7 = objc_msgSend_initForReadingFromData_error_(v5, v6, v4, 0);
    objc_msgSend_setDecodingFailurePolicy_(v7, v8, 0);
    objc_msgSend_setRequiresSecureCoding_(v7, v9, 0);
    v11 = objc_msgSend_decodeObjectForKey_(v7, v10, *MEMORY[0x1E696A508]);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

__CFString *StringGUID()
{
  v0 = CFUUIDCreate(0);
  v1 = CFUUIDCreateString(0, v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

uint64_t jw_string_to_uuid(const char *a1, uint64_t a2)
{
  if (!a1)
  {
    return 22;
  }

  if (strlen(a1) > 0x25)
  {
    return 22;
  }

  v4 = *a1;
  if (!*a1)
  {
    return 22;
  }

  v5 = 0;
  v6 = (a1 + 1);
  v7 = 1;
  result = 22;
  do
  {
    v9 = v4 - 48;
    if ((v4 - 48) < 0xAu)
    {
      goto LABEL_8;
    }

    if ((v4 - 65) <= 5u)
    {
      v9 = v4 - 55;
LABEL_8:
      if (v7)
      {
        goto LABEL_12;
      }

LABEL_9:
      *(a2 + v5++) |= v9;
      v7 = 1;
      goto LABEL_14;
    }

    if ((v4 - 97) <= 5u)
    {
      v9 = v4 - 87;
      if (v7)
      {
LABEL_12:
        v7 = 0;
        *(a2 + v5) = 16 * v9;
        goto LABEL_14;
      }

      goto LABEL_9;
    }

    if (v4 != 45)
    {
      return result;
    }

LABEL_14:
    v10 = *v6++;
    v4 = v10;
  }

  while (v10 && v5 < 16);
  if (v5 == 16)
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

uint64_t jw_cfstring_to_uuid(const __CFString *a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v6[2] = v3;
  v6[3] = v3;
  v6[0] = v3;
  v6[1] = v3;
  if (CFStringGetCString(a1, v6, 64, 0x600u))
  {
    result = jw_string_to_uuid(v6, a2);
  }

  else
  {
    result = 22;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1959BB8FC()
{
  v0 = objc_alloc(MEMORY[0x1E695DEC8]);
  qword_1EAED8DE0 = objc_msgSend_initWithObjects_(v0, v1, @"NSString", @"NSNumber", @"NSArray", @"NSDictionary", @"NSNull", 0);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959BB978()
{
  qword_1ED517138 = objc_alloc_init(MEMORY[0x1E695DEF0]);

  return MEMORY[0x1EEE66BB8]();
}

id sub_1959BB9B4(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v8 = a3;
  if (v5 && objc_msgSend_length(v5, v6, v7))
  {
    if (qword_1EAED9270 != -1)
    {
      sub_1959D5DD8();
    }

    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v11 = v9;
    if (v8)
    {
      objc_msgSend_addObjectsFromArray_(v9, v10, v8);
    }

    if (a2)
    {
      if (objc_msgSend_containsObject_(qword_1EAED9280, v10, a2))
      {
        objc_msgSend_unionSet_(v11, v12, qword_1EAED9278);
      }

      objc_msgSend_addObject_(v11, v12, a2);
    }

    else
    {
      objc_msgSend_unionSet_(v11, v10, qword_1EAED9278);
    }

    v20 = 0;
    v14 = objc_msgSend__strictlyUnarchivedObjectOfClasses_fromData_error_(MEMORY[0x1E696ACD0], v13, v11, v5, &v20);
    v17 = v20;
    if (v17)
    {
      v18 = objc_msgSend_XPC(IMIDSLog, v15, v16);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1959D5DEC(v17, v18);
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t sub_1959BBB24()
{
  v33 = MEMORY[0x1E695DFD8];
  v32 = objc_opt_class();
  v31 = objc_opt_class();
  v30 = objc_opt_class();
  v29 = objc_opt_class();
  v28 = objc_opt_class();
  v27 = objc_opt_class();
  v26 = objc_opt_class();
  v25 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v12 = objc_msgSend_setWithObjects_(v33, v11, v32, v31, v30, v29, v28, v27, v26, v25, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, 0);
  v13 = qword_1EAED9278;
  qword_1EAED9278 = v12;

  v14 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  qword_1EAED9280 = objc_msgSend_setWithObjects_(v14, v23, v15, v16, v17, v18, v19, v20, v21, v22, 0);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t IMRegisterForPreferredAccountChangeNotificationsInternal()
{
  if (qword_1ED517090 != -1)
  {
    sub_1959D5E64();
  }

  return 1;
}

void sub_1959BBDFC()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_1959BBE48, @"__k_IMPreferredAccountForServiceChangedNotificationInternal", 0, CFNotificationSuspensionBehaviorCoalesce);
}

id IMPreferredAccountMap()
{
  if (qword_1ED517090 != -1)
  {
    sub_1959D5E64();
  }

  return IMGetCachedDomainValueForKey(@"com.apple.conference", @"registration.callerIDMap");
}

BOOL IMUpdatePreferredAccountForService(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = v4;
  v11 = objc_msgSend_length(v5, v7, v8);
  if (v11)
  {
    if (objc_msgSend_length(v6, v9, v10))
    {
      v13 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x1E695DF20], v12, v6, @"guid", 0);
    }

    else
    {
      v13 = 0;
    }

    v14 = IMGetCachedDomainValueForKey(@"com.apple.conference", @"registration.callerIDMap");
    Mutable = objc_msgSend_mutableCopy(v14, v15, v16);

    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    if (objc_msgSend_count(v13, v18, v19))
    {
      objc_msgSend_setObject_forKey_(Mutable, v20, v13, v5);
    }

    else
    {
      objc_msgSend_removeObjectForKey_(Mutable, v20, v5);
    }

    IMSetDomainValueForKey(@"com.apple.conference", @"registration.callerIDMap", Mutable);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"__k_IMPreferredAccountForServiceChangedNotificationInternal", 0, 0, 1u);
  }

  return v11 != 0;
}

void sub_1959BC010(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, a3);
  objc_msgSend___mainThreadPostNotificationName_object_(v4, v3, @"__kIMPreferredAccountForServiceChangedNotificationInternal", 0);
}

void sub_1959BC204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1959BC21C(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_airplaneMode(*(*(a1 + 32) + 32), a2, a3);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1959BD734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = OSLogHandleForIDSCategory("Network");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = a2;
    v9 = 2112;
    v10 = a3;
    _os_log_impl(&dword_195988000, v5, OS_LOG_TYPE_DEFAULT, "Received CTServerConnection callback { notification: %@, notificationInfo: %@ }", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1959BED78(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1959BF358;
  v2[3] = &unk_1E7438860;
  v2[4] = a2;
  im_dispatch_after(v2, 0.0);
}

uint64_t (*sub_1959BF0B8())(void)
{
  result = IMWeakLinkSymbol();
  off_1EAED8950 = result;
  return result;
}

id IMLocalizedStringFromTableInBundleForLanguage(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (!objc_msgSend_length(v7, v11, v12))
  {
    goto LABEL_13;
  }

  if (!objc_msgSend_length(v8, v13, v14))
  {
    goto LABEL_13;
  }

  v16 = objc_msgSend_length(v10, v13, v15);
  if (!v9 || !v16)
  {
    goto LABEL_13;
  }

  v18 = objc_msgSend_localizations(v9, v13, v17);
  v20 = objc_msgSend_arrayWithObject_(MEMORY[0x1E695DEC8], v19, v10);
  if (objc_msgSend_count(v18, v21, v22))
  {
    v25 = CFBundleCopyLocalizationsForPreferences(v18, v20);
    v28 = objc_msgSend_count(v25, v26, v27);
  }

  else
  {
    v25 = 0;
    v28 = objc_msgSend_count(0, v23, v24);
  }

  if (v28 && (objc_msgSend___imFirstObject(v25, v29, v30), v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend_pathForResource_ofType_inDirectory_forLocalization_(v9, v32, v8, @"strings", 0, v31), v33 = objc_claimAutoreleasedReturnValue(), v31, v33))
  {
    v35 = objc_msgSend_dictionaryWithContentsOfFile_(MEMORY[0x1E695DF20], v34, v33);
    v37 = objc_msgSend_objectForKey_(v35, v36, v7);
  }

  else
  {
    v37 = 0;
  }

  if (!v37)
  {
LABEL_13:
    v37 = objc_msgSend_localizedStringForKey_value_table_(v9, v13, v7, &stru_1F09D3C40, v8);
  }

  return v37;
}

id IMLocalizedStringFromTableInBundle(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = IMCurrentPreferredLanguage();
  v9 = IMLocalizedStringFromTableInBundleForLanguage(v7, v6, v5, v8);

  return v9;
}

id IMCurrentPreferredLanguage()
{
  if (qword_1EAED8C60 != -1)
  {
    sub_1959D5FC0();
  }

  v1 = qword_1EAED94B0;

  return v1;
}

void sub_1959BF5EC()
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, 0, sub_1959BF644, *MEMORY[0x1E695E6E0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  sub_1959BF64C(0);
}

void sub_1959BF64C(int a1)
{
  v18 = CFPreferencesCopyValue(@"AppleLanguages", *MEMORY[0x1E695E890], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v2 = qword_1EAED94B0;
  v3 = qword_1EAED94B0;
  qword_1EAED94B0 = 0;

  v6 = objc_msgSend___imFirstObject(v18, v4, v5);
  v7 = qword_1EAED94B0;
  qword_1EAED94B0 = v6;

  if (qword_1EAED94B0)
  {
    goto LABEL_3;
  }

  v10 = objc_msgSend_autoupdatingCurrentLocale(MEMORY[0x1E695DF58], v8, v9);
  v12 = objc_msgSend_objectForKey_(v10, v11, *MEMORY[0x1E695D9B0]);
  v13 = qword_1EAED94B0;
  qword_1EAED94B0 = v12;

  if (qword_1EAED94B0)
  {
LABEL_3:
    if (!a1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    qword_1EAED94B0 = @"en";

    if (!a1)
    {
      goto LABEL_8;
    }
  }

  if (qword_1EAED94B0 != v2 && (objc_msgSend_isEqualToString_(v2, v8, qword_1EAED94B0) & 1) == 0)
  {
    v16 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v14, v15);
    objc_msgSend___mainThreadPostNotificationName_object_(v16, v17, @"__kIMCurrentPreferredLanguageChangedNotification", 0);
  }

LABEL_8:
}

uint64_t sub_1959BF7E4()
{
  qword_1ED5175F8 = objc_alloc_init(_IMLogFileCompressor);

  return MEMORY[0x1EEE66BB8]();
}

id IMCreateStringFromDate(unint64_t a1)
{
  if (qword_1EAED9290 != -1)
  {
    sub_1959D5FE8();
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1959968E0;
  v13 = sub_195996ED4;
  v14 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1959BFBF8;
  block[3] = &unk_1E7439810;
  block[4] = &v9;
  dispatch_sync(qword_1EAED9288, block);
  if (a1)
  {
    if (qword_1EAED92B0 != -1)
    {
      sub_1959D5FFC();
    }

    v2 = v10[5];
    v4 = objc_msgSend_stringByAppendingFormat_(v2, v3, @" [%013.06f]", *&qword_1EAED92A8 * a1);
    v5 = v10[5];
    v10[5] = v4;
  }

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void sub_1959BFBA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1959BFBB8()
{
  qword_1EAED9288 = dispatch_queue_create("com.apple.FileLoggingDateQueue", 0);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1959BFBF8(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (qword_1EAED9298)
  {
    v2 = *&qword_1EAED92A0 < 1.0;
  }

  else
  {
    v2 = 1;
  }

  if (v2 || vabdd_f64(floor(CFAbsoluteTimeGetCurrent()), floor(*&qword_1EAED92A0)) > 0.9)
  {
    qword_1EAED92A0 = floor(CFAbsoluteTimeGetCurrent());
    v3 = (*&qword_1EAED92A0 + *MEMORY[0x1E695E468]);
    v10.tm_zone = 0xAAAAAAAAAAAAAAAALL;
    v11 = v3;
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v10.tm_mon = v4;
    *&v10.tm_isdst = v4;
    *&v10.tm_sec = v4;
    *v12 = 0u;
    v13 = 0u;
    localtime_r(&v11, &v10);
    strftime(v12, 0x20uLL, "%Y-%m-%d %X %z", &v10);
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = objc_msgSend_initWithUTF8String_(v5, v6, v12);
    v8 = qword_1EAED9298;
    qword_1EAED9298 = v7;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), qword_1EAED9298);
  v9 = *MEMORY[0x1E69E9840];
}

double sub_1959BFD2C()
{
  info = 0xAAAAAAAAAAAAAAAALL;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  result = v0 / v1 / 1000000000.0;
  qword_1EAED92A8 = *&result;
  return result;
}

void sub_1959BFFD4(uint64_t a1, const char *a2, uint64_t a3)
{
  v7 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], a2, a3);
  v5 = objc_msgSend_processName(v7, v3, v4);
  v6 = qword_1EAED92B8;
  qword_1EAED92B8 = v5;
}

uint64_t sub_1959C00F4(uint64_t a1, const char *a2)
{
  qword_1EAED92D0 = objc_msgSend_stringByAppendingPathComponent_(@"/var/mobile/Library", a2, @"Logs");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1959C03F8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = @"FaceTime";
  }

  v7 = objc_msgSend_logFileDirectory(*(a1 + 56), v4, v5);
  v9 = objc_msgSend_stringByAppendingPathComponent_(v7, v8, v6);

  v12 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v10, v11);
  v14 = objc_msgSend_stringByAppendingPathComponent_(v9, v13, *(a1 + 40));
  if (!sub_1959C07FC(v14) && (objc_msgSend_fileExistsAtPath_(v12, v15, v9) & 1) == 0)
  {
    objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v12, v16, v9, 1, 0, 0);
  }

  v17.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v17.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v77.st_blksize = v17;
  *v77.st_qspare = v17;
  v77.st_birthtimespec = v17;
  *&v77.st_size = v17;
  v77.st_mtimespec = v17;
  v77.st_ctimespec = v17;
  *&v77.st_uid = v17;
  v77.st_atimespec = v17;
  *&v77.st_dev = v17;
  v18 = dword_1EAED92E0++;
  if (v18 >= 1001)
  {
    v19 = v14;
    v22 = objc_msgSend_fileSystemRepresentation(v19, v20, v21);
    if (stat(v22, &v77))
    {
      sub_1959C0858(v14);
      dword_1EAED92E0 = 0;
    }

    else
    {
      dword_1EAED92E0 = 0;
      if (v77.st_size > 10485760)
      {
        v74 = v9;
        v24 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v23, @"%d.zip", 9);
        v26 = objc_msgSend_stringByAppendingPathExtension_(v14, v25, v24);

        v27 = v14;
        if (sub_1959C07FC(v27))
        {
          v28 = sub_1959C08A8(v27);
          close(v28);
          sub_1959C0858(v27);
        }

        if (objc_msgSend_fileExistsAtPath_(v12, v29, v26))
        {
          objc_msgSend_removeItemAtPath_error_(v12, v30, v26, 0);
        }

        v73 = v26;
        v75 = v6;
        v31 = 9;
        do
        {
          v32 = v31 - 1;
          v33 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v30, @"%d.zip", v31 - 1);
          v35 = objc_msgSend_stringByAppendingPathExtension_(v27, v34, v33);

          v37 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v36, @"%d.zip", v31);
          v39 = objc_msgSend_stringByAppendingPathExtension_(v27, v38, v37);

          if (objc_msgSend_fileExistsAtPath_(v12, v40, v35))
          {
            objc_msgSend_moveItemAtPath_toPath_error_(v12, v41, v35, v39, 0);
          }

          v31 = v32;
        }

        while (v32 > 1);
        v43 = objc_msgSend_lastPathComponent(v27, v30, v42);
        v46 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v44, v45);
        v72 = v43;
        v48 = objc_msgSend__randomTemporaryPathWithFileName_(v46, v47, v43);

        v50 = objc_msgSend_stringByAppendingPathExtension_(v27, v49, @"1.zip");
        v76 = 0;
        objc_msgSend_moveItemAtPath_toPath_error_(v12, v51, v27, v48, &v76);
        v54 = objc_msgSend_sharedInstance(_IMLogFileCompressor, v52, v53);
        v71 = v50;
        objc_msgSend_compressPath_toPath_(v54, v55, v48, v50);

        v57 = 10;
        do
        {
          v58 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v56, @"%d", --v57);
          v60 = objc_msgSend_stringByAppendingPathExtension_(v27, v59, v58);

          if (objc_msgSend_fileExistsAtPath_(v12, v61, v60))
          {
            objc_msgSend_removeItemAtPath_error_(v12, v62, v60, 0);
          }
        }

        while (v57 > 1);

        v6 = v75;
        v9 = v74;
      }
    }
  }

  v63 = sub_1959C08A8(v14);
  if (v63 != -1)
  {
    v64 = v63;
    v65 = *(a1 + 48);
    v68 = objc_msgSend_UTF8String(v65, v66, v67);
    v70 = objc_msgSend_lengthOfBytesUsingEncoding_(*(a1 + 48), v69, 4);
    write(v64, v68, v70);
  }

  objc_autoreleasePoolPop(v2);
}

BOOL sub_1959C07FC(void *a1)
{
  v1 = a1;
  if (objc_msgSend_length(v1, v2, v3))
  {
    v5 = objc_msgSend_objectForKey_(qword_1EAED92D8, v4, v1);
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1959C0858(void *a1)
{
  v4 = a1;
  if (objc_msgSend_length(v4, v1, v2))
  {
    objc_msgSend_removeObjectForKey_(qword_1EAED92D8, v3, v4);
  }
}

uint64_t sub_1959C08A8(void *a1)
{
  v1 = a1;
  if (objc_msgSend_length(v1, v2, v3))
  {
    if (qword_1EAED92F8 != -1)
    {
      sub_1959D6060();
    }

    v5 = objc_msgSend_objectForKey_(qword_1EAED92D8, v4, v1);
    if (v5)
    {
      v8 = v5;
      v9 = objc_msgSend_intValue(v5, v6, v7);
    }

    else
    {
      v10 = v1;
      v13 = objc_msgSend_fileSystemRepresentation(v10, v11, v12);
      v9 = open(v13, 521, 384);
      v8 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v14, v9);
      objc_msgSend_setObject_forKey_(qword_1EAED92D8, v15, v8, v1);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_1959C098C()
{
  v0 = dispatch_queue_create("com.apple.IMFileLoggingQueue", 0);
  v1 = qword_1EAED92E8;
  qword_1EAED92E8 = v0;

  v2 = qword_1EAED92E8;
  if (qword_1EAED92E8)
  {
    v3 = dispatch_get_global_queue(-2, 0);
    dispatch_set_target_queue(v2, v3);
  }
}

uint64_t sub_1959C0A1C()
{
  qword_1EAED92D8 = objc_alloc_init(MEMORY[0x1E695DF90]);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959C0C94()
{
  qword_1ED517600 = objc_alloc_init(IMCallMonitor);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t IMInsertOptionallyCodableDictionariesToXPCDictionary(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v33 = *MEMORY[0x1E69E9840];
  v10 = a1;
  v12 = 0;
  if (v10 && a2)
  {
    v29 = &a9;
    v12 = 1;
    *&v11 = 138412290;
    v28 = v11;
    do
    {
      v13 = v29;
      v30 = v29 + 1;
      v14 = *v13;
      v15 = JWEncodeDictionary(v14);
      if (!objc_msgSend_length(v15, v16, v17))
      {
        v20 = JWEncodeKeyedCodableObject(v14);

        v15 = v20;
      }

      if (!objc_msgSend_length(v15, v18, v19, v28))
      {
        v21 = OSLogHandleForIDSCategory("Warning");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v28;
          v32 = v14;
          _os_log_impl(&dword_195988000, v21, OS_LOG_TYPE_DEFAULT, "Failed to encode codable: %@", buf, 0xCu);
        }

        v24 = objc_msgSend_data(MEMORY[0x1E695DEF0], v22, v23);

        v12 = 0;
        v15 = v24;
      }

      sub_19598972C(v15, a2, v10);

      v25 = v30;
      v29 = (v30 + 1);
      a2 = *v25;
    }

    while (*v25);
  }

  v26 = *MEMORY[0x1E69E9840];
  return v12 & 1;
}

id IMGetXPCKeyedCodableFromDictionaryWithSecureCodingAllowedClasses(void *a1, const char *a2, void *a3)
{
  v3 = 0;
  if (a1 && a2)
  {
    v6 = a3;
    v7 = sub_1959897C0(a2, a1, 0);
    v3 = JWDecodeKeyedCodableObjectWithSecureCodingAllowedClasses(v7, v6);
  }

  return v3;
}

int64_t IMGetXPCIntFromDictionary(void *a1, const char *a2)
{
  if (a1 && a2)
  {
    return xpc_dictionary_get_int64(a1, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t IMInsertStringsToXPCDictionary(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a1;
  if (v10)
  {
    v11 = a2 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (!v11)
  {
    v16 = &a9;
    do
    {
      v13 = v16;
      v17 = v16 + 1;
      if (*v13)
      {
        xpc_dictionary_set_string(v10, a2, *v13);
      }

      v14 = v17;
      v16 = v17 + 1;
      a2 = *v14;
    }

    while (*v14);
  }

  return v12;
}

uint64_t IMInsertIntsToXPCDictionary(xpc_object_t xdict, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (xdict)
  {
    v9 = a2 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (!v9)
  {
    v14 = &a9;
    do
    {
      xpc_dictionary_set_int64(xdict, a2, *v14);
      v12 = (v14 + 1);
      v14 += 2;
      a2 = *v12;
    }

    while (*v12);
  }

  return v10;
}

uint64_t IMInsertBoolsToXPCDictionary(xpc_object_t xdict, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (xdict)
  {
    v9 = a2 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (!v9)
  {
    v14 = &a9;
    do
    {
      xpc_dictionary_set_BOOL(xdict, a2, *v14 != 0);
      v12 = (v14 + 1);
      v14 += 2;
      a2 = *v12;
    }

    while (*v12);
  }

  return v10;
}

void IMXPCConfigureConnection(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1959C174C;
  handler[3] = &unk_1E7439868;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v8 = v7;
  v9 = v6;
  v10 = v5;
  xpc_connection_set_event_handler(v10, handler);
  xpc_connection_resume(v10);
}

void sub_1959C174C(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MEMORY[0x19A8BA860]() != MEMORY[0x1E69E9E98])
  {
    v4 = OSLogHandleForIDSCategory("XPC");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      name = xpc_connection_get_name(*(a1 + 32));
      v17 = 136315394;
      v18 = name;
      v19 = 2048;
      v20 = v3;
      _os_log_impl(&dword_195988000, v4, OS_LOG_TYPE_DEFAULT, "Received unexpected event in hander for service %s: %p", &v17, 0x16u);
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      (*(v6 + 16))(v6, v3);
    }

    goto LABEL_6;
  }

  if (v3 == MEMORY[0x1E69E9E18])
  {
    v11 = OSLogHandleForIDSCategory("XPC");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = xpc_connection_get_name(*(a1 + 32));
      v17 = 136315138;
      v18 = v12;
      _os_log_impl(&dword_195988000, v11, OS_LOG_TYPE_DEFAULT, "Interrupted connection to service %s", &v17, 0xCu);
    }

    v13 = *(a1 + 40);
    if (v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v3 != MEMORY[0x1E69E9E20])
    {
      if (v3 == MEMORY[0x1E69E9E38])
      {
        v8 = OSLogHandleForIDSCategory("XPC");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v16 = xpc_connection_get_name(*(a1 + 32));
          v17 = 136315138;
          v18 = v16;
          _os_log_impl(&dword_195988000, v8, OS_LOG_TYPE_DEFAULT, "Imminent connection termination for service %s", &v17, 0xCu);
        }
      }

      else
      {
        v8 = OSLogHandleForIDSCategory("XPC");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = xpc_connection_get_name(*(a1 + 32));
          string = xpc_dictionary_get_string(v3, *MEMORY[0x1E69E9E28]);
          v17 = 136315394;
          v18 = v9;
          v19 = 2080;
          v20 = string;
          _os_log_impl(&dword_195988000, v8, OS_LOG_TYPE_DEFAULT, "Unxpected error for service %s: %s", &v17, 0x16u);
        }
      }

      goto LABEL_6;
    }

    v14 = OSLogHandleForIDSCategory("XPC");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = xpc_connection_get_name(*(a1 + 32));
      v17 = 136315138;
      v18 = v15;
      _os_log_impl(&dword_195988000, v14, OS_LOG_TYPE_DEFAULT, "Connection Invalid error for service %s", &v17, 0xCu);
    }

    v13 = *(a1 + 40);
    if (v13)
    {
LABEL_16:
      (*(v13 + 16))();
    }
  }

LABEL_6:

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1959C1A58(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1959C1818);
  }

  _Unwind_Resume(a1);
}

uint64_t IMXPCCreateSim2HostServerConnection(const char *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = dispatch_get_global_queue(2, 0);
  v11 = sub_19598B108(a1, v10, a2, a3, a4, a5, 1);

  return v11;
}

void sub_1959C1BC4()
{
  v0 = [IMURLRequestSession alloc];
  v7 = objc_msgSend_defaultSessionConfiguration(MEMORY[0x1E696AF80], v1, v2);
  v3 = sub_1959C1C54();
  v5 = objc_msgSend_initWithConfiguration_queue_requiresIDSHost_(v0, v4, v7, v3, 0);
  v6 = qword_1EAED9300;
  qword_1EAED9300 = v5;
}

id sub_1959C1C54()
{
  if (qword_1EAED9328 != -1)
  {
    sub_1959D609C();
  }

  v1 = qword_1EAED9320;

  return v1;
}

void sub_1959C1CDC()
{
  v0 = [IMURLRequestSession alloc];
  v7 = objc_msgSend_defaultSessionConfiguration(MEMORY[0x1E696AF80], v1, v2);
  v3 = sub_1959C1C54();
  v5 = objc_msgSend_initWithConfiguration_queue_requiresIDSHost_(v0, v4, v7, v3, 1);
  v6 = qword_1EAED9310;
  qword_1EAED9310 = v5;
}

void sub_1959C2094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1959C20AC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v16 = a2;
  v7 = a3;
  v8 = a4;
  v13 = objc_msgSend__timingData(*(*(*(a1 + 40) + 8) + 40), v9, v10);
  v14 = *(a1 + 32);
  if (v14)
  {
    v15 = objc_msgSend_statusCode(v7, v11, v12);
    (*(v14 + 16))(v14, v7, v15, v16, v8, v13);
  }
}

void sub_1959C2930(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_sharedInstance(IMLockdownManager, a2, a3);
  isInternalInstall = objc_msgSend_isInternalInstall(v3, v4, v5);

  if (isInternalInstall)
  {
    byte_1ED517660 = 1;
  }
}

void sub_1959C297C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v26 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_URLLoading(IMIDSLog, a2, a3);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (a4 || (v5 & 1) == 0)
  {
    if (v8)
    {
      v20 = *(a1 + 48);
      v22 = 67109634;
      *v23 = v5;
      *&v23[4] = 2112;
      *&v23[6] = a4;
      v24 = 2048;
      v25 = v20;
      _os_log_impl(&dword_195988000, v7, OS_LOG_TYPE_DEFAULT, "SecTrustEvaluateAsyncWithError() failed with result=%d error=%@ {identifier: %llu}", &v22, 0x1Cu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (v8)
    {
      v9 = *(a1 + 48);
      v22 = 134217984;
      *v23 = v9;
      _os_log_impl(&dword_195988000, v7, OS_LOG_TYPE_DEFAULT, "Server trust validation succeeded {identifier: %llu}", &v22, 0xCu);
    }

    v10 = MEMORY[0x1E696AF30];
    v11 = *(a1 + 40);
    v14 = objc_msgSend_protectionSpace(*(a1 + 32), v12, v13);
    v17 = objc_msgSend_serverTrust(v14, v15, v16);
    v19 = objc_msgSend_credentialForTrust_(v10, v18, v17);
    (*(v11 + 16))(v11, 0, v19);
  }

  v21 = *MEMORY[0x1E69E9840];
}

void sub_1959C2B4C()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.IdentityServices.SessionQ", v2);
  v1 = qword_1EAED9320;
  qword_1EAED9320 = v0;
}

uint64_t sub_1959C2BB0()
{
  qword_1EAED8DF0 = os_log_create("com.apple.IDS", "Encryption");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959C2C38()
{
  qword_1EAED8848 = os_log_create("com.apple.IDS", "Daemon");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959C2C7C()
{
  qword_1EAED8838 = os_log_create("com.apple.IDS", "Daemon-oversized");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959C2D04()
{
  qword_1EAED8CF0 = os_log_create("com.apple.IDS", "DataDetector");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959C2D8C()
{
  qword_1EAED8868 = os_log_create("com.apple.IDS", "ActivityMonitor");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959C2DD0()
{
  qword_1EAED86C8 = os_log_create("com.apple.IDS", "Security");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959C2E14()
{
  qword_1ED5171C0 = os_log_create("com.apple.IDS", "URLLoading");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959C2E58()
{
  qword_1EAED8D98 = os_log_create("com.apple.IDS", "timer");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959C2EE0()
{
  qword_1EAED8A70 = os_log_create("com.apple.IDS", "XPC");

  return MEMORY[0x1EEE66BB8]();
}

id IMFormattedPhoneNumberForCFPhoneNumberRef(uint64_t a1)
{
  if (qword_1EAED8AB0 != -1)
  {
    sub_1959D61A0();
  }

  if (qword_1EAED8AA8 == -1)
  {
    if (a1)
    {
      goto LABEL_5;
    }

LABEL_8:
    v2 = 0;
    goto LABEL_9;
  }

  sub_1959D61B4();
  if (!a1)
  {
    goto LABEL_8;
  }

LABEL_5:
  v2 = off_1EAED8AC0(a1);
  if (!v2)
  {
    v2 = off_1EAED8AB8(a1);
  }

LABEL_9:

  return v2;
}

void *sub_1959C2FB4()
{
  result = IMWeakLinkSymbol();
  off_1EAED8AC0 = result;
  return result;
}

void *sub_1959C2FE4()
{
  result = IMWeakLinkSymbol();
  off_1EAED8AB8 = result;
  return result;
}

id IMCountryCodeForNumber(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (qword_1EAED8C88 != -1)
    {
      sub_1959D61C8();
    }

    v2 = off_1EAED8C90(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t (*sub_1959C3088())(void)
{
  result = IMWeakLinkSymbol();
  off_1EAED8C90 = result;
  return result;
}

__CFString *IMUnformattedDisplayStringForIDWithCountryCode(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if (IMStringIsEmail(v5))
  {
    if (a3)
    {
      *a3 = 2;
    }

    v9 = objc_msgSend_lowercaseString(v5, v7, v8);
  }

  else
  {
    if (IMStringIsPhoneNumber(v5))
    {
      if (a3)
      {
        *a3 = 3;
      }

      v10 = IMPhoneNumberRefCopyForPhoneNumber(v5, v6, 0);
      v13 = IMUnformattedPhoneNumberForCFPhoneNumberRef(v10);
      if (v10)
      {
        CFRelease(v10);
      }

      if (objc_msgSend_length(v13, v11, v12))
      {
        v14 = IMCopyStringWithLocalizedNumbers(v13);
        if (objc_msgSend_length(v14, v15, v16))
        {
          v17 = v14;
        }

        else
        {
          v17 = v13;
        }

        v18 = v17;

        goto LABEL_20;
      }
    }

    if (a3)
    {
      *a3 = 0;
    }

    v9 = v5;
  }

  v18 = v9;
LABEL_20:

  return v18;
}

id IMUnformattedNumberForUnformattedNumber(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (qword_1EAED9338 != -1)
    {
      sub_1959D61DC();
    }

    v2 = off_1EAED9330(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t (*sub_1959C3258())(void)
{
  result = IMWeakLinkSymbol();
  off_1EAED9330 = result;
  return result;
}

id IMUnformattedDisplayStringForNumber(void *a1, uint64_t a2)
{
  v3 = a1;
  v6 = v3;
  switch(a2)
  {
    case 3:
      v12 = IMPhoneNumberRefCopyForPhoneNumber(v3, 0, 0);
      v10 = IMUnformattedPhoneNumberForCFPhoneNumberRef(v12);
      if (v12)
      {
        CFRelease(v12);
      }

      break;
    case 2:
      v7 = objc_msgSend_lowercaseString(v3, v4, v5);
      goto LABEL_6;
    case 1:
      v7 = v3;
LABEL_6:
      v10 = v7;
      v11 = objc_msgSend_length(v7, v8, v9);
      goto LABEL_11;
    default:
      v10 = 0;
      break;
  }

  v11 = objc_msgSend_length(v10, v4, v5);
LABEL_11:
  if (v11)
  {
    v13 = v10;
LABEL_13:
    v10 = v13;
    goto LABEL_23;
  }

  if (IMStringIsEmail(v6))
  {
    v13 = objc_msgSend_lowercaseString(v6, v14, v15);
  }

  else
  {
    if (IMStringIsPhoneNumber(v6))
    {
      v18 = IMPhoneNumberRefCopyForPhoneNumber(v6, 0, 0);
      v19 = IMUnformattedPhoneNumberForCFPhoneNumberRef(v18);

      if (v18)
      {
        CFRelease(v18);
      }

      if (objc_msgSend_length(v19, v20, v21))
      {
        v13 = v19;
        goto LABEL_13;
      }

      v10 = v19;
    }

    v13 = objc_msgSend_trimmedString(v6, v16, v17);
  }

LABEL_23:
  v22 = v13;

  return v22;
}

__CFString *IMFormattedDisplayStringForIDWithCountryCode(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if (IMStringIsEmail(v5))
  {
    if (a3)
    {
      *a3 = 2;
    }

    v9 = objc_msgSend_lowercaseString(v5, v7, v8);
    goto LABEL_15;
  }

  if (!IMStringIsPhoneNumber(v5))
  {
    v9 = objc_msgSend_trimmedString(v5, v10, v11);
LABEL_15:
    v18 = v9;
    goto LABEL_16;
  }

  v12 = IMPhoneNumberRefCopyForPhoneNumber(v5, v6, 0);
  v13 = IMFormattedPhoneNumberForCFPhoneNumberRef(v12);
  if (v12)
  {
    CFRelease(v12);
  }

  if (a3)
  {
    *a3 = 3;
  }

  v14 = IMCopyStringWithLocalizedNumbers(v13);
  if (objc_msgSend_length(v14, v15, v16))
  {
    v17 = v14;
  }

  else
  {
    v17 = v13;
  }

  v18 = v17;

LABEL_16:

  return v18;
}

void sub_1959C3DB0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = sub_1959C3EC8;
  v14 = &unk_1E74399D8;
  v15 = a1;
  v5 = v4;
  v16 = v5;
  v6 = &v11;
  if (_os_feature_enabled_impl() && (im_primary_base_queue(), v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = im_primary_queue();
    dispatch_async(v10, v6);
  }

  else if (objc_msgSend_isMainThread(MEMORY[0x1E696AF00], v7, v8, v11, v12))
  {
    v13(v6);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

void sub_1959C3ED4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v16 = sub_1959C401C;
  v17 = &unk_1E7439A00;
  v18 = a1;
  v8 = v6;
  v19 = v8;
  v9 = v7;
  v20 = v9;
  v10 = v15;
  if (_os_feature_enabled_impl() && (im_primary_base_queue(), v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
  {
    v14 = im_primary_queue();
    dispatch_async(v14, v10);
  }

  else if (objc_msgSend_isMainThread(MEMORY[0x1E696AF00], v11, v12))
  {
    (v16)(v10);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v10);
  }
}

void sub_1959C402C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = sub_1959C41A0;
  v22 = &unk_1E7439A28;
  v23 = a1;
  v11 = v8;
  v24 = v11;
  v12 = v9;
  v25 = v12;
  v13 = v10;
  v26 = v13;
  v14 = &v19;
  if (_os_feature_enabled_impl() && (im_primary_base_queue(), v17 = objc_claimAutoreleasedReturnValue(), v17, v17))
  {
    v18 = im_primary_queue();
    dispatch_async(v18, v14);
  }

  else if (objc_msgSend_isMainThread(MEMORY[0x1E696AF00], v15, v16, v19, v20))
  {
    v21(v14);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v14);
  }
}

uint64_t sub_1959C41A0(void *a1)
{
  v1 = a1[6];
  v2 = a1[7];
  return MEMORY[0x1EEE66B58](a1[4], sel_postNotificationName_object_userInfo_, a1[5]);
}

void _IMNotificationObservationHelperHelper(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = a1;
  v11 = [_IMNotificationObservationHelper alloc];
  value = objc_msgSend_initWithObserver_name_object_block_(v11, v12, v10, v9, v8, v7);

  objc_setAssociatedObject(v10, value, value, 0x301);
}

_BYTE *IMFileLocationTrimFileName(_BYTE *result)
{
  if (result)
  {
    v1 = result;
    result = *(result + 1);
    if (!result)
    {
      result = *v1;
      v2 = **v1;
      if (**v1)
      {
        v3 = result + 1;
        do
        {
          if (v2 == 47)
          {
            result = v3;
          }

          v4 = *v3++;
          v2 = v4;
        }

        while (v4);
      }

      v1[1] = result;
    }
  }

  return result;
}

void _IMDebugLog(void *a1)
{
  v1 = qword_1EAED9348;
  v2 = a1;
  v3 = v2;
  if (v1 != -1)
  {
    sub_1959D6258();
    v2 = v3;
  }

  NSLog(&stru_1F09DA940.isa, qword_1EAED9340, v2);
}

void sub_1959C4518(uint64_t a1, const char *a2, uint64_t a3)
{
  v7 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], a2, a3);
  v5 = objc_msgSend_processName(v7, v3, v4);
  v6 = qword_1EAED9340;
  qword_1EAED9340 = v5;
}

__n128 IMPerfMeasurementInit(uint64_t a1, __int128 *a2, __CFString *a3)
{
  if (a1)
  {
    if (a3)
    {
      v5 = a3;
    }

    else
    {
      v5 = &stru_1F09D3C40;
    }

    *(a1 + 56) = CFRetain(v5);
    *(a1 + 40) = ++qword_1EAED9350;
    v7 = *a2;
    result = a2[1];
    *(a1 + 32) = *(a2 + 4);
    *a1 = v7;
    *(a1 + 16) = result;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 64) = 0;
  }

  return result;
}

uint64_t IMPerfMeasurementStart(uint64_t result, const char *a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    *(result + 72) = 0;
    *(result + 80) = 0;
    result = objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], a2, a3);
    *(v3 + 64) = v4;
  }

  return result;
}

uint64_t IMPerfMeasurementInitAndStart(uint64_t result, __int128 *a2, __CFString *a3)
{
  v10 = *a2;
  v11 = a2[1];
  v12 = *(a2 + 4);
  if (result)
  {
    v3 = result;
    if (a3)
    {
      v4 = a3;
    }

    else
    {
      v4 = &stru_1F09D3C40;
    }

    v5 = CFRetain(v4);
    v6 = ++qword_1EAED9350;
    *v3 = v10;
    *(v3 + 16) = v11;
    *(v3 + 32) = v12;
    *(v3 + 40) = v6;
    *(v3 + 56) = v5;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 80) = 0;
    result = objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v7, v8);
    *(v3 + 64) = v9;
  }

  return result;
}

double IMPerfMeasurementStop(double *a1, const char *a2, uint64_t a3)
{
  if (a1)
  {
    objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], a2, a3);
    v5 = result - a1[8];
    a1[9] = result;
    a1[10] = v5;
  }

  return result;
}

void IMPerfMeasurementRelease(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 56) = 0;
    }
  }
}

void IMAVDaemonRequestConnection(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v12 = a4;
  if (qword_1EAED9360 != -1)
  {
    sub_1959D626C();
  }

  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_195996900;
  v44 = sub_195996EE4;
  v13 = objc_msgSend_UTF8String(@"com.apple.imavagent.embedded.auth", v10, v11);
  v45 = IMXPCCreateConnectionForServiceWithQueue(1, 0, v13, qword_1EAED9358, 0, 0);
  v14 = v41[5];
  if (v14)
  {
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1959C4A8C;
    handler[3] = &unk_1E7439A50;
    handler[4] = &v40;
    xpc_connection_set_event_handler(v14, handler);
    xpc_connection_resume(v41[5]);
    v15 = xpc_dictionary_create(0, 0, 0);
    v16 = v15;
    if (v15)
    {
      xpc_dictionary_set_BOOL(v15, "setup-request", 1);
      IMInsertNSStringsToXPCDictionary(v16, "portName", v17, v18, v19, v20, v21, v22, v7);
      if (objc_msgSend_count(v8, v23, v24))
      {
        IMInsertDictionariesToXPCDictionary(v16, "setupInfo", v25, v26, v27, v28, v29, v30, v8);
      }

      v31 = v41[5];
      v32 = dispatch_get_global_queue(2, 0);
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = sub_1959C4A9C;
      v36[3] = &unk_1E7439A78;
      v37 = v12;
      v38 = &v40;
      xpc_connection_send_message_with_reply(v31, v16, v32, v36);

      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = nullsub_4;
      v33[3] = &unk_1E7439AA0;
      v34 = v16;
      v35 = &v40;
      im_dispatch_after(v33, 2.0);
    }
  }

  else if (v12)
  {
    (*(v12 + 2))(v12, 0, 0);
  }

  _Block_object_dispose(&v40, 8);
}

void sub_1959C4A28()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.IMAVDaemonRequestConnectionQueue", v2);
  v1 = qword_1EAED9358;
  qword_1EAED9358 = v0;
}

void sub_1959C4A9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (v3)
  {
    v4 = xpc_dictionary_get_value(v3, "response");
    v5 = IMCreateDictionaryFromXPCObjectWithStandardAllowlist(v4);
    if (!objc_msgSend_count(v5, v6, v7))
    {
      v8 = IMGetXPCCodableFromDictionaryWithStandardAllowlist(v10, "response");

      v5 = v8;
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, *(*(*(a1 + 40) + 8) + 40), v5);
  }
}

void IMDaemonRequestConnectionWithSync(void *a1, void *a2, void *a3, int a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v14 = a5;
  if (qword_1EAED8E08 != -1)
  {
    sub_1959D6280();
  }

  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_195996900;
  v45 = sub_195996EE4;
  v15 = objc_msgSend_UTF8String(@"com.apple.imagent.embedded.auth", v12, v13);
  v46 = IMXPCCreateConnectionForServiceWithQueue(1, 0, v15, qword_1EAED8E10, 0, 0);
  v16 = v42[5];
  if (v16)
  {
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1959C4F14;
    handler[3] = &unk_1E7439A50;
    handler[4] = &v41;
    xpc_connection_set_event_handler(v16, handler);
    xpc_connection_resume(v42[5]);
    v17 = xpc_dictionary_create(0, 0, 0);
    v24 = v17;
    if (v17)
    {
      IMInsertNSStringsToXPCDictionary(v17, "portName", v18, v19, v20, v21, v22, v23, v9);
      IMInsertDictionariesToXPCDictionary(v24, "setupInfo", v25, v26, v27, v28, v29, v30, v10);
      xpc_dictionary_set_BOOL(v24, "setup-request", 1);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_1959C4F24;
      aBlock[3] = &unk_1E7439AC8;
      v39 = &v41;
      v38 = v14;
      v31 = _Block_copy(aBlock);
      v32 = v42[5];
      if (a4)
      {
        v33 = xpc_connection_send_message_with_reply_sync(v42[5], v24);
        v31[2](v31, v33);
      }

      else
      {
        v33 = dispatch_get_global_queue(2, 0);
        xpc_connection_send_message_with_reply(v32, v24, v33, v31);
      }

      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = nullsub_5;
      v34[3] = &unk_1E7439AA0;
      v35 = v24;
      v36 = &v41;
      im_dispatch_after(v34, 2.0);
    }
  }

  else if (v14)
  {
    (*(v14 + 2))(v14, 0, 0);
  }

  _Block_object_dispose(&v41, 8);
}

void sub_1959C4EB0()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.IMDaemonRequestConnectionQueue", v2);
  v1 = qword_1EAED8E10;
  qword_1EAED8E10 = v0;
}

void sub_1959C4F24(uint64_t a1, void *a2)
{
  xdict = a2;
  if (!xdict || MEMORY[0x19A8BA860](xdict) != MEMORY[0x1E69E9E80])
  {
    xpc_connection_cancel(*(*(*(a1 + 40) + 8) + 40));
    v3 = 0;
    v4 = 0;
    v5 = *(a1 + 32);
    if (!v5)
    {
      goto LABEL_10;
    }

LABEL_9:
    (*(v5 + 16))(v5, v4, v3);
    goto LABEL_10;
  }

  v6 = xpc_dictionary_get_value(xdict, "response");
  v3 = IMCreateDictionaryFromXPCObjectWithStandardAllowlist(v6);
  if (!objc_msgSend_count(v3, v7, v8))
  {
    v9 = IMGetXPCCodableFromDictionaryWithStandardAllowlist(xdict, "response");

    v3 = v9;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v4 = *(*(*(a1 + 40) + 8) + 40);
    goto LABEL_9;
  }

LABEL_10:
}

void IMDaemonRequestPlugInConnection(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v12 = a4;
  if (qword_1EAED9370 != -1)
  {
    sub_1959D6294();
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_195996900;
  v41 = sub_195996EE4;
  v13 = objc_msgSend_UTF8String(@"com.apple.imagent.embedded.auth", v10, v11);
  v42 = IMXPCCreateConnectionForServiceWithQueue(1, 0, v13, qword_1EAED9368, 0, 0);
  v14 = v38[5];
  if (v14)
  {
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1959C5354;
    handler[3] = &unk_1E7439A50;
    handler[4] = &v37;
    xpc_connection_set_event_handler(v14, handler);
    xpc_connection_resume(v38[5]);
    v15 = xpc_dictionary_create(0, 0, 0);
    v16 = v15;
    if (v15)
    {
      xpc_dictionary_set_BOOL(v15, "setup-request", 1);
      xpc_dictionary_set_BOOL(v16, "plugin-request", 1);
      IMInsertNSStringsToXPCDictionary(v16, "portName", v17, v18, v19, v20, v21, v22, v7);
      if (objc_msgSend_count(v8, v23, v24))
      {
        IMInsertDictionariesToXPCDictionary(v16, "setupInfo", v25, v26, v27, v28, v29, v30, v8);
      }

      v31 = v38[5];
      v32 = dispatch_get_global_queue(2, 0);
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = sub_1959C5364;
      v33[3] = &unk_1E7439A78;
      v34 = v12;
      v35 = &v37;
      xpc_connection_send_message_with_reply(v31, v16, v32, v33);
    }
  }

  else if (v12)
  {
    (*(v12 + 2))(v12, 0, 0);
  }

  _Block_object_dispose(&v37, 8);
}

void sub_1959C52D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1959C52F0()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.IMDaemonPlugInRequestConnectionQueue", v2);
  v1 = qword_1EAED9368;
  qword_1EAED9368 = v0;
}

void sub_1959C5364(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (v3)
  {
    v4 = xpc_dictionary_get_value(v3, "response");
    v5 = IMCreateDictionaryFromXPCObjectWithStandardAllowlist(v4);
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, *(*(*(a1 + 40) + 8) + 40), v5);
  }
}

id IMRKAttributedTokenTypeKey()
{
  if (qword_1EAED8B88 != -1)
  {
    sub_1959D62A8();
  }

  v1 = qword_1EAED8B90;

  return v1;
}

void sub_1959C544C()
{
  v0 = IMWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;

    objc_storeStrong(&qword_1EAED8B90, v1);
  }
}

id IMRKAttributedTokenPhotosharingType()
{
  if (qword_1EAED8B98 != -1)
  {
    sub_1959D62BC();
  }

  v1 = qword_1EAED8BA0;

  return v1;
}

void sub_1959C54E0()
{
  v0 = IMWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;

    objc_storeStrong(&qword_1EAED8BA0, v1);
  }
}

uint64_t sub_1959C558C()
{
  result = IMWeakLinkClass();
  qword_1EAED8AF0 = result;
  return result;
}

uint64_t sub_1959C5650()
{
  result = IMWeakLinkClass();
  qword_1EAED9378 = result;
  return result;
}

const void *IMSharedResourcesDirectory()
{
  pthread_mutex_lock(&stru_1EAED7DA0);
  v0 = geteuid();
  if (!v0)
  {
    v0 = getuid();
  }

  if (qword_1EAED8DB0)
  {
    Value = CFDictionaryGetValue(qword_1EAED8DB0, v0);
    if (Value)
    {
      goto LABEL_13;
    }
  }

  else
  {
    qword_1EAED8DB0 = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
  }

  pw_dir = getenv("IPHONE_SHARED_RESOURCES_DIRECTORY");
  if (pw_dir || (v3 = getpwuid(v0)) != 0 && (pw_dir = v3->pw_dir) != 0)
  {
    Value = CFStringCreateWithFileSystemRepresentation(0, pw_dir);
    if (Value)
    {
      CFDictionarySetValue(qword_1EAED8DB0, v0, Value);
      CFRelease(Value);
    }
  }

  else
  {
    Value = 0;
  }

LABEL_13:
  pthread_mutex_unlock(&stru_1EAED7DA0);
  return Value;
}

uint64_t IMResetCachedCarrierSettings()
{
  result = CFPreferencesSynchronize(@"com.apple.carrier", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  dword_1EAED7D04 = -1;
  dword_1EAED7CF8 = -1;
  dword_1EAED860C = -1;
  dword_1EAED8610 = -1;
  dword_1EAED7CF4 = -1;
  dword_1EAED7D08 = -1;
  return result;
}

uint64_t IMSMSEnabled()
{
  v0 = IMWeakLinkClass();
  v3 = objc_msgSend_sharedInstance(v0, v1, v2);
  v6 = objc_msgSend_supportsSMS(v3, v4, v5);

  return v6;
}

const __CFString *IMSMSFallbackEnabled()
{
  v0 = IMSharedResourcesDirectory();
  result = CFStringCreateWithFormat(0, 0, @"%@/Library/Preferences/%@", v0, @"com.apple.MobileSMS");
  if (result)
  {
    v2 = result;
    v3 = IMGetDomainBoolForKeyWithDefaultValue(result, @"SendAsSMS", 0);
    CFRelease(v2);
    return v3;
  }

  return result;
}

uint64_t IMMMSMaximumSlideCount()
{
  if (qword_1ED5170A0 != -1)
  {
    sub_1959D62F8();
  }

  if (!qword_1EAED8E00)
  {
    return 0;
  }

  v0 = dword_1EAED7CF4;
  if (dword_1EAED7CF4 == -1)
  {
    dword_1EAED7CF4 = 0x7FFFFFFF;
    v1 = CFPreferencesCopyAppValue(@"MMS", @"com.apple.carrier");
    if (v1)
    {
      v2 = v1;
      valuePtr = 0;
      Value = CFDictionaryGetValue(v1, @"MaxSlidesPerMessage");
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
      }

      CFRelease(v2);
      if (valuePtr >= 1)
      {
        dword_1EAED7CF4 = valuePtr;
      }
    }

    sub_1959C5A40();
    return dword_1EAED7CF4;
  }

  return v0;
}

BOOL IMMMSEnabled()
{
  if (qword_1ED5170A0 != -1)
  {
    sub_1959D62F8();
  }

  return qword_1EAED8E00 != 0;
}

void sub_1959C5A40()
{
  if ((byte_1EAED8C39 & 1) == 0)
  {
    byte_1EAED8C39 = 1;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v2 = *MEMORY[0x1E6965280];

    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_1959C93F0, v2, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

uint64_t IMMMSMaximumSlideDuration()
{
  if (qword_1ED5170A0 != -1)
  {
    sub_1959D62F8();
  }

  if (!qword_1EAED8E00)
  {
    return 0;
  }

  v0 = CFPreferencesCopyAppValue(@"MMS", @"com.apple.carrier");
  if (!v0)
  {
    return 0x7FFFFFFFLL;
  }

  v1 = v0;
  valuePtr = 0;
  Value = CFDictionaryGetValue(v0, @"MaxSMILDuration");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  }

  CFRelease(v1);
  if (valuePtr <= 0)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return valuePtr;
  }
}

uint64_t IMMMSMaximumMessageByteCount(uint64_t a1, const char *a2, uint64_t a3)
{
  if (qword_1ED5170A0 != -1)
  {
    sub_1959D62F8();
  }

  if (!qword_1EAED8E00)
  {
    return 0x7FFFFFFFLL;
  }

  if (qword_1EAED8C08 != -1)
  {
    sub_1959D630C();
  }

  v3 = objc_msgSend_sharedInstance(qword_1EAED8C10, a2, a3);
  v6 = objc_msgSend_deviceType(v3, v4, v5);

  if (v6 == 2)
  {
    if (dword_1EAED7D08 != -1)
    {
      return dword_1EAED7D08;
    }

    dword_1EAED7D08 = 0x100000;
    v7 = CFPreferencesCopyAppValue(@"MMS", @"com.apple.mms_override");
    v8 = v7;
    if (!v7 || !CFDictionaryGetValue(v7, @"MaxMessageSize"))
    {
      v20 = CFPreferencesCopyAppValue(@"MMS", @"com.apple.carrier");
      if (v20)
      {
        v21 = v20;
        Value = CFDictionaryGetValue(v20, @"MaxMessageSize");
        v25 = 0;
        if (Value)
        {
          CFNumberGetValue(Value, kCFNumberIntType, &v25);
        }

        CFRelease(v21);
        if (v25 >= 1)
        {
          dword_1EAED7D08 = v25;
        }
      }

      sub_1959C5A40();
      if (!v8)
      {
        return dword_1EAED7D08;
      }

      goto LABEL_32;
    }

    v9 = CFDictionaryGetValue(v8, @"MaxMessageSize");
    valuePtr = 0;
    if (v9)
    {
      v10 = v9;
      v11 = CFGetTypeID(v9);
      if (v11 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v10, kCFNumberIntType, &valuePtr);
        IntValue = valuePtr;
        goto LABEL_30;
      }

      v23 = CFGetTypeID(v10);
      if (v23 == CFStringGetTypeID())
      {
        IntValue = CFStringGetIntValue(v10);
LABEL_30:
        if (IntValue >= 1)
        {
          dword_1EAED7D08 = IntValue;
        }
      }
    }

LABEL_32:
    CFRelease(v8);
    return dword_1EAED7D08;
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory("MMS Max Size");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_195988000, v14, OS_LOG_TYPE_INFO, "We are a relay device, returning 2 Megabytes", buf, 2u);
    }
  }

  IMLogString();
  if (_IMWillLog(@"MMS Max Size"))
  {
    _IMAlwaysLog(0, @"MMS Max Size", @"We are a relay device, returning 2 Megabytes", v15, v16, v17, v18, v19, v24);
  }

  return 0x200000;
}