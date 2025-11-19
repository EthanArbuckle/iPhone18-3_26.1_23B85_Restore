@interface HAPCharacteristicValueTransition
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAPCharacteristicValueTransition)init;
- (HAPCharacteristicValueTransition)initWithHAPInstanceID:(id)a3 controllerContext:(id)a4 endBehavior:(id)a5 linearTransition:(id)a6 linearDerivedTransition:(id)a7 valueUpdateTimeInterval:(id)a8 notifyValueChangeThreshold:(id)a9 notifyTimeIntervalThreshold:(id)a10;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAPCharacteristicValueTransition

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HAPCharacteristicValueTransition *)self HAPInstanceID];
  v5 = [(HAPCharacteristicValueTransition *)self controllerContext];
  v6 = [(HAPCharacteristicValueTransition *)self endBehavior];
  v7 = [(HAPCharacteristicValueTransition *)self linearTransition];
  v8 = [(HAPCharacteristicValueTransition *)self linearDerivedTransition];
  v9 = [(HAPCharacteristicValueTransition *)self valueUpdateTimeInterval];
  v10 = [(HAPCharacteristicValueTransition *)self notifyValueChangeThreshold];
  v11 = [(HAPCharacteristicValueTransition *)self notifyTimeIntervalThreshold];
  v12 = [v3 stringWithFormat:@"<HAPCharacteristicValueTransition HAPInstanceID=%@, controllerContext=%@, endBehavior=%@, linearTransition=%@, linearDerivedTransition=%@, valueUpdateTimeInterval=%@, notifyValueChangeThreshold=%@, notifyTimeIntervalThreshold=%@>", v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(HAPCharacteristicValueTransition *)self HAPInstanceID];
      v8 = [(HAPCharacteristicValueTransition *)v6 HAPInstanceID];
      if (v7 != v8)
      {
        v9 = [(HAPCharacteristicValueTransition *)self HAPInstanceID];
        v3 = [(HAPCharacteristicValueTransition *)v6 HAPInstanceID];
        v59 = v9;
        if (![v9 isEqual:v3])
        {
          v10 = 0;
          goto LABEL_45;
        }
      }

      v11 = [(HAPCharacteristicValueTransition *)self controllerContext];
      v12 = [(HAPCharacteristicValueTransition *)v6 controllerContext];
      if (v11 != v12)
      {
        v13 = [(HAPCharacteristicValueTransition *)self controllerContext];
        v57 = [(HAPCharacteristicValueTransition *)v6 controllerContext];
        if (![v13 isEqual:?])
        {
          v10 = 0;
LABEL_43:

LABEL_44:
          if (v7 == v8)
          {
LABEL_46:

            goto LABEL_47;
          }

LABEL_45:

          goto LABEL_46;
        }

        v55 = v13;
      }

      v14 = [(HAPCharacteristicValueTransition *)self endBehavior];
      v15 = [(HAPCharacteristicValueTransition *)v6 endBehavior];
      v58 = v14;
      if (v14 != v15)
      {
        v16 = [(HAPCharacteristicValueTransition *)self endBehavior];
        v52 = [(HAPCharacteristicValueTransition *)v6 endBehavior];
        v53 = v16;
        if (![v16 isEqual:?])
        {
          v10 = 0;
          v17 = v58;
LABEL_41:

LABEL_42:
          v13 = v55;
          if (v11 == v12)
          {
            goto LABEL_44;
          }

          goto LABEL_43;
        }
      }

      v18 = [(HAPCharacteristicValueTransition *)self linearTransition];
      v54 = [(HAPCharacteristicValueTransition *)v6 linearTransition];
      v56 = v18;
      if (v18 != v54)
      {
        v19 = [(HAPCharacteristicValueTransition *)self linearTransition];
        v48 = [(HAPCharacteristicValueTransition *)v6 linearTransition];
        v49 = v19;
        if (![v19 isEqual:?])
        {
          v10 = 0;
          v20 = v54;
LABEL_39:

LABEL_40:
          v17 = v58;
          if (v58 == v15)
          {
            goto LABEL_42;
          }

          goto LABEL_41;
        }
      }

      v21 = [(HAPCharacteristicValueTransition *)self linearDerivedTransition];
      v50 = [(HAPCharacteristicValueTransition *)v6 linearDerivedTransition];
      v51 = v21;
      if (v21 != v50)
      {
        v22 = [(HAPCharacteristicValueTransition *)self linearDerivedTransition];
        v44 = [(HAPCharacteristicValueTransition *)v6 linearDerivedTransition];
        v45 = v22;
        if (![v22 isEqual:?])
        {
          v10 = 0;
          v23 = v50;
LABEL_37:

LABEL_38:
          v20 = v54;
          if (v56 == v54)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        }
      }

      v24 = [(HAPCharacteristicValueTransition *)self valueUpdateTimeInterval];
      v46 = [(HAPCharacteristicValueTransition *)v6 valueUpdateTimeInterval];
      v47 = v24;
      if (v24 != v46)
      {
        v25 = [(HAPCharacteristicValueTransition *)self valueUpdateTimeInterval];
        v40 = [(HAPCharacteristicValueTransition *)v6 valueUpdateTimeInterval];
        v41 = v25;
        if (![v25 isEqual:?])
        {
          v10 = 0;
          v26 = v46;
LABEL_35:

LABEL_36:
          v23 = v50;
          if (v51 == v50)
          {
            goto LABEL_38;
          }

          goto LABEL_37;
        }
      }

      v27 = [(HAPCharacteristicValueTransition *)self notifyValueChangeThreshold];
      v42 = [(HAPCharacteristicValueTransition *)v6 notifyValueChangeThreshold];
      v43 = v27;
      if (v27 == v42)
      {
        v39 = v3;
      }

      else
      {
        v28 = [(HAPCharacteristicValueTransition *)self notifyValueChangeThreshold];
        v37 = [(HAPCharacteristicValueTransition *)v6 notifyValueChangeThreshold];
        v38 = v28;
        if (![v28 isEqual:?])
        {
          v10 = 0;
          v33 = v42;
          goto LABEL_33;
        }

        v39 = v3;
      }

      v29 = [(HAPCharacteristicValueTransition *)self notifyTimeIntervalThreshold];
      v30 = [(HAPCharacteristicValueTransition *)v6 notifyTimeIntervalThreshold];
      v31 = v30;
      if (v29 == v30)
      {

        v10 = 1;
      }

      else
      {
        v35 = [(HAPCharacteristicValueTransition *)self notifyTimeIntervalThreshold];
        [(HAPCharacteristicValueTransition *)v6 notifyTimeIntervalThreshold];
        v32 = v36 = v29;
        v10 = [v35 isEqual:v32];
      }

      v33 = v42;
      v3 = v39;
      if (v43 == v42)
      {
LABEL_34:

        v26 = v46;
        if (v47 == v46)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

LABEL_33:

      goto LABEL_34;
    }

    v10 = 0;
  }

LABEL_47:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HAPCharacteristicValueTransition allocWithZone:a3];
  v5 = [(HAPCharacteristicValueTransition *)self HAPInstanceID];
  v6 = [(HAPCharacteristicValueTransition *)self controllerContext];
  v7 = [(HAPCharacteristicValueTransition *)self endBehavior];
  v8 = [(HAPCharacteristicValueTransition *)self linearTransition];
  v9 = [(HAPCharacteristicValueTransition *)self linearDerivedTransition];
  v10 = [(HAPCharacteristicValueTransition *)self valueUpdateTimeInterval];
  v11 = [(HAPCharacteristicValueTransition *)self notifyValueChangeThreshold];
  v12 = [(HAPCharacteristicValueTransition *)self notifyTimeIntervalThreshold];
  v13 = [(HAPCharacteristicValueTransition *)v4 initWithHAPInstanceID:v5 controllerContext:v6 endBehavior:v7 linearTransition:v8 linearDerivedTransition:v9 valueUpdateTimeInterval:v10 notifyValueChangeThreshold:v11 notifyTimeIntervalThreshold:v12];

  return v13;
}

- (id)serializeWithError:(id *)a3
{
  v70 = *MEMORY[0x277D85DE8];
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  TLV8BufferInit();
  v5 = [(HAPCharacteristicValueTransition *)self HAPInstanceID];

  if (v5)
  {
    v6 = [(HAPCharacteristicValueTransition *)self HAPInstanceID];
    v48 = 0;
    v7 = [v6 serializeWithError:&v48];
    v8 = v48;

    if (v8)
    {
      goto LABEL_55;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();
    if (v9)
    {
LABEL_4:
      v10 = v9;

LABEL_5:
      if (a3)
      {
        HMErrorFromOSStatus(v10);
        v8 = 0;
        *a3 = v11 = 0;
        goto LABEL_58;
      }

      v8 = 0;
LABEL_57:
      v11 = 0;
      goto LABEL_58;
    }
  }

  v12 = [(HAPCharacteristicValueTransition *)self controllerContext];

  if (v12)
  {
    v13 = [(HAPCharacteristicValueTransition *)self controllerContext];
    v47 = 0;
    v7 = [v13 serializeWithError:&v47];
    v8 = v47;

    if (!v8)
    {
      v14 = [v7 bytes];
      v15 = v14 + [v7 length];
      while (1)
      {
        v16 = (v15 - v14) >= 255 ? 255 : v15 - v14;
        v9 = TLV8BufferAppend();
        if (v9)
        {
          goto LABEL_4;
        }

        v14 += v16;
        if (v14 >= v15)
        {

          goto LABEL_18;
        }
      }
    }

    goto LABEL_55;
  }

LABEL_18:
  v17 = [(HAPCharacteristicValueTransition *)self endBehavior];

  if (v17)
  {
    v18 = [(HAPCharacteristicValueTransition *)self endBehavior];
    v46 = 0;
    v7 = [v18 serializeWithError:&v46];
    v8 = v46;

    if (v8)
    {
      goto LABEL_55;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();
    if (v9)
    {
      goto LABEL_4;
    }
  }

  v19 = [(HAPCharacteristicValueTransition *)self linearTransition];

  if (v19)
  {
    v20 = [(HAPCharacteristicValueTransition *)self linearTransition];
    v45 = 0;
    v7 = [v20 serializeWithError:&v45];
    v8 = v45;

    if (!v8)
    {
      v21 = [v7 bytes];
      v22 = v21 + [v7 length];
      while (1)
      {
        v23 = (v22 - v21) >= 255 ? 255 : v22 - v21;
        v9 = TLV8BufferAppend();
        if (v9)
        {
          goto LABEL_4;
        }

        v21 += v23;
        if (v21 >= v22)
        {

          goto LABEL_31;
        }
      }
    }

    goto LABEL_55;
  }

LABEL_31:
  v24 = [(HAPCharacteristicValueTransition *)self linearDerivedTransition];

  if (v24)
  {
    v25 = [(HAPCharacteristicValueTransition *)self linearDerivedTransition];
    v44 = 0;
    v7 = [v25 serializeWithError:&v44];
    v8 = v44;

    if (!v8)
    {
      v26 = [v7 bytes];
      v27 = v26 + [v7 length];
      while (1)
      {
        v28 = (v27 - v26) >= 255 ? 255 : v27 - v26;
        v9 = TLV8BufferAppend();
        if (v9)
        {
          goto LABEL_4;
        }

        v26 += v28;
        if (v26 >= v27)
        {

          goto LABEL_40;
        }
      }
    }

    goto LABEL_55;
  }

LABEL_40:
  v29 = [(HAPCharacteristicValueTransition *)self valueUpdateTimeInterval];

  if (v29)
  {
    v30 = [(HAPCharacteristicValueTransition *)self valueUpdateTimeInterval];
    v43 = 0;
    v7 = [v30 serializeWithError:&v43];
    v8 = v43;

    if (v8)
    {
      goto LABEL_55;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();
    if (v9)
    {
      goto LABEL_4;
    }
  }

  v31 = [(HAPCharacteristicValueTransition *)self notifyValueChangeThreshold];

  if (v31)
  {
    v32 = [(HAPCharacteristicValueTransition *)self notifyValueChangeThreshold];
    v42 = 0;
    v7 = [v32 serializeWithError:&v42];
    v8 = v42;

    if (!v8)
    {
      v33 = [v7 bytes];
      v34 = v33 + [v7 length];
      while (1)
      {
        v35 = (v34 - v33) >= 255 ? 255 : v34 - v33;
        v9 = TLV8BufferAppend();
        if (v9)
        {
          goto LABEL_4;
        }

        v33 += v35;
        if (v33 >= v34)
        {

          goto LABEL_53;
        }
      }
    }

LABEL_55:

    if (a3)
    {
      v38 = v8;
      v11 = 0;
      *a3 = v8;
      goto LABEL_58;
    }

    goto LABEL_57;
  }

LABEL_53:
  v36 = [(HAPCharacteristicValueTransition *)self notifyTimeIntervalThreshold];

  if (v36)
  {
    v37 = [(HAPCharacteristicValueTransition *)self notifyTimeIntervalThreshold];
    v41 = 0;
    v7 = [v37 serializeWithError:&v41];
    v8 = v41;

    if (v8)
    {
      goto LABEL_55;
    }

    [v7 bytes];
    [v7 length];
    v10 = TLV8BufferAppend();

    if (v10)
    {
      goto LABEL_5;
    }
  }

  v11 = [MEMORY[0x277CBEA90] dataWithBytes:v49 length:?];
  v8 = 0;
LABEL_58:
  TLV8BufferFree();

  v39 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)parseFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 bytes];
  v56 = v6;
  v8 = [v6 length];
  if (v8 < 1)
  {
    v38 = 0;
    v39 = 0;
    v10 = 0;
    v40 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v41 = 0;
LABEL_46:
    [(HAPCharacteristicValueTransition *)self setHAPInstanceID:v38];
    [(HAPCharacteristicValueTransition *)self setControllerContext:v39];
    [(HAPCharacteristicValueTransition *)self setEndBehavior:v10];
    [(HAPCharacteristicValueTransition *)self setLinearTransition:v40];
    [(HAPCharacteristicValueTransition *)self setLinearDerivedTransition:v41];
    [(HAPCharacteristicValueTransition *)self setValueUpdateTimeInterval:v13];
    [(HAPCharacteristicValueTransition *)self setNotifyValueChangeThreshold:v12];
    [(HAPCharacteristicValueTransition *)self setNotifyTimeIntervalThreshold:v11];
    v42 = v11;
    v43 = v13;
    v44 = v10;
    v45 = v12;
    v49 = v40;
    v9 = 0;
    v50 = v41;
    v46 = 1;
    goto LABEL_51;
  }

  v52 = a4;
  v53 = 0;
  v9 = 0;
  v57 = 0;
  v54 = 0;
  v55 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = v7 + v8;
  while (1)
  {
    v72 = 0;
    v70[1] = 0;
    v71 = 0;
    v70[0] = 0;
    Next = TLV8GetNext();
    if (Next)
    {
      v42 = v11;
      v43 = v13;
      v44 = v10;
      v45 = v12;
      if (v52)
      {
        HMErrorFromOSStatus(Next);
        *v52 = v46 = 0;
      }

      else
      {
        v46 = 0;
      }

      v38 = v57;
      v39 = v55;
      goto LABEL_50;
    }

    if (!v71)
    {
      break;
    }

    if (v72 > 4u)
    {
      v20 = v10;
      if (v72 > 6u)
      {
        if (v72 != 7)
        {
          if (v72 != 8)
          {
            goto LABEL_31;
          }

          v16 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v58 = v9;
          v24 = [HAPTLVUnsignedNumberValue parsedFromData:v16 error:&v58];
          v22 = v12;
          v23 = v58;

          v19 = v11;
          v11 = v24;
          goto LABEL_22;
        }

        v60 = v9;
        v16 = HAPTLVParseContiguousTlvs(7, v7, v14, v70, &v60);
        v31 = v60;

        if (!v31)
        {
          v59 = 0;
          v36 = [MEMORY[0x277CBEA90] parsedFromData:v16 error:&v59];
          v9 = v59;
          v19 = v12;
          v12 = v36;
          goto LABEL_23;
        }
      }

      else
      {
        if (v72 != 5)
        {
          if (v72 != 6)
          {
            goto LABEL_31;
          }

          v16 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v61 = v9;
          v21 = [HAPTLVUnsignedNumberValue parsedFromData:v16 error:&v61];
          v22 = v12;
          v23 = v61;

          v19 = v13;
          v13 = v21;
LABEL_22:
          v9 = v23;
          v12 = v22;
LABEL_23:
          v10 = v20;
          goto LABEL_29;
        }

        v63 = v9;
        v16 = HAPTLVParseContiguousTlvs(5, v7, v14, v70, &v63);
        v31 = v63;

        if (!v31)
        {
          v62 = 0;
          v32 = [HAPCharacteristicValueLinearDerivedTransition parsedFromData:v16 error:&v62];
          v9 = v62;
          v19 = v53;
          v53 = v32;
          goto LABEL_23;
        }
      }

      v9 = v31;
      goto LABEL_30;
    }

    if (v72 > 2u)
    {
      if (v72 == 3)
      {
        v16 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v66 = v9;
        v33 = [HAPCharacteristicValueTransitionEndBehaviorWrapper parsedFromData:v16 error:&v66];
        v26 = v11;
        v27 = v13;
        v34 = v12;
        v35 = v66;

        v19 = v10;
        v10 = v33;
        v9 = v35;
        v12 = v34;
        goto LABEL_28;
      }

      if (v72 == 4)
      {
        v65 = v9;
        v16 = HAPTLVParseContiguousTlvs(4, v7, v14, v70, &v65);
        v17 = v65;

        if (v17)
        {
LABEL_18:
          v9 = v17;
LABEL_30:

          goto LABEL_31;
        }

        v64 = 0;
        v37 = [HAPCharacteristicValueLinearTransition parsedFromData:v16 error:&v64];
        v9 = v64;
        v19 = v54;
        v54 = v37;
LABEL_29:

        goto LABEL_30;
      }
    }

    else
    {
      if (v72 == 1)
      {
        v16 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v69 = v9;
        v25 = [HAPTLVUnsignedNumberValue parsedFromData:v16 error:&v69];
        v26 = v11;
        v27 = v13;
        v28 = v10;
        v29 = v12;
        v30 = v69;

        v19 = v57;
        v57 = v25;
        v9 = v30;
        v12 = v29;
        v10 = v28;
LABEL_28:
        v13 = v27;
        v11 = v26;
        goto LABEL_29;
      }

      if (v72 == 2)
      {
        v68 = v9;
        v16 = HAPTLVParseContiguousTlvs(2, v7, v14, v70, &v68);
        v17 = v68;

        if (v17)
        {
          goto LABEL_18;
        }

        v67 = 0;
        v18 = [MEMORY[0x277CBEA90] parsedFromData:v16 error:&v67];
        v9 = v67;
        v19 = v55;
        v55 = v18;
        goto LABEL_29;
      }
    }

LABEL_31:
    v7 = v70[0];
    if (v70[0] >= v14)
    {
      goto LABEL_42;
    }
  }

  v47 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

  v9 = v47;
LABEL_42:
  if (!v9)
  {
    v38 = v57;
    v40 = v54;
    v39 = v55;
    v41 = v53;
    goto LABEL_46;
  }

  v42 = v11;
  v43 = v13;
  v44 = v10;
  v45 = v12;
  v38 = v57;
  v39 = v55;
  if (v52)
  {
    v48 = v9;
    v46 = 0;
    *v52 = v9;
  }

  else
  {
    v46 = 0;
  }

LABEL_50:
  v50 = v53;
  v49 = v54;
LABEL_51:

  return v46;
}

- (HAPCharacteristicValueTransition)initWithHAPInstanceID:(id)a3 controllerContext:(id)a4 endBehavior:(id)a5 linearTransition:(id)a6 linearDerivedTransition:(id)a7 valueUpdateTimeInterval:(id)a8 notifyValueChangeThreshold:(id)a9 notifyTimeIntervalThreshold:(id)a10
{
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v22 = a8;
  v17 = a9;
  v18 = a10;
  v28.receiver = self;
  v28.super_class = HAPCharacteristicValueTransition;
  v19 = [(HAPCharacteristicValueTransition *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_HAPInstanceID, a3);
    objc_storeStrong(&v20->_controllerContext, a4);
    objc_storeStrong(&v20->_endBehavior, a5);
    objc_storeStrong(&v20->_linearTransition, a6);
    objc_storeStrong(&v20->_linearDerivedTransition, a7);
    objc_storeStrong(&v20->_valueUpdateTimeInterval, a8);
    objc_storeStrong(&v20->_notifyValueChangeThreshold, a9);
    objc_storeStrong(&v20->_notifyTimeIntervalThreshold, a10);
  }

  return v20;
}

- (HAPCharacteristicValueTransition)init
{
  v3.receiver = self;
  v3.super_class = HAPCharacteristicValueTransition;
  return [(HAPCharacteristicValueTransition *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAPCharacteristicValueTransition);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPCharacteristicValueTransition *)v6 parseFromData:v5 error:&v11];
    v8 = v11;
    if (v8)
    {

      if (a4)
      {
        v9 = v8;
        v7 = 0;
        *a4 = v8;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

@end