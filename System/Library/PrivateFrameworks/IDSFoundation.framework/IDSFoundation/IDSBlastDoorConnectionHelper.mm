@interface IDSBlastDoorConnectionHelper
+ (id)getBlastDoorSharedConnection;
- (BOOL)commandEnabledForBlastDoor:(id)a3 topic:(id)a4;
- (BOOL)removeAllowlistedKey:(id)a3 fromPayload:(id)a4;
- (IDSBlastDoorConnectionHelper)init;
- (void)addAllowlistedKey:(id)a3 toValidatedPayload:(id)a4 fromOriginalPayload:(id)a5;
- (void)auditMissingHeaderKeys:(id)a3 target:(id)a4;
- (void)diffuseAPSUserPayload:(id)a3 topic:(id)a4 withCompletionBlock:(id)a5;
- (void)diffuseClientMessage:(id)a3 context:(id)a4 withCompletionBlock:(id)a5;
- (void)writeBlastDoorPayloadToDiskIfNecessary:(id)a3 withContext:(id)a4;
@end

@implementation IDSBlastDoorConnectionHelper

+ (id)getBlastDoorSharedConnection
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A7B24960;
  block[3] = &unk_1E77DD328;
  block[4] = a1;
  if (qword_1EB2B8600 != -1)
  {
    dispatch_once(&qword_1EB2B8600, block);
  }

  v2 = qword_1EB2B8608;

  return v2;
}

- (IDSBlastDoorConnectionHelper)init
{
  v5.receiver = self;
  v5.super_class = IDSBlastDoorConnectionHelper;
  v2 = [(IDSBlastDoorConnectionHelper *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(CUTWeakLinkClass());
    [(IDSBlastDoorConnectionHelper *)v2 setIdsBlastDoor:v3];
  }

  return v2;
}

- (void)diffuseAPSUserPayload:(id)a3 topic:(id)a4 withCompletionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v19 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_DEFAULT, "BlastDoor: Disabled for framing messages", buf, 2u);
    }

    if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
    {
      goto LABEL_16;
    }

    v20 = @"BlastDoor: Disabled for framing messages";
    goto LABEL_15;
  }

  if (!self->_idsBlastDoor || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v21 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v21, OS_LOG_TYPE_DEFAULT, "BlastDoor: Blastdoor object is null or does not respond to selector", buf, 2u);
    }

    if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
    {
      goto LABEL_16;
    }

    v20 = @"BlastDoor: Blastdoor object is null or does not respond to selector";
LABEL_15:
    _IDSLogV(0, @"IDSFoundation", @"IDSBlastDoorConnectionHelper", v20);
LABEL_16:
    (*(v10 + 2))(v10, v8, 0, 0);
    goto LABEL_17;
  }

  v11 = objc_opt_class();
  v12 = sub_1A7B0A094(v11, v8, @"c");
  v13 = [(IDSBlastDoorConnectionHelper *)self commandEnabledForBlastDoor:v12 topic:v9];

  v14 = [v8 mutableCopy];
  v15 = [(IDSBlastDoorConnectionHelper *)self removeAllowlistedKey:@"i" fromPayload:v14];
  v16 = [(IDSBlastDoorConnectionHelper *)self removeAllowlistedKey:@"i" fromPayload:v14];
  idsBlastDoor = self->_idsBlastDoor;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_1A7B24D20;
  v22[3] = &unk_1E77DD350;
  v27 = v13;
  v23 = v8;
  v25 = self;
  v26 = v10;
  v28 = v15;
  v24 = v14;
  v29 = v16;
  v18 = v14;
  [idsBlastDoor unpackPayloadDictionary:v18 resultHandler:v22];

LABEL_17:
}

- (void)diffuseClientMessage:(id)a3 context:(id)a4 withCompletionBlock:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v9 dictionaryRepresentation];
    *buf = 138412290;
    v20 = v12;
    _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "Sending with context %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v16 = [v9 dictionaryRepresentation];
    _IDSLogV(0, @"IDSFoundation", @"IDSBlastDoorConnectionHelper", @"Sending with context %@");
  }

  [(IDSBlastDoorConnectionHelper *)self writeBlastDoorPayloadToDiskIfNecessary:v8 withContext:v9, v16];
  idsBlastDoor = self->_idsBlastDoor;
  v14 = [v9 dictionaryRepresentation];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1A7B251D4;
  v17[3] = &unk_1E77DD3A0;
  v18 = v10;
  v15 = v10;
  [idsBlastDoor unpackClientMessage:v8 context:v14 resultHandler:v17];
}

- (BOOL)removeAllowlistedKey:(id)a3 fromPayload:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKey:v6];
  if (v8 && ([v6 isEqualToString:@"i"] && ((v9 = objc_opt_class(), (objc_msgSend(v9, "isSubclassOfClass:", objc_opt_class()) & 1) != 0) || (v10 = objc_opt_class(), (objc_msgSend(v10, "isSubclassOfClass:", objc_opt_class()) & 1) != 0)) || objc_msgSend(v6, "isEqualToString:", @"b") && ((v11 = objc_opt_class(), (objc_msgSend(v11, "isSubclassOfClass:", objc_opt_class()) & 1) != 0) || (v12 = objc_opt_class(), objc_msgSend(v12, "isSubclassOfClass:", objc_opt_class())))))
  {
    [v7 removeObjectForKey:v6];
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  v26 = v8;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v29 = [&unk_1F1B20AE0 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v29)
  {
    v27 = v7;
    v28 = *v36;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(&unk_1F1B20AE0);
        }

        v15 = *(*(&v35 + 1) + 8 * i);
        v16 = [v7 objectForKey:v15];

        if (v16)
        {
          v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v18 = objc_opt_class();
          v30 = v15;
          v19 = sub_1A7B0A094(v18, v7, v15);
          v20 = [v19 countByEnumeratingWithState:&v31 objects:v39 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v32;
            do
            {
              for (j = 0; j != v21; ++j)
              {
                if (*v32 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = [*(*(&v31 + 1) + 8 * j) mutableCopy];
                v13 |= [(IDSBlastDoorConnectionHelper *)self removeAllowlistedKey:v6 fromPayload:v24];
                [v17 addObject:v24];
              }

              v21 = [v19 countByEnumeratingWithState:&v31 objects:v39 count:16];
            }

            while (v21);
          }

          v7 = v27;
          [v27 setObject:v17 forKey:v30];
        }
      }

      v29 = [&unk_1F1B20AE0 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v29);
  }

  return v13 & 1;
}

- (void)addAllowlistedKey:(id)a3 toValidatedPayload:(id)a4 fromOriginalPayload:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 objectForKey:v8];
  if (v11)
  {
    [v9 setObject:v11 forKey:v8];
  }

  v25 = v11;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = [&unk_1F1B20AF8 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v27)
  {
    v26 = *v29;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v29 != v26)
        {
          objc_enumerationMutation(&unk_1F1B20AF8);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        v14 = [v10 objectForKey:v13];

        if (v14)
        {
          v15 = objc_opt_class();
          v16 = sub_1A7B0A094(v15, v10, v13);
          v17 = objc_opt_class();
          v18 = v9;
          v19 = sub_1A7B0A094(v17, v9, v13);
          if ([v16 count])
          {
            v20 = 0;
            do
            {
              v21 = [v16 objectAtIndexedSubscript:v20];
              v22 = [v21 objectForKey:v8];

              if (v22)
              {
                v23 = [v19 objectAtIndex:v20];
                v24 = [v16 objectAtIndex:v20];
                [(IDSBlastDoorConnectionHelper *)self addAllowlistedKey:v8 toValidatedPayload:v23 fromOriginalPayload:v24];
              }

              ++v20;
            }

            while ([v16 count] > v20);
          }

          v9 = v18;
        }
      }

      v27 = [&unk_1F1B20AF8 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v27);
  }
}

- (void)auditMissingHeaderKeys:(id)a3 target:(id)a4
{
  v5 = MEMORY[0x1E695DFD8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 alloc];
  v9 = [v6 allKeys];

  v10 = [v8 initWithArray:v9];
  v11 = objc_alloc(MEMORY[0x1E695DFA8]);
  v12 = [v7 allKeys];

  v13 = [v11 initWithArray:v12];
  [v13 minusSet:v10];
  if ([v13 count])
  {
    v14 = [MEMORY[0x1E69A60E0] daemon];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_1A7E11FF4(v13, v14);
    }
  }
}

- (BOOL)commandEnabledForBlastDoor:(id)a3 topic:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v6 isEqualToString:@"com.apple.sps.push"])
  {
LABEL_3:
    v8 = _os_feature_enabled_impl();
  }

  else
  {
    v7 = [v5 intValue];
    switch(v7)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 32:
      case 34:
      case 64:
      case 66:
      case 90:
      case 91:
      case 92:
      case 96:
      case 97:
      case 109:
      case 110:
      case 111:
      case 112:
      case 113:
      case 115:
      case 116:
      case 117:
      case 118:
      case 119:
      case 120:
      case 121:
      case 122:
      case 123:
      case 124:
      case 125:
      case 126:
      case 127:
      case 128:
      case 129:
      case 130:
      case 131:
      case 132:
      case 133:
      case 134:
      case 135:
      case 139:
      case 140:
      case 141:
      case 142:
      case 143:
      case 144:
      case 145:
      case 146:
      case 147:
      case 148:
      case 149:
      case 150:
      case 151:
      case 152:
      case 153:
      case 154:
      case 155:
      case 160:
      case 165:
      case 170:
      case 180:
      case 181:
      case 182:
      case 190:
      case 195:
      case 196:
      case 200:
      case 201:
      case 221:
      case 222:
      case 223:
      case 224:
      case 225:
      case 228:
      case 229:
      case 250:
      case 251:
      case 255:
        goto LABEL_3;
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
      case 33:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
      case 59:
      case 60:
      case 61:
      case 62:
      case 63:
      case 65:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 80:
      case 81:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 93:
      case 94:
      case 95:
      case 98:
      case 99:
      case 103:
      case 114:
      case 136:
      case 137:
      case 138:
      case 156:
      case 157:
      case 158:
      case 159:
      case 161:
      case 162:
      case 163:
      case 164:
      case 166:
      case 167:
      case 168:
      case 169:
      case 171:
      case 172:
      case 173:
      case 174:
      case 175:
      case 176:
      case 177:
      case 178:
      case 179:
      case 183:
      case 184:
      case 185:
      case 186:
      case 187:
      case 188:
      case 189:
      case 191:
      case 192:
      case 193:
      case 194:
      case 197:
      case 198:
      case 199:
      case 202:
      case 203:
      case 204:
      case 205:
      case 212:
      case 213:
      case 214:
      case 215:
      case 216:
      case 217:
      case 218:
      case 219:
      case 220:
      case 226:
      case 230:
      case 231:
      case 240:
      case 241:
      case 252:
      case 253:
        goto LABEL_8;
      case 100:
      case 101:
      case 102:
      case 104:
      case 105:
      case 106:
      case 107:
      case 108:
      case 206:
      case 207:
      case 208:
      case 209:
      case 210:
      case 211:
      case 227:
      case 232:
      case 233:
      case 234:
      case 235:
      case 236:
      case 237:
      case 238:
      case 239:
      case 242:
      case 243:
      case 244:
      case 245:
      case 246:
      case 247:
      case 248:
      case 249:
      case 254:
        if ((_os_feature_enabled_impl() & 1) == 0)
        {
          goto LABEL_3;
        }

        goto LABEL_6;
      default:
        if (v7 == 315)
        {
          goto LABEL_3;
        }

LABEL_8:
        v10 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v12 = v5;
          _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "BlastDoor: Command {%@} not handled in switch case, defaulting to NO", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"commandEnabledForBlastDoor", @"BlastDoor: Command {%@} not handled in switch case, defaulting to NO");
        }

LABEL_6:
        v8 = 1;
        break;
    }
  }

  return v8;
}

- (void)writeBlastDoorPayloadToDiskIfNecessary:(id)a3 withContext:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (CUTIsInternalInstall() && [MEMORY[0x1E69A6180] isWriteBlastDoorPayloadsToDiskEnabled])
  {
    v7 = [MEMORY[0x1E69A6180] writePushPayloadsToDiskPath];

    if (v7)
    {
      v8 = [MEMORY[0x1E69A6180] writePushPayloadsToDiskPath];
    }

    else
    {
      v8 = @"/var/mobile/Library/IdentityServices/";
    }

    v9 = MEMORY[0x1E696AEC0];
    v10 = [v6 command];
    v11 = [MEMORY[0x1E696AFB0] UUID];
    v12 = [v11 UUIDString];
    v13 = [v9 stringWithFormat:@"%@-client-payload-%@.data", v10, v12];

    v14 = MEMORY[0x1E695DFF8];
    v15 = [(__CFString *)v8 stringByAppendingPathComponent:v13];
    v16 = [v14 fileURLWithPath:v15];

    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v16 absoluteString];
      *buf = 138412546;
      v33 = v18;
      v34 = 2112;
      v35 = v5;
      _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "Writing BlastDoor payload to disk: {%@} message: %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v27 = [v16 absoluteString];
      v28 = v5;
      _IDSLogV(0, @"IDSFoundation", @"IDSPushHandler", @"Writing BlastDoor payload to disk: {%@} message: %@");
    }

    v31 = 0;
    v19 = [MEMORY[0x1E696AE40] dataWithPropertyList:v5 format:200 options:0 error:{&v31, v27, v28}];
    v20 = v31;
    if (v19)
    {
      v21 = [MEMORY[0x1E696AC08] defaultManager];
      v22 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/var/mobile/Library/IdentityServices/" isDirectory:1];
      v30 = v20;
      [v21 createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:0 error:&v30];
      v23 = v30;

      v29 = v23;
      LODWORD(v21) = [v19 writeToURL:v16 options:1 error:&v29];
      v20 = v29;

      if (v21)
      {
        v24 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v24, OS_LOG_TYPE_DEFAULT, "Write to disk: Successful", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"IDSPushHandler", @"Write to disk: Successful");
        }
      }

      else
      {
        v26 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v33 = v20;
          _os_log_impl(&dword_1A7AD9000, v26, OS_LOG_TYPE_DEFAULT, "Write to disk: Unsuccessful with error: %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"IDSPushHandler", @"Write to disk: Unsuccessful with error: %@");
        }
      }
    }

    else
    {
      v25 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v33 = v20;
        _os_log_impl(&dword_1A7AD9000, v25, OS_LOG_TYPE_DEFAULT, "Error while serializing BlastDoor payload %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"IDSPushHandler", @"Error while serializing BlastDoor payload %@");
      }
    }
  }
}

@end