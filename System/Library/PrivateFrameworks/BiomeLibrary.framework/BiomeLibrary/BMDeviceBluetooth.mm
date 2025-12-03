@interface BMDeviceBluetooth
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMDeviceBluetooth)initWithAddress:(id)address name:(id)name productID:(id)d starting:(id)starting deviceType:(int)type batteryLevelHeadphoneCase:(id)case batteryLevelHeadphoneRight:(id)right batteryLevelHeadphoneLeft:(id)self0 appleAudioDevice:(id)self1 userWearing:(id)self2 vendorID:(id)self3;
- (BMDeviceBluetooth)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMDeviceBluetooth

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDeviceBluetooth *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

+ (id)columns
{
  v16[11] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"address" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"name" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"productID" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:2 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"starting" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceType" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"batteryLevelHeadphoneCase" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:2 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"batteryLevelHeadphoneRight" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:2 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"batteryLevelHeadphoneLeft" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:2 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"appleAudioDevice" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:12 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userWearing" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:12 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"vendorID" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:4 convertedType:0];
  v16[0] = v2;
  v16[1] = v3;
  v16[2] = v4;
  v16[3] = v5;
  v16[4] = v6;
  v16[5] = v14;
  v16[6] = v7;
  v16[7] = v8;
  v16[8] = v15;
  v16[9] = v9;
  v16[10] = v10;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:11];

  v11 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    address = [(BMDeviceBluetooth *)self address];
    address2 = [v5 address];
    v8 = address2;
    if (address == address2)
    {
    }

    else
    {
      address3 = [(BMDeviceBluetooth *)self address];
      address4 = [v5 address];
      v11 = [address3 isEqual:address4];

      if (!v11)
      {
        goto LABEL_52;
      }
    }

    name = [(BMDeviceBluetooth *)self name];
    name2 = [v5 name];
    v15 = name2;
    if (name == name2)
    {
    }

    else
    {
      name3 = [(BMDeviceBluetooth *)self name];
      name4 = [v5 name];
      v18 = [name3 isEqual:name4];

      if (!v18)
      {
        goto LABEL_52;
      }
    }

    if (!-[BMDeviceBluetooth hasProductID](self, "hasProductID") && ![v5 hasProductID] || -[BMDeviceBluetooth hasProductID](self, "hasProductID") && objc_msgSend(v5, "hasProductID") && (v19 = -[BMDeviceBluetooth productID](self, "productID"), v19 == objc_msgSend(v5, "productID")))
    {
      if (!-[BMDeviceBluetooth hasStarting](self, "hasStarting") && ![v5 hasStarting] || -[BMDeviceBluetooth hasStarting](self, "hasStarting") && objc_msgSend(v5, "hasStarting") && (v20 = -[BMDeviceBluetooth starting](self, "starting"), v20 == objc_msgSend(v5, "starting")))
      {
        deviceType = [(BMDeviceBluetooth *)self deviceType];
        if (deviceType == [v5 deviceType])
        {
          if (!-[BMDeviceBluetooth hasBatteryLevelHeadphoneCase](self, "hasBatteryLevelHeadphoneCase") && ![v5 hasBatteryLevelHeadphoneCase] || -[BMDeviceBluetooth hasBatteryLevelHeadphoneCase](self, "hasBatteryLevelHeadphoneCase") && objc_msgSend(v5, "hasBatteryLevelHeadphoneCase") && (v22 = -[BMDeviceBluetooth batteryLevelHeadphoneCase](self, "batteryLevelHeadphoneCase"), v22 == objc_msgSend(v5, "batteryLevelHeadphoneCase")))
          {
            if (!-[BMDeviceBluetooth hasBatteryLevelHeadphoneRight](self, "hasBatteryLevelHeadphoneRight") && ![v5 hasBatteryLevelHeadphoneRight] || -[BMDeviceBluetooth hasBatteryLevelHeadphoneRight](self, "hasBatteryLevelHeadphoneRight") && objc_msgSend(v5, "hasBatteryLevelHeadphoneRight") && (v23 = -[BMDeviceBluetooth batteryLevelHeadphoneRight](self, "batteryLevelHeadphoneRight"), v23 == objc_msgSend(v5, "batteryLevelHeadphoneRight")))
            {
              if (!-[BMDeviceBluetooth hasBatteryLevelHeadphoneLeft](self, "hasBatteryLevelHeadphoneLeft") && ![v5 hasBatteryLevelHeadphoneLeft] || -[BMDeviceBluetooth hasBatteryLevelHeadphoneLeft](self, "hasBatteryLevelHeadphoneLeft") && objc_msgSend(v5, "hasBatteryLevelHeadphoneLeft") && (v24 = -[BMDeviceBluetooth batteryLevelHeadphoneLeft](self, "batteryLevelHeadphoneLeft"), v24 == objc_msgSend(v5, "batteryLevelHeadphoneLeft")))
              {
                if (!-[BMDeviceBluetooth hasAppleAudioDevice](self, "hasAppleAudioDevice") && ![v5 hasAppleAudioDevice] || -[BMDeviceBluetooth hasAppleAudioDevice](self, "hasAppleAudioDevice") && objc_msgSend(v5, "hasAppleAudioDevice") && (v25 = -[BMDeviceBluetooth appleAudioDevice](self, "appleAudioDevice"), v25 == objc_msgSend(v5, "appleAudioDevice")))
                {
                  if (!-[BMDeviceBluetooth hasUserWearing](self, "hasUserWearing") && ![v5 hasUserWearing] || -[BMDeviceBluetooth hasUserWearing](self, "hasUserWearing") && objc_msgSend(v5, "hasUserWearing") && (v26 = -[BMDeviceBluetooth userWearing](self, "userWearing"), v26 == objc_msgSend(v5, "userWearing")))
                  {
                    if (!-[BMDeviceBluetooth hasVendorID](self, "hasVendorID") && ![v5 hasVendorID])
                    {
                      v12 = 1;
                      goto LABEL_53;
                    }

                    if (-[BMDeviceBluetooth hasVendorID](self, "hasVendorID") && [v5 hasVendorID])
                    {
                      vendorID = [(BMDeviceBluetooth *)self vendorID];
                      v12 = vendorID == [v5 vendorID];
LABEL_53:

                      goto LABEL_54;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_52:
    v12 = 0;
    goto LABEL_53;
  }

  v12 = 0;
LABEL_54:

  return v12;
}

- (id)jsonDictionary
{
  v40[11] = *MEMORY[0x1E69E9840];
  address = [(BMDeviceBluetooth *)self address];
  name = [(BMDeviceBluetooth *)self name];
  if ([(BMDeviceBluetooth *)self hasProductID])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceBluetooth productID](self, "productID")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMDeviceBluetooth *)self hasStarting])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceBluetooth starting](self, "starting")}];
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceBluetooth deviceType](self, "deviceType")}];
  if ([(BMDeviceBluetooth *)self hasBatteryLevelHeadphoneCase])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceBluetooth batteryLevelHeadphoneCase](self, "batteryLevelHeadphoneCase")}];
  }

  else
  {
    v8 = 0;
  }

  if ([(BMDeviceBluetooth *)self hasBatteryLevelHeadphoneRight])
  {
    v38 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceBluetooth batteryLevelHeadphoneRight](self, "batteryLevelHeadphoneRight")}];
  }

  else
  {
    v38 = 0;
  }

  if ([(BMDeviceBluetooth *)self hasBatteryLevelHeadphoneLeft])
  {
    v37 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceBluetooth batteryLevelHeadphoneLeft](self, "batteryLevelHeadphoneLeft")}];
  }

  else
  {
    v37 = 0;
  }

  if ([(BMDeviceBluetooth *)self hasAppleAudioDevice])
  {
    v36 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceBluetooth appleAudioDevice](self, "appleAudioDevice")}];
  }

  else
  {
    v36 = 0;
  }

  if ([(BMDeviceBluetooth *)self hasUserWearing])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceBluetooth userWearing](self, "userWearing")}];
  }

  else
  {
    v9 = 0;
  }

  if ([(BMDeviceBluetooth *)self hasVendorID])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceBluetooth vendorID](self, "vendorID")}];
  }

  else
  {
    v10 = 0;
  }

  v39[0] = @"address";
  null = address;
  if (!address)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v30 = null;
  v40[0] = null;
  v39[1] = @"name";
  null2 = name;
  if (!name)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = null2;
  v40[1] = null2;
  v39[2] = @"productID";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = address;
  v28 = null3;
  v40[2] = null3;
  v39[3] = @"starting";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = name;
  v27 = null4;
  v40[3] = null4;
  v39[4] = @"deviceType";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = v5;
  v26 = null5;
  v40[4] = null5;
  v39[5] = @"batteryLevelHeadphoneCase";
  null6 = v8;
  if (!v8)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v6;
  v40[5] = null6;
  v39[6] = @"batteryLevelHeadphoneRight";
  null7 = v38;
  if (!v38)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v7;
  v40[6] = null7;
  v39[7] = @"batteryLevelHeadphoneLeft";
  null8 = v37;
  if (!v37)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v8;
  v40[7] = null8;
  v39[8] = @"appleAudioDevice";
  null9 = v36;
  if (!v36)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v40[8] = null9;
  v39[9] = @"userWearing";
  null10 = v9;
  if (!v9)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v40[9] = null10;
  v39[10] = @"vendorID";
  null11 = v10;
  if (!v10)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v40[10] = null11;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:11];
  if (v10)
  {
    if (v9)
    {
      goto LABEL_49;
    }
  }

  else
  {

    if (v9)
    {
      goto LABEL_49;
    }
  }

LABEL_49:
  if (!v36)
  {
  }

  if (!v37)
  {
  }

  if (!v38)
  {
  }

  if (!v20)
  {
  }

  if (!v18)
  {
  }

  if (!v32)
  {
  }

  if (v33)
  {
    if (v34)
    {
      goto LABEL_63;
    }

LABEL_70:

    if (v35)
    {
      goto LABEL_64;
    }

    goto LABEL_71;
  }

  if (!v34)
  {
    goto LABEL_70;
  }

LABEL_63:
  if (v35)
  {
    goto LABEL_64;
  }

LABEL_71:

LABEL_64:
  v24 = *MEMORY[0x1E69E9840];

  return v31;
}

- (BMDeviceBluetooth)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v135[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"address"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
LABEL_4:
    v8 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v9 = 0;
          v18 = 0;
          goto LABEL_69;
        }

        v104 = v6;
        errorCopy = error;
        v20 = objc_alloc(MEMORY[0x1E696ABC0]);
        v21 = *MEMORY[0x1E698F240];
        v132 = *MEMORY[0x1E696A578];
        v110 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"name"];
        v133 = v110;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v133 forKeys:&v132 count:1];
        v23 = v21;
        v10 = v22;
        v9 = 0;
        v18 = 0;
        *errorCopy = [v20 initWithDomain:v23 code:2 userInfo:v22];
        v6 = v104;
        goto LABEL_68;
      }

      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"productID"];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v110 = 0;
          v18 = 0;
          goto LABEL_68;
        }

        v111 = objc_alloc(MEMORY[0x1E696ABC0]);
        v105 = v6;
        errorCopy2 = error;
        v25 = *MEMORY[0x1E698F240];
        v130 = *MEMORY[0x1E696A578];
        v26 = v9;
        v27 = objc_alloc(MEMORY[0x1E696AEC0]);
        v85 = objc_opt_class();
        v28 = v27;
        v9 = v26;
        v29 = [v28 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v85, @"productID"];
        v131 = v29;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v131 forKeys:&v130 count:1];
        error = v29;
        v31 = [v111 initWithDomain:v25 code:2 userInfo:v30];
        v110 = 0;
        v18 = 0;
        *errorCopy2 = v31;
        v6 = v105;
LABEL_67:

LABEL_68:
        goto LABEL_69;
      }

      v109 = v7;
      v11 = v8;
      v110 = v10;
    }

    else
    {
      v109 = v7;
      v110 = 0;
      v11 = v8;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"starting"];
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v18 = 0;
          v30 = v12;
          v8 = v11;
          goto LABEL_66;
        }

        errorCopy3 = error;
        v32 = objc_alloc(MEMORY[0x1E696ABC0]);
        v91 = v10;
        v33 = *MEMORY[0x1E698F240];
        v128 = *MEMORY[0x1E696A578];
        v34 = v9;
        v35 = objc_alloc(MEMORY[0x1E696AEC0]);
        v86 = objc_opt_class();
        v36 = v35;
        v9 = v34;
        v108 = [v36 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v86, @"starting"];
        v129 = v108;
        v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v129 forKeys:&v128 count:1];
        v30 = v12;
        v38 = v33;
        v10 = v91;
        v39 = [v32 initWithDomain:v38 code:2 userInfo:v37];
        error = 0;
        v18 = 0;
        *errorCopy3 = v39;
        v8 = v11;
        v13 = v37;
LABEL_65:

LABEL_66:
        v7 = v109;
        goto LABEL_67;
      }

      v101 = v12;
      v107 = v12;
    }

    else
    {
      v101 = v12;
      v107 = 0;
    }

    [dictionaryCopy objectForKeyedSubscript:@"deviceType"];
    v13 = v8 = v11;
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v103 = v6;
      errorCopy4 = error;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v108 = v13;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v108 = 0;
            v18 = 0;
            v6 = v103;
            error = v107;
            v30 = v101;
            goto LABEL_65;
          }

          v76 = objc_alloc(MEMORY[0x1E696ABC0]);
          v77 = *MEMORY[0x1E698F240];
          v126 = *MEMORY[0x1E696A578];
          v78 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"deviceType"];
          v127 = v78;
          v102 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
          v79 = [v76 initWithDomain:v77 code:2 userInfo:?];
          v108 = 0;
          v18 = 0;
          *errorCopy4 = v79;
          v40 = v78;
          v6 = v103;
          goto LABEL_101;
        }

        v108 = [MEMORY[0x1E696AD98] numberWithInt:BMDeviceBluetoothDeviceTypeFromString(v13)];
      }

      v6 = v103;
    }

    else
    {
      v108 = 0;
    }

    v40 = [dictionaryCopy objectForKeyedSubscript:@"batteryLevelHeadphoneCase"];
    errorCopy5 = error;
    v102 = v40;
    if (!v40)
    {
      v100 = v9;
      goto LABEL_43;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v100 = v9;
      v40 = 0;
      goto LABEL_43;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v100 = v9;
      v40 = v40;
LABEL_43:
      v41 = [dictionaryCopy objectForKeyedSubscript:@"batteryLevelHeadphoneRight"];
      v95 = v40;
      v99 = v41;
      if (!v41 || (v42 = v41, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v106 = 0;
        goto LABEL_46;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v106 = v42;
LABEL_46:
        v43 = [dictionaryCopy objectForKeyedSubscript:@"batteryLevelHeadphoneLeft"];
        v90 = v13;
        v93 = v43;
        if (!v43 || (v44 = v43, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v98 = 0;
LABEL_49:
          v45 = [dictionaryCopy objectForKeyedSubscript:@"appleAudioDevice"];
          v92 = v10;
          if (v45 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!error)
              {
                v94 = 0;
                v18 = 0;
                v9 = v100;
                goto LABEL_61;
              }

              selfCopy4 = self;
              v73 = objc_alloc(MEMORY[0x1E696ABC0]);
              v74 = *MEMORY[0x1E698F240];
              v118 = *MEMORY[0x1E696A578];
              v48 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"appleAudioDevice"];
              v119 = v48;
              v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
              v75 = v74;
              v9 = v100;
              v94 = 0;
              v18 = 0;
              *errorCopy5 = [v73 initWithDomain:v75 code:2 userInfo:v46];
              goto LABEL_60;
            }

            v94 = v45;
          }

          else
          {
            v94 = 0;
          }

          v46 = [dictionaryCopy objectForKeyedSubscript:@"userWearing"];
          if (v46 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              selfCopy4 = self;
              v9 = v100;
              if (!errorCopy5)
              {
                v48 = 0;
                v18 = 0;
                goto LABEL_60;
              }

              v80 = objc_alloc(MEMORY[0x1E696ABC0]);
              v81 = *MEMORY[0x1E698F240];
              v116 = *MEMORY[0x1E696A578];
              v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"userWearing"];
              v117 = v50;
              v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
              v82 = [v80 initWithDomain:v81 code:2 userInfo:v49];
              v48 = 0;
              v18 = 0;
              *errorCopy5 = v82;
              goto LABEL_59;
            }

            selfCopy4 = self;
            v48 = v46;
          }

          else
          {
            selfCopy4 = self;
            v48 = 0;
          }

          v49 = [dictionaryCopy objectForKeyedSubscript:@"vendorID"];
          if (v49 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (errorCopy5)
              {
                v113 = objc_alloc(MEMORY[0x1E696ABC0]);
                v89 = *MEMORY[0x1E698F240];
                v114 = *MEMORY[0x1E696A578];
                v83 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"vendorID"];
                v115 = v83;
                v84 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
                *errorCopy5 = [v113 initWithDomain:v89 code:2 userInfo:v84];
              }

              v50 = 0;
              v18 = 0;
              goto LABEL_59;
            }

            v50 = v49;
          }

          else
          {
            v50 = 0;
          }

          v18 = -[BMDeviceBluetooth initWithAddress:name:productID:starting:deviceType:batteryLevelHeadphoneCase:batteryLevelHeadphoneRight:batteryLevelHeadphoneLeft:appleAudioDevice:userWearing:vendorID:](selfCopy4, "initWithAddress:name:productID:starting:deviceType:batteryLevelHeadphoneCase:batteryLevelHeadphoneRight:batteryLevelHeadphoneLeft:appleAudioDevice:userWearing:vendorID:", v109, v100, v110, v107, [v108 intValue], v95, v106, v98, v94, v48, v50);
          selfCopy4 = v18;
LABEL_59:

          v9 = v100;
LABEL_60:
          self = selfCopy4;

          v10 = v92;
          v40 = v95;
LABEL_61:

          v30 = v101;
          error = v107;
          v13 = v90;
LABEL_62:

LABEL_63:
LABEL_64:

          goto LABEL_65;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v98 = v44;
          goto LABEL_49;
        }

        if (error)
        {
          v68 = v10;
          v69 = objc_alloc(MEMORY[0x1E696ABC0]);
          v70 = *MEMORY[0x1E698F240];
          v120 = *MEMORY[0x1E696A578];
          v94 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"batteryLevelHeadphoneLeft"];
          v121 = v94;
          v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v121 forKeys:&v120 count:1];
          v71 = v69;
          v10 = v68;
          v40 = v95;
          v72 = v70;
          v9 = v100;
          v98 = 0;
          v18 = 0;
          *error = [v71 initWithDomain:v72 code:2 userInfo:v45];
          goto LABEL_61;
        }

        v98 = 0;
        v18 = 0;
        v9 = v100;
        v30 = v101;
LABEL_105:
        error = v107;
        goto LABEL_62;
      }

      if (error)
      {
        v61 = objc_alloc(MEMORY[0x1E696ABC0]);
        v62 = v10;
        v63 = *MEMORY[0x1E698F240];
        v122 = *MEMORY[0x1E696A578];
        v64 = objc_alloc(MEMORY[0x1E696AEC0]);
        v88 = objc_opt_class();
        v65 = v64;
        v9 = v100;
        v98 = [v65 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v88, @"batteryLevelHeadphoneRight"];
        v123 = v98;
        v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v123 forKeys:&v122 count:1];
        v67 = v63;
        v10 = v62;
        v40 = v95;
        v93 = v66;
        v106 = 0;
        v18 = 0;
        *errorCopy5 = [v61 initWithDomain:v67 code:2 userInfo:?];
        v30 = v101;
        goto LABEL_105;
      }

      v106 = 0;
      v18 = 0;
      v9 = v100;
      v30 = v101;
LABEL_103:
      error = v107;
      goto LABEL_63;
    }

    if (error)
    {
      v53 = objc_alloc(MEMORY[0x1E696ABC0]);
      v54 = v10;
      v55 = *MEMORY[0x1E698F240];
      v124 = *MEMORY[0x1E696A578];
      v56 = v9;
      v57 = objc_alloc(MEMORY[0x1E696AEC0]);
      v87 = objc_opt_class();
      v58 = v57;
      v9 = v56;
      v106 = [v58 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v87, @"batteryLevelHeadphoneCase"];
      v125 = v106;
      v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v125 forKeys:&v124 count:1];
      v60 = v55;
      v10 = v54;
      v99 = v59;
      v40 = 0;
      v18 = 0;
      *errorCopy5 = [v53 initWithDomain:v60 code:2 userInfo:?];
      v30 = v101;
      goto LABEL_103;
    }

    v40 = 0;
    v18 = 0;
LABEL_101:
    v30 = v101;
    error = v107;
    goto LABEL_64;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    goto LABEL_4;
  }

  if (!error)
  {
    v7 = 0;
    v18 = 0;
    goto LABEL_70;
  }

  errorCopy6 = error;
  v16 = objc_alloc(MEMORY[0x1E696ABC0]);
  v17 = *MEMORY[0x1E698F240];
  v134 = *MEMORY[0x1E696A578];
  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"address"];
  v135[0] = v9;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v135 forKeys:&v134 count:1];
  v7 = 0;
  v18 = 0;
  *errorCopy6 = [v16 initWithDomain:v17 code:2 userInfo:v8];
LABEL_69:

LABEL_70:
  v51 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_address)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasProductID)
  {
    productID = self->_productID;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasStarting)
  {
    starting = self->_starting;
    PBDataWriterWriteBOOLField();
  }

  deviceType = self->_deviceType;
  PBDataWriterWriteUint32Field();
  if (self->_hasBatteryLevelHeadphoneCase)
  {
    batteryLevelHeadphoneCase = self->_batteryLevelHeadphoneCase;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasBatteryLevelHeadphoneRight)
  {
    batteryLevelHeadphoneRight = self->_batteryLevelHeadphoneRight;
    PBDataWriterWriteInt32Field();
  }

  v9 = toCopy;
  if (self->_hasBatteryLevelHeadphoneLeft)
  {
    batteryLevelHeadphoneLeft = self->_batteryLevelHeadphoneLeft;
    PBDataWriterWriteInt32Field();
    v9 = toCopy;
  }

  if (self->_hasAppleAudioDevice)
  {
    appleAudioDevice = self->_appleAudioDevice;
    PBDataWriterWriteBOOLField();
    v9 = toCopy;
  }

  if (self->_hasUserWearing)
  {
    userWearing = self->_userWearing;
    PBDataWriterWriteBOOLField();
    v9 = toCopy;
  }

  if (self->_hasVendorID)
  {
    vendorID = self->_vendorID;
    PBDataWriterWriteUint32Field();
    v9 = toCopy;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v81.receiver = self;
  v81.super_class = BMDeviceBluetooth;
  v5 = [(BMEventBase *)&v81 init];
  if (!v5)
  {
    goto LABEL_153;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_151;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v82 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v82 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v82 & 0x7F) << v7;
        if ((v82 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        v13 = v8++ >= 9;
        if (v13)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        goto LABEL_151;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 5)
      {
        break;
      }

      if (v15 <= 2)
      {
        if (v15 == 1)
        {
          v36 = PBReaderReadString();
          v37 = 56;
        }

        else
        {
          if (v15 != 2)
          {
LABEL_116:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_152;
            }

            goto LABEL_150;
          }

          v36 = PBReaderReadString();
          v37 = 64;
        }

        v38 = *(&v5->super.super.isa + v37);
        *(&v5->super.super.isa + v37) = v36;
      }

      else
      {
        if (v15 == 3)
        {
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v5->_hasProductID = 1;
          while (1)
          {
            v82 = 0;
            v61 = [fromCopy position] + 1;
            if (v61 >= [fromCopy position] && (v62 = objc_msgSend(fromCopy, "position") + 1, v62 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v82 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v60 |= (v82 & 0x7F) << v58;
            if ((v82 & 0x80) == 0)
            {
              break;
            }

            v58 += 7;
            v13 = v59++ >= 9;
            if (v13)
            {
              v22 = 0;
              goto LABEL_133;
            }
          }

          if ([fromCopy hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v60;
          }

LABEL_133:
          v77 = 32;
LABEL_146:
          *(&v5->super.super.isa + v77) = v22;
          goto LABEL_150;
        }

        if (v15 == 4)
        {
          v39 = 0;
          v40 = 0;
          v41 = 0;
          v5->_hasStarting = 1;
          while (1)
          {
            v82 = 0;
            v42 = [fromCopy position] + 1;
            if (v42 >= [fromCopy position] && (v43 = objc_msgSend(fromCopy, "position") + 1, v43 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v82 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v41 |= (v82 & 0x7F) << v39;
            if ((v82 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v13 = v40++ >= 9;
            if (v13)
            {
              LOBYTE(v45) = 0;
              goto LABEL_119;
            }
          }

          v45 = (v41 != 0) & ~[fromCopy hasError];
LABEL_119:
          v76 = 17;
          goto LABEL_149;
        }

        if (v15 != 5)
        {
          goto LABEL_116;
        }

        v23 = 0;
        v24 = 0;
        v25 = 0;
        while (1)
        {
          v82 = 0;
          v26 = [fromCopy position] + 1;
          if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v82 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v25 |= (v82 & 0x7F) << v23;
          if ((v82 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          if (v24++ > 8)
          {
            goto LABEL_128;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v25 > 0x32)
        {
LABEL_128:
          LODWORD(v25) = 0;
        }

        v5->_deviceType = v25;
      }

LABEL_150:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_151;
      }
    }

    if (v15 > 8)
    {
      if (v15 == 9)
      {
        v70 = 0;
        v71 = 0;
        v72 = 0;
        v5->_hasAppleAudioDevice = 1;
        while (1)
        {
          v82 = 0;
          v73 = [fromCopy position] + 1;
          if (v73 >= [fromCopy position] && (v74 = objc_msgSend(fromCopy, "position") + 1, v74 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v82 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v72 |= (v82 & 0x7F) << v70;
          if ((v82 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v13 = v71++ >= 9;
          if (v13)
          {
            LOBYTE(v45) = 0;
            goto LABEL_148;
          }
        }

        v45 = (v72 != 0) & ~[fromCopy hasError];
LABEL_148:
        v76 = 22;
        goto LABEL_149;
      }

      if (v15 == 10)
      {
        v52 = 0;
        v53 = 0;
        v54 = 0;
        v5->_hasUserWearing = 1;
        while (1)
        {
          v82 = 0;
          v55 = [fromCopy position] + 1;
          if (v55 >= [fromCopy position] && (v56 = objc_msgSend(fromCopy, "position") + 1, v56 <= objc_msgSend(fromCopy, "length")))
          {
            data6 = [fromCopy data];
            [data6 getBytes:&v82 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v54 |= (v82 & 0x7F) << v52;
          if ((v82 & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v13 = v53++ >= 9;
          if (v13)
          {
            LOBYTE(v45) = 0;
            goto LABEL_125;
          }
        }

        v45 = (v54 != 0) & ~[fromCopy hasError];
LABEL_125:
        v76 = 24;
LABEL_149:
        *(&v5->super.super.isa + v76) = v45;
        goto LABEL_150;
      }

      if (v15 != 11)
      {
        goto LABEL_116;
      }

      v30 = 0;
      v31 = 0;
      v32 = 0;
      v5->_hasVendorID = 1;
      while (1)
      {
        v82 = 0;
        v33 = [fromCopy position] + 1;
        if (v33 >= [fromCopy position] && (v34 = objc_msgSend(fromCopy, "position") + 1, v34 <= objc_msgSend(fromCopy, "length")))
        {
          data7 = [fromCopy data];
          [data7 getBytes:&v82 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v32 |= (v82 & 0x7F) << v30;
        if ((v82 & 0x80) == 0)
        {
          break;
        }

        v30 += 7;
        v13 = v31++ >= 9;
        if (v13)
        {
          v22 = 0;
          goto LABEL_141;
        }
      }

      if ([fromCopy hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v32;
      }

LABEL_141:
      v77 = 52;
    }

    else
    {
      switch(v15)
      {
        case 6:
          v64 = 0;
          v65 = 0;
          v66 = 0;
          v5->_hasBatteryLevelHeadphoneCase = 1;
          while (1)
          {
            v82 = 0;
            v67 = [fromCopy position] + 1;
            if (v67 >= [fromCopy position] && (v68 = objc_msgSend(fromCopy, "position") + 1, v68 <= objc_msgSend(fromCopy, "length")))
            {
              data8 = [fromCopy data];
              [data8 getBytes:&v82 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v66 |= (v82 & 0x7F) << v64;
            if ((v82 & 0x80) == 0)
            {
              break;
            }

            v64 += 7;
            v13 = v65++ >= 9;
            if (v13)
            {
              v22 = 0;
              goto LABEL_145;
            }
          }

          if ([fromCopy hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v66;
          }

LABEL_145:
          v77 = 40;
          break;
        case 7:
          v46 = 0;
          v47 = 0;
          v48 = 0;
          v5->_hasBatteryLevelHeadphoneRight = 1;
          while (1)
          {
            v82 = 0;
            v49 = [fromCopy position] + 1;
            if (v49 >= [fromCopy position] && (v50 = objc_msgSend(fromCopy, "position") + 1, v50 <= objc_msgSend(fromCopy, "length")))
            {
              data9 = [fromCopy data];
              [data9 getBytes:&v82 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v48 |= (v82 & 0x7F) << v46;
            if ((v82 & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            v13 = v47++ >= 9;
            if (v13)
            {
              v22 = 0;
              goto LABEL_123;
            }
          }

          if ([fromCopy hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v48;
          }

LABEL_123:
          v77 = 44;
          break;
        case 8:
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v5->_hasBatteryLevelHeadphoneLeft = 1;
          while (1)
          {
            v82 = 0;
            v19 = [fromCopy position] + 1;
            if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
            {
              data10 = [fromCopy data];
              [data10 getBytes:&v82 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v18 |= (v82 & 0x7F) << v16;
            if ((v82 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v13 = v17++ >= 9;
            if (v13)
            {
              v22 = 0;
              goto LABEL_137;
            }
          }

          if ([fromCopy hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_137:
          v77 = 48;
          break;
        default:
          goto LABEL_116;
      }
    }

    goto LABEL_146;
  }

LABEL_151:
  if ([fromCopy hasError])
  {
LABEL_152:
    v79 = 0;
  }

  else
  {
LABEL_153:
    v79 = v5;
  }

  return v79;
}

- (NSString)description
{
  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  address = [(BMDeviceBluetooth *)self address];
  name = [(BMDeviceBluetooth *)self name];
  v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceBluetooth productID](self, "productID")}];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceBluetooth starting](self, "starting")}];
  v4 = BMDeviceBluetoothDeviceTypeAsString([(BMDeviceBluetooth *)self deviceType]);
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceBluetooth batteryLevelHeadphoneCase](self, "batteryLevelHeadphoneCase")}];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceBluetooth batteryLevelHeadphoneRight](self, "batteryLevelHeadphoneRight")}];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceBluetooth batteryLevelHeadphoneLeft](self, "batteryLevelHeadphoneLeft")}];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceBluetooth appleAudioDevice](self, "appleAudioDevice")}];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceBluetooth userWearing](self, "userWearing")}];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceBluetooth vendorID](self, "vendorID")}];
  v16 = [v15 initWithFormat:@"BMDeviceBluetooth with address: %@, name: %@, productID: %@, starting: %@, deviceType: %@, batteryLevelHeadphoneCase: %@, batteryLevelHeadphoneRight: %@, batteryLevelHeadphoneLeft: %@, appleAudioDevice: %@, userWearing: %@, vendorID: %@", address, name, v12, v3, v4, v5, v6, v7, v8, v9, v10];

  return v16;
}

- (BMDeviceBluetooth)initWithAddress:(id)address name:(id)name productID:(id)d starting:(id)starting deviceType:(int)type batteryLevelHeadphoneCase:(id)case batteryLevelHeadphoneRight:(id)right batteryLevelHeadphoneLeft:(id)self0 appleAudioDevice:(id)self1 userWearing:(id)self2 vendorID:(id)self3
{
  addressCopy = address;
  nameCopy = name;
  nameCopy2 = name;
  dCopy = d;
  startingCopy = starting;
  caseCopy = case;
  v21 = startingCopy;
  rightCopy = right;
  leftCopy = left;
  deviceCopy = device;
  wearingCopy = wearing;
  iDCopy = iD;
  v39.receiver = self;
  v39.super_class = BMDeviceBluetooth;
  v27 = [(BMEventBase *)&v39 init];
  if (v27)
  {
    v27->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v27->_address, address);
    objc_storeStrong(&v27->_name, nameCopy);
    if (dCopy)
    {
      v27->_hasProductID = 1;
      intValue = [dCopy intValue];
    }

    else
    {
      v27->_hasProductID = 0;
      intValue = -1;
    }

    v27->_productID = intValue;
    if (v21)
    {
      v27->_hasStarting = 1;
      v27->_starting = [v21 BOOLValue];
    }

    else
    {
      v27->_hasStarting = 0;
      v27->_starting = 0;
    }

    v27->_deviceType = type;
    if (caseCopy)
    {
      v27->_hasBatteryLevelHeadphoneCase = 1;
      intValue2 = [caseCopy intValue];
    }

    else
    {
      v27->_hasBatteryLevelHeadphoneCase = 0;
      intValue2 = -1;
    }

    v27->_batteryLevelHeadphoneCase = intValue2;
    if (rightCopy)
    {
      v27->_hasBatteryLevelHeadphoneRight = 1;
      intValue3 = [rightCopy intValue];
    }

    else
    {
      v27->_hasBatteryLevelHeadphoneRight = 0;
      intValue3 = -1;
    }

    v27->_batteryLevelHeadphoneRight = intValue3;
    if (leftCopy)
    {
      v27->_hasBatteryLevelHeadphoneLeft = 1;
      intValue4 = [leftCopy intValue];
    }

    else
    {
      v27->_hasBatteryLevelHeadphoneLeft = 0;
      intValue4 = -1;
    }

    v27->_batteryLevelHeadphoneLeft = intValue4;
    if (deviceCopy)
    {
      v27->_hasAppleAudioDevice = 1;
      v27->_appleAudioDevice = [deviceCopy BOOLValue];
    }

    else
    {
      v27->_hasAppleAudioDevice = 0;
      v27->_appleAudioDevice = 0;
    }

    if (wearingCopy)
    {
      v27->_hasUserWearing = 1;
      v27->_userWearing = [wearingCopy BOOLValue];
    }

    else
    {
      v27->_hasUserWearing = 0;
      v27->_userWearing = 0;
    }

    if (iDCopy)
    {
      v27->_hasVendorID = 1;
      unsignedIntValue = [iDCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v27->_hasVendorID = 0;
    }

    v27->_vendorID = unsignedIntValue;
  }

  return v27;
}

+ (id)protoFields
{
  v16[11] = *MEMORY[0x1E69E9840];
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"address" number:1 type:13 subMessageClass:0];
  v16[0] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"name" number:2 type:13 subMessageClass:0];
  v16[1] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"productID" number:3 type:2 subMessageClass:0];
  v16[2] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"starting" number:4 type:12 subMessageClass:0];
  v16[3] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceType" number:5 type:4 subMessageClass:0];
  v16[4] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"batteryLevelHeadphoneCase" number:6 type:2 subMessageClass:0];
  v16[5] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"batteryLevelHeadphoneRight" number:7 type:2 subMessageClass:0];
  v16[6] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"batteryLevelHeadphoneLeft" number:8 type:2 subMessageClass:0];
  v16[7] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appleAudioDevice" number:9 type:12 subMessageClass:0];
  v16[8] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userWearing" number:10 type:12 subMessageClass:0];
  v16[9] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"vendorID" number:11 type:4 subMessageClass:0];
  v16[10] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:11];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMDeviceBluetooth alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[7] = 0;
    }
  }

  return v4;
}

@end