@interface BMDeviceBluetooth
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMDeviceBluetooth)initWithAddress:(id)a3 name:(id)a4 productID:(id)a5 starting:(id)a6 deviceType:(int)a7 batteryLevelHeadphoneCase:(id)a8 batteryLevelHeadphoneRight:(id)a9 batteryLevelHeadphoneLeft:(id)a10 appleAudioDevice:(id)a11 userWearing:(id)a12 vendorID:(id)a13;
- (BMDeviceBluetooth)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMDeviceBluetooth

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDeviceBluetooth *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMDeviceBluetooth *)self address];
    v7 = [v5 address];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMDeviceBluetooth *)self address];
      v10 = [v5 address];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_52;
      }
    }

    v13 = [(BMDeviceBluetooth *)self name];
    v14 = [v5 name];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMDeviceBluetooth *)self name];
      v17 = [v5 name];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_52;
      }
    }

    if (!-[BMDeviceBluetooth hasProductID](self, "hasProductID") && ![v5 hasProductID] || -[BMDeviceBluetooth hasProductID](self, "hasProductID") && objc_msgSend(v5, "hasProductID") && (v19 = -[BMDeviceBluetooth productID](self, "productID"), v19 == objc_msgSend(v5, "productID")))
    {
      if (!-[BMDeviceBluetooth hasStarting](self, "hasStarting") && ![v5 hasStarting] || -[BMDeviceBluetooth hasStarting](self, "hasStarting") && objc_msgSend(v5, "hasStarting") && (v20 = -[BMDeviceBluetooth starting](self, "starting"), v20 == objc_msgSend(v5, "starting")))
      {
        v21 = [(BMDeviceBluetooth *)self deviceType];
        if (v21 == [v5 deviceType])
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
                      v27 = [(BMDeviceBluetooth *)self vendorID];
                      v12 = v27 == [v5 vendorID];
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
  v3 = [(BMDeviceBluetooth *)self address];
  v4 = [(BMDeviceBluetooth *)self name];
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
  v11 = v3;
  if (!v3)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v11;
  v40[0] = v11;
  v39[1] = @"name";
  v12 = v4;
  if (!v4)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v12;
  v40[1] = v12;
  v39[2] = @"productID";
  v13 = v5;
  if (!v5)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = v3;
  v28 = v13;
  v40[2] = v13;
  v39[3] = @"starting";
  v14 = v6;
  if (!v6)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v4;
  v27 = v14;
  v40[3] = v14;
  v39[4] = @"deviceType";
  v15 = v7;
  if (!v7)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = v5;
  v26 = v15;
  v40[4] = v15;
  v39[5] = @"batteryLevelHeadphoneCase";
  v16 = v8;
  if (!v8)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v6;
  v40[5] = v16;
  v39[6] = @"batteryLevelHeadphoneRight";
  v17 = v38;
  if (!v38)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v7;
  v40[6] = v17;
  v39[7] = @"batteryLevelHeadphoneLeft";
  v19 = v37;
  if (!v37)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v8;
  v40[7] = v19;
  v39[8] = @"appleAudioDevice";
  v21 = v36;
  if (!v36)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v40[8] = v21;
  v39[9] = @"userWearing";
  v22 = v9;
  if (!v9)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v40[9] = v22;
  v39[10] = @"vendorID";
  v23 = v10;
  if (!v10)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v40[10] = v23;
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

- (BMDeviceBluetooth)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v135[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"address"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
LABEL_4:
    v8 = [v5 objectForKeyedSubscript:@"name"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v9 = 0;
          v18 = 0;
          goto LABEL_69;
        }

        v104 = v6;
        v19 = a4;
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
        *v19 = [v20 initWithDomain:v23 code:2 userInfo:v22];
        v6 = v104;
        goto LABEL_68;
      }

      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = [v5 objectForKeyedSubscript:@"productID"];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v110 = 0;
          v18 = 0;
          goto LABEL_68;
        }

        v111 = objc_alloc(MEMORY[0x1E696ABC0]);
        v105 = v6;
        v24 = a4;
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
        a4 = v29;
        v31 = [v111 initWithDomain:v25 code:2 userInfo:v30];
        v110 = 0;
        v18 = 0;
        *v24 = v31;
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

    v12 = [v5 objectForKeyedSubscript:@"starting"];
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v18 = 0;
          v30 = v12;
          v8 = v11;
          goto LABEL_66;
        }

        v96 = a4;
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
        a4 = 0;
        v18 = 0;
        *v96 = v39;
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

    [v5 objectForKeyedSubscript:@"deviceType"];
    v13 = v8 = v11;
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v103 = v6;
      v14 = a4;
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
          if (!a4)
          {
            v108 = 0;
            v18 = 0;
            v6 = v103;
            a4 = v107;
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
          *v14 = v79;
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

    v40 = [v5 objectForKeyedSubscript:@"batteryLevelHeadphoneCase"];
    v97 = a4;
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
      v41 = [v5 objectForKeyedSubscript:@"batteryLevelHeadphoneRight"];
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
        v43 = [v5 objectForKeyedSubscript:@"batteryLevelHeadphoneLeft"];
        v90 = v13;
        v93 = v43;
        if (!v43 || (v44 = v43, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v98 = 0;
LABEL_49:
          v45 = [v5 objectForKeyedSubscript:@"appleAudioDevice"];
          v92 = v10;
          if (v45 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!a4)
              {
                v94 = 0;
                v18 = 0;
                v9 = v100;
                goto LABEL_61;
              }

              v47 = self;
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
              *v97 = [v73 initWithDomain:v75 code:2 userInfo:v46];
              goto LABEL_60;
            }

            v94 = v45;
          }

          else
          {
            v94 = 0;
          }

          v46 = [v5 objectForKeyedSubscript:@"userWearing"];
          if (v46 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v47 = self;
              v9 = v100;
              if (!v97)
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
              *v97 = v82;
              goto LABEL_59;
            }

            v47 = self;
            v48 = v46;
          }

          else
          {
            v47 = self;
            v48 = 0;
          }

          v49 = [v5 objectForKeyedSubscript:@"vendorID"];
          if (v49 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (v97)
              {
                v113 = objc_alloc(MEMORY[0x1E696ABC0]);
                v89 = *MEMORY[0x1E698F240];
                v114 = *MEMORY[0x1E696A578];
                v83 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"vendorID"];
                v115 = v83;
                v84 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
                *v97 = [v113 initWithDomain:v89 code:2 userInfo:v84];
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

          v18 = -[BMDeviceBluetooth initWithAddress:name:productID:starting:deviceType:batteryLevelHeadphoneCase:batteryLevelHeadphoneRight:batteryLevelHeadphoneLeft:appleAudioDevice:userWearing:vendorID:](v47, "initWithAddress:name:productID:starting:deviceType:batteryLevelHeadphoneCase:batteryLevelHeadphoneRight:batteryLevelHeadphoneLeft:appleAudioDevice:userWearing:vendorID:", v109, v100, v110, v107, [v108 intValue], v95, v106, v98, v94, v48, v50);
          v47 = v18;
LABEL_59:

          v9 = v100;
LABEL_60:
          self = v47;

          v10 = v92;
          v40 = v95;
LABEL_61:

          v30 = v101;
          a4 = v107;
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

        if (a4)
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
          *a4 = [v71 initWithDomain:v72 code:2 userInfo:v45];
          goto LABEL_61;
        }

        v98 = 0;
        v18 = 0;
        v9 = v100;
        v30 = v101;
LABEL_105:
        a4 = v107;
        goto LABEL_62;
      }

      if (a4)
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
        *v97 = [v61 initWithDomain:v67 code:2 userInfo:?];
        v30 = v101;
        goto LABEL_105;
      }

      v106 = 0;
      v18 = 0;
      v9 = v100;
      v30 = v101;
LABEL_103:
      a4 = v107;
      goto LABEL_63;
    }

    if (a4)
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
      *v97 = [v53 initWithDomain:v60 code:2 userInfo:?];
      v30 = v101;
      goto LABEL_103;
    }

    v40 = 0;
    v18 = 0;
LABEL_101:
    v30 = v101;
    a4 = v107;
    goto LABEL_64;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    goto LABEL_4;
  }

  if (!a4)
  {
    v7 = 0;
    v18 = 0;
    goto LABEL_70;
  }

  v15 = a4;
  v16 = objc_alloc(MEMORY[0x1E696ABC0]);
  v17 = *MEMORY[0x1E698F240];
  v134 = *MEMORY[0x1E696A578];
  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"address"];
  v135[0] = v9;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v135 forKeys:&v134 count:1];
  v7 = 0;
  v18 = 0;
  *v15 = [v16 initWithDomain:v17 code:2 userInfo:v8];
LABEL_69:

LABEL_70:
  v51 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)writeTo:(id)a3
{
  v14 = a3;
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

  v9 = v14;
  if (self->_hasBatteryLevelHeadphoneLeft)
  {
    batteryLevelHeadphoneLeft = self->_batteryLevelHeadphoneLeft;
    PBDataWriterWriteInt32Field();
    v9 = v14;
  }

  if (self->_hasAppleAudioDevice)
  {
    appleAudioDevice = self->_appleAudioDevice;
    PBDataWriterWriteBOOLField();
    v9 = v14;
  }

  if (self->_hasUserWearing)
  {
    userWearing = self->_userWearing;
    PBDataWriterWriteBOOLField();
    v9 = v14;
  }

  if (self->_hasVendorID)
  {
    vendorID = self->_vendorID;
    PBDataWriterWriteUint32Field();
    v9 = v14;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v81.receiver = self;
  v81.super_class = BMDeviceBluetooth;
  v5 = [(BMEventBase *)&v81 init];
  if (!v5)
  {
    goto LABEL_153;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_151;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v82 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v82 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
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
            v61 = [v4 position] + 1;
            if (v61 >= [v4 position] && (v62 = objc_msgSend(v4, "position") + 1, v62 <= objc_msgSend(v4, "length")))
            {
              v63 = [v4 data];
              [v63 getBytes:&v82 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          if ([v4 hasError])
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
            v42 = [v4 position] + 1;
            if (v42 >= [v4 position] && (v43 = objc_msgSend(v4, "position") + 1, v43 <= objc_msgSend(v4, "length")))
            {
              v44 = [v4 data];
              [v44 getBytes:&v82 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          v45 = (v41 != 0) & ~[v4 hasError];
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
          v26 = [v4 position] + 1;
          if (v26 >= [v4 position] && (v27 = objc_msgSend(v4, "position") + 1, v27 <= objc_msgSend(v4, "length")))
          {
            v28 = [v4 data];
            [v28 getBytes:&v82 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
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

        if (([v4 hasError] & 1) != 0 || v25 > 0x32)
        {
LABEL_128:
          LODWORD(v25) = 0;
        }

        v5->_deviceType = v25;
      }

LABEL_150:
      v78 = [v4 position];
      if (v78 >= [v4 length])
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
          v73 = [v4 position] + 1;
          if (v73 >= [v4 position] && (v74 = objc_msgSend(v4, "position") + 1, v74 <= objc_msgSend(v4, "length")))
          {
            v75 = [v4 data];
            [v75 getBytes:&v82 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
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

        v45 = (v72 != 0) & ~[v4 hasError];
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
          v55 = [v4 position] + 1;
          if (v55 >= [v4 position] && (v56 = objc_msgSend(v4, "position") + 1, v56 <= objc_msgSend(v4, "length")))
          {
            v57 = [v4 data];
            [v57 getBytes:&v82 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
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

        v45 = (v54 != 0) & ~[v4 hasError];
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
        v33 = [v4 position] + 1;
        if (v33 >= [v4 position] && (v34 = objc_msgSend(v4, "position") + 1, v34 <= objc_msgSend(v4, "length")))
        {
          v35 = [v4 data];
          [v35 getBytes:&v82 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      if ([v4 hasError])
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
            v67 = [v4 position] + 1;
            if (v67 >= [v4 position] && (v68 = objc_msgSend(v4, "position") + 1, v68 <= objc_msgSend(v4, "length")))
            {
              v69 = [v4 data];
              [v69 getBytes:&v82 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          if ([v4 hasError])
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
            v49 = [v4 position] + 1;
            if (v49 >= [v4 position] && (v50 = objc_msgSend(v4, "position") + 1, v50 <= objc_msgSend(v4, "length")))
            {
              v51 = [v4 data];
              [v51 getBytes:&v82 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          if ([v4 hasError])
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
            v19 = [v4 position] + 1;
            if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
            {
              v21 = [v4 data];
              [v21 getBytes:&v82 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          if ([v4 hasError])
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
  if ([v4 hasError])
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
  v14 = [(BMDeviceBluetooth *)self address];
  v13 = [(BMDeviceBluetooth *)self name];
  v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceBluetooth productID](self, "productID")}];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceBluetooth starting](self, "starting")}];
  v4 = BMDeviceBluetoothDeviceTypeAsString([(BMDeviceBluetooth *)self deviceType]);
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceBluetooth batteryLevelHeadphoneCase](self, "batteryLevelHeadphoneCase")}];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceBluetooth batteryLevelHeadphoneRight](self, "batteryLevelHeadphoneRight")}];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceBluetooth batteryLevelHeadphoneLeft](self, "batteryLevelHeadphoneLeft")}];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceBluetooth appleAudioDevice](self, "appleAudioDevice")}];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceBluetooth userWearing](self, "userWearing")}];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceBluetooth vendorID](self, "vendorID")}];
  v16 = [v15 initWithFormat:@"BMDeviceBluetooth with address: %@, name: %@, productID: %@, starting: %@, deviceType: %@, batteryLevelHeadphoneCase: %@, batteryLevelHeadphoneRight: %@, batteryLevelHeadphoneLeft: %@, appleAudioDevice: %@, userWearing: %@, vendorID: %@", v14, v13, v12, v3, v4, v5, v6, v7, v8, v9, v10];

  return v16;
}

- (BMDeviceBluetooth)initWithAddress:(id)a3 name:(id)a4 productID:(id)a5 starting:(id)a6 deviceType:(int)a7 batteryLevelHeadphoneCase:(id)a8 batteryLevelHeadphoneRight:(id)a9 batteryLevelHeadphoneLeft:(id)a10 appleAudioDevice:(id)a11 userWearing:(id)a12 vendorID:(id)a13
{
  v38 = a3;
  v35 = a4;
  v37 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a8;
  v21 = v19;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v26 = a13;
  v39.receiver = self;
  v39.super_class = BMDeviceBluetooth;
  v27 = [(BMEventBase *)&v39 init];
  if (v27)
  {
    v27->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v27->_address, a3);
    objc_storeStrong(&v27->_name, v35);
    if (v18)
    {
      v27->_hasProductID = 1;
      v28 = [v18 intValue];
    }

    else
    {
      v27->_hasProductID = 0;
      v28 = -1;
    }

    v27->_productID = v28;
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

    v27->_deviceType = a7;
    if (v20)
    {
      v27->_hasBatteryLevelHeadphoneCase = 1;
      v29 = [v20 intValue];
    }

    else
    {
      v27->_hasBatteryLevelHeadphoneCase = 0;
      v29 = -1;
    }

    v27->_batteryLevelHeadphoneCase = v29;
    if (v22)
    {
      v27->_hasBatteryLevelHeadphoneRight = 1;
      v30 = [v22 intValue];
    }

    else
    {
      v27->_hasBatteryLevelHeadphoneRight = 0;
      v30 = -1;
    }

    v27->_batteryLevelHeadphoneRight = v30;
    if (v23)
    {
      v27->_hasBatteryLevelHeadphoneLeft = 1;
      v31 = [v23 intValue];
    }

    else
    {
      v27->_hasBatteryLevelHeadphoneLeft = 0;
      v31 = -1;
    }

    v27->_batteryLevelHeadphoneLeft = v31;
    if (v24)
    {
      v27->_hasAppleAudioDevice = 1;
      v27->_appleAudioDevice = [v24 BOOLValue];
    }

    else
    {
      v27->_hasAppleAudioDevice = 0;
      v27->_appleAudioDevice = 0;
    }

    if (v25)
    {
      v27->_hasUserWearing = 1;
      v27->_userWearing = [v25 BOOLValue];
    }

    else
    {
      v27->_hasUserWearing = 0;
      v27->_userWearing = 0;
    }

    if (v26)
    {
      v27->_hasVendorID = 1;
      v32 = [v26 unsignedIntValue];
    }

    else
    {
      v32 = 0;
      v27->_hasVendorID = 0;
    }

    v27->_vendorID = v32;
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

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    v6 = a3;
    v7 = [[v5 alloc] initWithData:v6];

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