@interface HAP2TLVParamCharacteristicSignature
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAP2TLVParamCharacteristicSignature)init;
- (HAP2TLVParamCharacteristicSignature)initWithInstanceID:(id)a3 characteristicType:(id)a4 characteristicProperties:(id)a5 userDescription:(id)a6 bluetoothFormat:(id)a7 validRange:(id)a8 stepValue:(id)a9 validValues:(id)a10 validValuesRange:(id)a11;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAP2TLVParamCharacteristicSignature

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HAP2TLVParamCharacteristicSignature *)self instanceID];
  v5 = [(HAP2TLVParamCharacteristicSignature *)self characteristicType];
  v6 = [(HAP2TLVParamCharacteristicSignature *)self characteristicProperties];
  v7 = [(HAP2TLVParamCharacteristicSignature *)self userDescription];
  v8 = [(HAP2TLVParamCharacteristicSignature *)self bluetoothFormat];
  v9 = [(HAP2TLVParamCharacteristicSignature *)self validRange];
  v10 = [(HAP2TLVParamCharacteristicSignature *)self stepValue];
  v11 = [(HAP2TLVParamCharacteristicSignature *)self validValues];
  v12 = [(HAP2TLVParamCharacteristicSignature *)self validValuesRange];
  v13 = [v3 stringWithFormat:@"<HAP2TLVParamCharacteristicSignature instanceID=%@, characteristicType=%@, characteristicProperties=%@, userDescription=%@, bluetoothFormat=%@, validRange=%@, stepValue=%@, validValues=%@, validValuesRange=%@>", v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HAP2TLVParamCharacteristicSignature *)self instanceID];
      v7 = [(HAP2TLVParamCharacteristicSignature *)v5 instanceID];
      if (v6 != v7)
      {
        v8 = [(HAP2TLVParamCharacteristicSignature *)self instanceID];
        v9 = [(HAP2TLVParamCharacteristicSignature *)v5 instanceID];
        v74 = v8;
        if (![v8 isEqual:v9])
        {
          v10 = 0;
          goto LABEL_54;
        }

        v73 = v9;
      }

      v11 = [(HAP2TLVParamCharacteristicSignature *)self characteristicType];
      v12 = [(HAP2TLVParamCharacteristicSignature *)v5 characteristicType];
      if (v11 != v12)
      {
        v13 = [(HAP2TLVParamCharacteristicSignature *)self characteristicType];
        v14 = [(HAP2TLVParamCharacteristicSignature *)v5 characteristicType];
        if (![v13 isEqual:v14])
        {
          v10 = 0;
LABEL_52:

LABEL_53:
          v9 = v73;
          if (v6 == v7)
          {
LABEL_55:

            goto LABEL_56;
          }

LABEL_54:

          goto LABEL_55;
        }

        v71 = v14;
        v72 = v13;
      }

      v15 = [(HAP2TLVParamCharacteristicSignature *)self characteristicProperties];
      v16 = [(HAP2TLVParamCharacteristicSignature *)v5 characteristicProperties];
      if (v15 == v16)
      {
        v67 = v12;
        v18 = v11;
      }

      else
      {
        v17 = [(HAP2TLVParamCharacteristicSignature *)self characteristicProperties];
        v65 = [(HAP2TLVParamCharacteristicSignature *)v5 characteristicProperties];
        v66 = v17;
        if (![v17 isEqual:v65])
        {
          v10 = 0;
LABEL_50:

LABEL_51:
          v14 = v71;
          v13 = v72;
          if (v11 == v12)
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        }

        v67 = v12;
        v18 = v11;
      }

      v19 = [(HAP2TLVParamCharacteristicSignature *)self userDescription];
      v20 = [(HAP2TLVParamCharacteristicSignature *)v5 userDescription];
      v69 = v16;
      v70 = v19;
      v68 = v15;
      if (v19 != v20)
      {
        v21 = [(HAP2TLVParamCharacteristicSignature *)self userDescription];
        v61 = [(HAP2TLVParamCharacteristicSignature *)v5 userDescription];
        v62 = v21;
        if (![v21 isEqual:?])
        {
          v10 = 0;
          v22 = v20;
          v23 = v70;
          v11 = v18;
          v12 = v67;
LABEL_48:

LABEL_49:
          v15 = v68;
          v16 = v69;
          if (v68 == v69)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        }
      }

      v24 = [(HAP2TLVParamCharacteristicSignature *)self bluetoothFormat];
      v63 = [(HAP2TLVParamCharacteristicSignature *)v5 bluetoothFormat];
      v64 = v24;
      if (v24 != v63)
      {
        v25 = [(HAP2TLVParamCharacteristicSignature *)self bluetoothFormat];
        v57 = [(HAP2TLVParamCharacteristicSignature *)v5 bluetoothFormat];
        v58 = v25;
        if (![v25 isEqual:?])
        {
          v22 = v20;
          v10 = 0;
          v26 = v63;
          v11 = v18;
          v12 = v67;
LABEL_46:

LABEL_47:
          v23 = v70;
          if (v70 == v22)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        }
      }

      v27 = [(HAP2TLVParamCharacteristicSignature *)self validRange];
      v59 = [(HAP2TLVParamCharacteristicSignature *)v5 validRange];
      v60 = v27;
      if (v27 == v59)
      {
        v55 = v20;
      }

      else
      {
        v28 = [(HAP2TLVParamCharacteristicSignature *)self validRange];
        v52 = [(HAP2TLVParamCharacteristicSignature *)v5 validRange];
        v53 = v28;
        v29 = [v28 isEqual:?];
        v30 = v20;
        if (!v29)
        {
          v10 = 0;
          v11 = v18;
          v12 = v67;
          v34 = v59;
          v35 = v60;
          goto LABEL_43;
        }

        v55 = v20;
      }

      v11 = v18;
      v31 = [(HAP2TLVParamCharacteristicSignature *)self stepValue];
      v54 = [(HAP2TLVParamCharacteristicSignature *)v5 stepValue];
      v56 = v31;
      v12 = v67;
      if (v31 != v54)
      {
        v32 = [(HAP2TLVParamCharacteristicSignature *)self stepValue];
        v48 = [(HAP2TLVParamCharacteristicSignature *)v5 stepValue];
        v49 = v32;
        if (![v32 isEqual:v48])
        {
          v10 = 0;
          v33 = v54;
LABEL_41:

LABEL_42:
          v34 = v59;
          v35 = v60;
          v30 = v55;
          if (v60 == v59)
          {
            v22 = v55;
LABEL_45:

            v26 = v63;
            if (v64 == v63)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          }

LABEL_43:
          v22 = v30;

          goto LABEL_45;
        }
      }

      v36 = [(HAP2TLVParamCharacteristicSignature *)self validValues];
      v50 = [(HAP2TLVParamCharacteristicSignature *)v5 validValues];
      v51 = v36;
      if (v36 == v50 || (-[HAP2TLVParamCharacteristicSignature validValues](self, "validValues"), v37 = objc_claimAutoreleasedReturnValue(), -[HAP2TLVParamCharacteristicSignature validValues](v5, "validValues"), v46 = objc_claimAutoreleasedReturnValue(), v47 = v37, [v37 isEqual:?]))
      {
        v39 = [(HAP2TLVParamCharacteristicSignature *)self validValuesRange];
        v40 = [(HAP2TLVParamCharacteristicSignature *)v5 validValuesRange];
        if (v39 == v40)
        {

          v10 = 1;
        }

        else
        {
          v45 = v40;
          v43 = [(HAP2TLVParamCharacteristicSignature *)self validValuesRange];
          [(HAP2TLVParamCharacteristicSignature *)v5 validValuesRange];
          v41 = v44 = v39;
          v10 = [v43 isEqual:v41];
        }

        v38 = v50;
        if (v51 == v50)
        {
LABEL_40:

          v33 = v54;
          if (v56 == v54)
          {
            goto LABEL_42;
          }

          goto LABEL_41;
        }
      }

      else
      {
        v10 = 0;
        v38 = v50;
      }

      goto LABEL_40;
    }

    v10 = 0;
  }

LABEL_56:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HAP2TLVParamCharacteristicSignature allocWithZone:a3];
  v5 = [(HAP2TLVParamCharacteristicSignature *)self instanceID];
  v6 = [(HAP2TLVParamCharacteristicSignature *)self characteristicType];
  v7 = [(HAP2TLVParamCharacteristicSignature *)self characteristicProperties];
  v8 = [(HAP2TLVParamCharacteristicSignature *)self userDescription];
  v9 = [(HAP2TLVParamCharacteristicSignature *)self bluetoothFormat];
  v10 = [(HAP2TLVParamCharacteristicSignature *)self validRange];
  v11 = [(HAP2TLVParamCharacteristicSignature *)self stepValue];
  v12 = [(HAP2TLVParamCharacteristicSignature *)self validValues];
  v13 = [(HAP2TLVParamCharacteristicSignature *)self validValuesRange];
  v14 = [(HAP2TLVParamCharacteristicSignature *)v4 initWithInstanceID:v5 characteristicType:v6 characteristicProperties:v7 userDescription:v8 bluetoothFormat:v9 validRange:v10 stepValue:v11 validValues:v12 validValuesRange:v13];

  return v14;
}

- (id)serializeWithError:(id *)a3
{
  v85 = *MEMORY[0x277D85DE8];
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v68 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  TLV8BufferInit();
  v5 = [(HAP2TLVParamCharacteristicSignature *)self instanceID];

  if (v5)
  {
    v6 = [(HAP2TLVParamCharacteristicSignature *)self instanceID];
    v63 = 0;
    v7 = [v6 serializeWithError:&v63];
    v8 = v63;

    if (v8)
    {
      goto LABEL_69;
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
        goto LABEL_72;
      }

      v8 = 0;
LABEL_71:
      v11 = 0;
      goto LABEL_72;
    }
  }

  v12 = [(HAP2TLVParamCharacteristicSignature *)self characteristicType];

  if (v12)
  {
    v13 = [(HAP2TLVParamCharacteristicSignature *)self characteristicType];
    v62 = 0;
    v7 = [v13 serializeWithError:&v62];
    v8 = v62;

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

    goto LABEL_69;
  }

LABEL_18:
  v17 = [(HAP2TLVParamCharacteristicSignature *)self characteristicProperties];

  if (v17)
  {
    v18 = [(HAP2TLVParamCharacteristicSignature *)self characteristicProperties];
    v61 = 0;
    v7 = [v18 serializeWithError:&v61];
    v8 = v61;

    if (v8)
    {
      goto LABEL_69;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();
    if (v9)
    {
      goto LABEL_4;
    }
  }

  v19 = [(HAP2TLVParamCharacteristicSignature *)self userDescription];

  if (v19)
  {
    v20 = [(HAP2TLVParamCharacteristicSignature *)self userDescription];
    v60 = 0;
    v7 = [v20 serializeWithError:&v60];
    v8 = v60;

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

    goto LABEL_69;
  }

LABEL_31:
  v24 = [(HAP2TLVParamCharacteristicSignature *)self bluetoothFormat];

  if (v24)
  {
    v25 = [(HAP2TLVParamCharacteristicSignature *)self bluetoothFormat];
    v59 = 0;
    v7 = [v25 serializeWithError:&v59];
    v8 = v59;

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

    goto LABEL_69;
  }

LABEL_40:
  v29 = [(HAP2TLVParamCharacteristicSignature *)self validRange];

  if (v29)
  {
    v30 = [(HAP2TLVParamCharacteristicSignature *)self validRange];
    v58 = 0;
    v7 = [v30 serializeWithError:&v58];
    v8 = v58;

    if (!v8)
    {
      v31 = [v7 bytes];
      v32 = v31 + [v7 length];
      while (1)
      {
        v33 = (v32 - v31) >= 255 ? 255 : v32 - v31;
        v9 = TLV8BufferAppend();
        if (v9)
        {
          goto LABEL_4;
        }

        v31 += v33;
        if (v31 >= v32)
        {

          goto LABEL_49;
        }
      }
    }

    goto LABEL_69;
  }

LABEL_49:
  v34 = [(HAP2TLVParamCharacteristicSignature *)self stepValue];

  if (v34)
  {
    v35 = [(HAP2TLVParamCharacteristicSignature *)self stepValue];
    v57 = 0;
    v7 = [v35 serializeWithError:&v57];
    v8 = v57;

    if (!v8)
    {
      v36 = [v7 bytes];
      v37 = v36 + [v7 length];
      while (1)
      {
        v38 = (v37 - v36) >= 255 ? 255 : v37 - v36;
        v9 = TLV8BufferAppend();
        if (v9)
        {
          goto LABEL_4;
        }

        v36 += v38;
        if (v36 >= v37)
        {

          goto LABEL_58;
        }
      }
    }

    goto LABEL_69;
  }

LABEL_58:
  v39 = [(HAP2TLVParamCharacteristicSignature *)self validValues];

  if (v39)
  {
    v40 = [(HAP2TLVParamCharacteristicSignature *)self validValues];
    v56 = 0;
    v7 = [v40 serializeWithError:&v56];
    v8 = v56;

    if (!v8)
    {
      v41 = [v7 bytes];
      v42 = v41 + [v7 length];
      while (1)
      {
        v43 = (v42 - v41) >= 255 ? 255 : v42 - v41;
        v9 = TLV8BufferAppend();
        if (v9)
        {
          goto LABEL_4;
        }

        v41 += v43;
        if (v41 >= v42)
        {

          goto LABEL_67;
        }
      }
    }

LABEL_69:

    if (a3)
    {
      v46 = v8;
      v11 = 0;
      *a3 = v8;
      goto LABEL_72;
    }

    goto LABEL_71;
  }

LABEL_67:
  v44 = [(HAP2TLVParamCharacteristicSignature *)self validValuesRange];

  if (v44)
  {
    v45 = [(HAP2TLVParamCharacteristicSignature *)self validValuesRange];
    v55 = 0;
    v7 = [v45 serializeWithError:&v55];
    v8 = v55;

    if (v8)
    {
      goto LABEL_69;
    }

    v49 = [v7 bytes];
    v50 = v49 + [v7 length];
    do
    {
      if ((v50 - v49) >= 255)
      {
        v51 = 255;
      }

      else
      {
        v51 = v50 - v49;
      }

      v52 = TLV8BufferAppend();
      if (v52)
      {
        v53 = 0;
      }

      else
      {
        v53 = v51;
      }

      v49 += v53;
      if (v52)
      {
        v54 = 1;
      }

      else
      {
        v54 = v49 >= v50;
      }
    }

    while (!v54);
    v10 = v52;

    if (v10)
    {
      goto LABEL_5;
    }
  }

  v11 = [MEMORY[0x277CBEA90] dataWithBytes:v64 length:?];
  v8 = 0;
LABEL_72:
  TLV8BufferFree();

  v47 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)parseFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 bytes];
  v48 = v6;
  v8 = [v6 length];
  if (v8 < 1)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
LABEL_47:
    [(HAP2TLVParamCharacteristicSignature *)self setInstanceID:v27];
    [(HAP2TLVParamCharacteristicSignature *)self setCharacteristicType:v28];
    [(HAP2TLVParamCharacteristicSignature *)self setCharacteristicProperties:v29];
    [(HAP2TLVParamCharacteristicSignature *)self setUserDescription:v30];
    [(HAP2TLVParamCharacteristicSignature *)self setBluetoothFormat:v31];
    [(HAP2TLVParamCharacteristicSignature *)self setValidRange:v35];
    [(HAP2TLVParamCharacteristicSignature *)self setStepValue:v34];
    [(HAP2TLVParamCharacteristicSignature *)self setValidValues:v33];
    [(HAP2TLVParamCharacteristicSignature *)self setValidValuesRange:v32];
    v39 = v32;
    v9 = 0;
    v36 = 1;
    goto LABEL_52;
  }

  v9 = 0;
  v10 = 0;
  v46 = 0;
  v47 = 0;
  v11 = 0;
  v44 = 0;
  v45 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v12 = v7 + v8;
  while (1)
  {
    v67 = 0;
    v65[1] = 0;
    v66 = 0;
    v65[0] = 0;
    Next = TLV8GetNext();
    if (Next)
    {
      v29 = v11;
      v27 = v10;
      if (a4)
      {
        HMErrorFromOSStatus(Next);
        *a4 = v36 = 0;
      }

      else
      {
        v36 = 0;
      }

      v30 = v46;
      v28 = v47;
      v35 = v44;
      v31 = v45;
      goto LABEL_51;
    }

    if (!v66)
    {
      break;
    }

    if (v67 <= 0xBu)
    {
      if (v67 > 9u)
      {
        if (v67 == 10)
        {
          v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v61 = v9;
          v23 = [HAP2TLVCharacteristicPropertiesWrapper parsedFromData:v14 error:&v61];
          v19 = v61;

          v17 = v11;
          v11 = v23;
LABEL_27:
          v9 = v19;
LABEL_28:

          goto LABEL_35;
        }

        if (v67 == 11)
        {
          v60 = v9;
          v14 = HAPTLVParseContiguousTlvs(11, v7, v12, v65, &v60);
          v15 = v60;

          if (!v15)
          {
            v59 = 0;
            v20 = [MEMORY[0x277CCACA8] parsedFromData:v14 error:&v59];
            v9 = v59;
            v17 = v46;
            v46 = v20;
            goto LABEL_28;
          }

          goto LABEL_34;
        }
      }

      else
      {
        if (v67 == 4)
        {
          v63 = v9;
          v14 = HAPTLVParseContiguousTlvs(4, v7, v12, v65, &v63);
          v15 = v63;

          if (v15)
          {
            goto LABEL_34;
          }

          v62 = 0;
          v22 = [MEMORY[0x277CBEA90] parsedFromData:v14 error:&v62];
          v9 = v62;
          v17 = v47;
          v47 = v22;
          goto LABEL_28;
        }

        if (v67 == 5)
        {
          v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v64 = v9;
          v18 = [HAPTLVUnsignedNumberValue parsedFromData:v14 error:&v64];
          v19 = v64;

          v17 = v10;
          v10 = v18;
          goto LABEL_27;
        }
      }
    }

    else if (v67 <= 0xDu)
    {
      if (v67 == 12)
      {
        v58 = v9;
        v14 = HAPTLVParseContiguousTlvs(12, v7, v12, v65, &v58);
        v15 = v58;

        if (v15)
        {
          goto LABEL_34;
        }

        v57 = 0;
        v25 = [MEMORY[0x277CBEA90] parsedFromData:v14 error:&v57];
        v9 = v57;
        v17 = v45;
        v45 = v25;
        goto LABEL_28;
      }

      if (v67 == 13)
      {
        v56 = v9;
        v14 = HAPTLVParseContiguousTlvs(13, v7, v12, v65, &v56);
        v15 = v56;

        if (!v15)
        {
          v55 = 0;
          v21 = [MEMORY[0x277CBEA90] parsedFromData:v14 error:&v55];
          v9 = v55;
          v17 = v44;
          v44 = v21;
          goto LABEL_28;
        }

LABEL_34:
        v9 = v15;
LABEL_35:
      }
    }

    else
    {
      switch(v67)
      {
        case 0xEu:
          v54 = v9;
          v14 = HAPTLVParseContiguousTlvs(14, v7, v12, v65, &v54);
          v15 = v54;

          if (v15)
          {
            goto LABEL_34;
          }

          v53 = 0;
          v24 = [MEMORY[0x277CBEA90] parsedFromData:v14 error:&v53];
          v9 = v53;
          v17 = v43;
          v43 = v24;
          goto LABEL_28;
        case 0x11u:
          v52 = v9;
          v14 = HAPTLVParseContiguousTlvs(17, v7, v12, v65, &v52);
          v15 = v52;

          if (v15)
          {
            goto LABEL_34;
          }

          v51 = 0;
          v26 = [MEMORY[0x277CBEA90] parsedFromData:v14 error:&v51];
          v9 = v51;
          v17 = v42;
          v42 = v26;
          goto LABEL_28;
        case 0x12u:
          v50 = v9;
          v14 = HAPTLVParseContiguousTlvs(18, v7, v12, v65, &v50);
          v15 = v50;

          if (!v15)
          {
            v49 = 0;
            v16 = [MEMORY[0x277CBEA90] parsedFromData:v14 error:&v49];
            v9 = v49;
            v17 = v41;
            v41 = v16;
            goto LABEL_28;
          }

          goto LABEL_34;
      }
    }

    v7 = v65[0];
    if (v65[0] >= v12)
    {
      goto LABEL_43;
    }
  }

  v37 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

  v9 = v37;
LABEL_43:
  v29 = v11;
  if (!v9)
  {
    v30 = v46;
    v28 = v47;
    v35 = v44;
    v31 = v45;
    v27 = v10;
    v33 = v42;
    v34 = v43;
    v32 = v41;
    goto LABEL_47;
  }

  v27 = v10;
  v30 = v46;
  v28 = v47;
  v35 = v44;
  v31 = v45;
  if (a4)
  {
    v38 = v9;
    v36 = 0;
    *a4 = v9;
  }

  else
  {
    v36 = 0;
  }

LABEL_51:
  v33 = v42;
  v34 = v43;
  v39 = v41;
LABEL_52:

  return v36;
}

- (HAP2TLVParamCharacteristicSignature)initWithInstanceID:(id)a3 characteristicType:(id)a4 characteristicProperties:(id)a5 userDescription:(id)a6 bluetoothFormat:(id)a7 validRange:(id)a8 stepValue:(id)a9 validValues:(id)a10 validValuesRange:(id)a11
{
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v25 = a7;
  v24 = a8;
  v23 = a9;
  v22 = a10;
  v18 = a11;
  v30.receiver = self;
  v30.super_class = HAP2TLVParamCharacteristicSignature;
  v19 = [(HAP2TLVParamCharacteristicSignature *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_instanceID, a3);
    objc_storeStrong(&v20->_characteristicType, a4);
    objc_storeStrong(&v20->_characteristicProperties, a5);
    objc_storeStrong(&v20->_userDescription, a6);
    objc_storeStrong(&v20->_bluetoothFormat, a7);
    objc_storeStrong(&v20->_validRange, a8);
    objc_storeStrong(&v20->_stepValue, a9);
    objc_storeStrong(&v20->_validValues, a10);
    objc_storeStrong(&v20->_validValuesRange, a11);
  }

  return v20;
}

- (HAP2TLVParamCharacteristicSignature)init
{
  v3.receiver = self;
  v3.super_class = HAP2TLVParamCharacteristicSignature;
  return [(HAP2TLVParamCharacteristicSignature *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAP2TLVParamCharacteristicSignature);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAP2TLVParamCharacteristicSignature *)v6 parseFromData:v5 error:&v11];
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