@interface HAP2TLVParamCharacteristicSignature
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAP2TLVParamCharacteristicSignature)init;
- (HAP2TLVParamCharacteristicSignature)initWithInstanceID:(id)d characteristicType:(id)type characteristicProperties:(id)properties userDescription:(id)description bluetoothFormat:(id)format validRange:(id)range stepValue:(id)value validValues:(id)self0 validValuesRange:(id)self1;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAP2TLVParamCharacteristicSignature

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  instanceID = [(HAP2TLVParamCharacteristicSignature *)self instanceID];
  characteristicType = [(HAP2TLVParamCharacteristicSignature *)self characteristicType];
  characteristicProperties = [(HAP2TLVParamCharacteristicSignature *)self characteristicProperties];
  userDescription = [(HAP2TLVParamCharacteristicSignature *)self userDescription];
  bluetoothFormat = [(HAP2TLVParamCharacteristicSignature *)self bluetoothFormat];
  validRange = [(HAP2TLVParamCharacteristicSignature *)self validRange];
  stepValue = [(HAP2TLVParamCharacteristicSignature *)self stepValue];
  validValues = [(HAP2TLVParamCharacteristicSignature *)self validValues];
  validValuesRange = [(HAP2TLVParamCharacteristicSignature *)self validValuesRange];
  v13 = [v3 stringWithFormat:@"<HAP2TLVParamCharacteristicSignature instanceID=%@, characteristicType=%@, characteristicProperties=%@, userDescription=%@, bluetoothFormat=%@, validRange=%@, stepValue=%@, validValues=%@, validValuesRange=%@>", instanceID, characteristicType, characteristicProperties, userDescription, bluetoothFormat, validRange, stepValue, validValues, validValuesRange];

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      instanceID = [(HAP2TLVParamCharacteristicSignature *)self instanceID];
      instanceID2 = [(HAP2TLVParamCharacteristicSignature *)v5 instanceID];
      if (instanceID != instanceID2)
      {
        instanceID3 = [(HAP2TLVParamCharacteristicSignature *)self instanceID];
        instanceID4 = [(HAP2TLVParamCharacteristicSignature *)v5 instanceID];
        v74 = instanceID3;
        if (![instanceID3 isEqual:instanceID4])
        {
          v10 = 0;
          goto LABEL_54;
        }

        v73 = instanceID4;
      }

      characteristicType = [(HAP2TLVParamCharacteristicSignature *)self characteristicType];
      characteristicType2 = [(HAP2TLVParamCharacteristicSignature *)v5 characteristicType];
      if (characteristicType != characteristicType2)
      {
        characteristicType3 = [(HAP2TLVParamCharacteristicSignature *)self characteristicType];
        characteristicType4 = [(HAP2TLVParamCharacteristicSignature *)v5 characteristicType];
        if (![characteristicType3 isEqual:characteristicType4])
        {
          v10 = 0;
LABEL_52:

LABEL_53:
          instanceID4 = v73;
          if (instanceID == instanceID2)
          {
LABEL_55:

            goto LABEL_56;
          }

LABEL_54:

          goto LABEL_55;
        }

        v71 = characteristicType4;
        v72 = characteristicType3;
      }

      characteristicProperties = [(HAP2TLVParamCharacteristicSignature *)self characteristicProperties];
      characteristicProperties2 = [(HAP2TLVParamCharacteristicSignature *)v5 characteristicProperties];
      if (characteristicProperties == characteristicProperties2)
      {
        v67 = characteristicType2;
        v18 = characteristicType;
      }

      else
      {
        characteristicProperties3 = [(HAP2TLVParamCharacteristicSignature *)self characteristicProperties];
        characteristicProperties4 = [(HAP2TLVParamCharacteristicSignature *)v5 characteristicProperties];
        v66 = characteristicProperties3;
        if (![characteristicProperties3 isEqual:characteristicProperties4])
        {
          v10 = 0;
LABEL_50:

LABEL_51:
          characteristicType4 = v71;
          characteristicType3 = v72;
          if (characteristicType == characteristicType2)
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        }

        v67 = characteristicType2;
        v18 = characteristicType;
      }

      userDescription = [(HAP2TLVParamCharacteristicSignature *)self userDescription];
      userDescription2 = [(HAP2TLVParamCharacteristicSignature *)v5 userDescription];
      v69 = characteristicProperties2;
      v70 = userDescription;
      v68 = characteristicProperties;
      if (userDescription != userDescription2)
      {
        userDescription3 = [(HAP2TLVParamCharacteristicSignature *)self userDescription];
        userDescription4 = [(HAP2TLVParamCharacteristicSignature *)v5 userDescription];
        v62 = userDescription3;
        if (![userDescription3 isEqual:?])
        {
          v10 = 0;
          v22 = userDescription2;
          v23 = v70;
          characteristicType = v18;
          characteristicType2 = v67;
LABEL_48:

LABEL_49:
          characteristicProperties = v68;
          characteristicProperties2 = v69;
          if (v68 == v69)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        }
      }

      bluetoothFormat = [(HAP2TLVParamCharacteristicSignature *)self bluetoothFormat];
      bluetoothFormat2 = [(HAP2TLVParamCharacteristicSignature *)v5 bluetoothFormat];
      v64 = bluetoothFormat;
      if (bluetoothFormat != bluetoothFormat2)
      {
        bluetoothFormat3 = [(HAP2TLVParamCharacteristicSignature *)self bluetoothFormat];
        bluetoothFormat4 = [(HAP2TLVParamCharacteristicSignature *)v5 bluetoothFormat];
        v58 = bluetoothFormat3;
        if (![bluetoothFormat3 isEqual:?])
        {
          v22 = userDescription2;
          v10 = 0;
          v26 = bluetoothFormat2;
          characteristicType = v18;
          characteristicType2 = v67;
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

      validRange = [(HAP2TLVParamCharacteristicSignature *)self validRange];
      validRange2 = [(HAP2TLVParamCharacteristicSignature *)v5 validRange];
      v60 = validRange;
      if (validRange == validRange2)
      {
        v55 = userDescription2;
      }

      else
      {
        validRange3 = [(HAP2TLVParamCharacteristicSignature *)self validRange];
        validRange4 = [(HAP2TLVParamCharacteristicSignature *)v5 validRange];
        v53 = validRange3;
        v29 = [validRange3 isEqual:?];
        v30 = userDescription2;
        if (!v29)
        {
          v10 = 0;
          characteristicType = v18;
          characteristicType2 = v67;
          v34 = validRange2;
          v35 = v60;
          goto LABEL_43;
        }

        v55 = userDescription2;
      }

      characteristicType = v18;
      stepValue = [(HAP2TLVParamCharacteristicSignature *)self stepValue];
      stepValue2 = [(HAP2TLVParamCharacteristicSignature *)v5 stepValue];
      v56 = stepValue;
      characteristicType2 = v67;
      if (stepValue != stepValue2)
      {
        stepValue3 = [(HAP2TLVParamCharacteristicSignature *)self stepValue];
        stepValue4 = [(HAP2TLVParamCharacteristicSignature *)v5 stepValue];
        v49 = stepValue3;
        if (![stepValue3 isEqual:stepValue4])
        {
          v10 = 0;
          v33 = stepValue2;
LABEL_41:

LABEL_42:
          v34 = validRange2;
          v35 = v60;
          v30 = v55;
          if (v60 == validRange2)
          {
            v22 = v55;
LABEL_45:

            v26 = bluetoothFormat2;
            if (v64 == bluetoothFormat2)
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

      validValues = [(HAP2TLVParamCharacteristicSignature *)self validValues];
      validValues2 = [(HAP2TLVParamCharacteristicSignature *)v5 validValues];
      v51 = validValues;
      if (validValues == validValues2 || (-[HAP2TLVParamCharacteristicSignature validValues](self, "validValues"), v37 = objc_claimAutoreleasedReturnValue(), -[HAP2TLVParamCharacteristicSignature validValues](v5, "validValues"), v46 = objc_claimAutoreleasedReturnValue(), v47 = v37, [v37 isEqual:?]))
      {
        validValuesRange = [(HAP2TLVParamCharacteristicSignature *)self validValuesRange];
        validValuesRange2 = [(HAP2TLVParamCharacteristicSignature *)v5 validValuesRange];
        if (validValuesRange == validValuesRange2)
        {

          v10 = 1;
        }

        else
        {
          v45 = validValuesRange2;
          validValuesRange3 = [(HAP2TLVParamCharacteristicSignature *)self validValuesRange];
          [(HAP2TLVParamCharacteristicSignature *)v5 validValuesRange];
          v41 = v44 = validValuesRange;
          v10 = [validValuesRange3 isEqual:v41];
        }

        v38 = validValues2;
        if (v51 == validValues2)
        {
LABEL_40:

          v33 = stepValue2;
          if (v56 == stepValue2)
          {
            goto LABEL_42;
          }

          goto LABEL_41;
        }
      }

      else
      {
        v10 = 0;
        v38 = validValues2;
      }

      goto LABEL_40;
    }

    v10 = 0;
  }

LABEL_56:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HAP2TLVParamCharacteristicSignature allocWithZone:zone];
  instanceID = [(HAP2TLVParamCharacteristicSignature *)self instanceID];
  characteristicType = [(HAP2TLVParamCharacteristicSignature *)self characteristicType];
  characteristicProperties = [(HAP2TLVParamCharacteristicSignature *)self characteristicProperties];
  userDescription = [(HAP2TLVParamCharacteristicSignature *)self userDescription];
  bluetoothFormat = [(HAP2TLVParamCharacteristicSignature *)self bluetoothFormat];
  validRange = [(HAP2TLVParamCharacteristicSignature *)self validRange];
  stepValue = [(HAP2TLVParamCharacteristicSignature *)self stepValue];
  validValues = [(HAP2TLVParamCharacteristicSignature *)self validValues];
  validValuesRange = [(HAP2TLVParamCharacteristicSignature *)self validValuesRange];
  v14 = [(HAP2TLVParamCharacteristicSignature *)v4 initWithInstanceID:instanceID characteristicType:characteristicType characteristicProperties:characteristicProperties userDescription:userDescription bluetoothFormat:bluetoothFormat validRange:validRange stepValue:stepValue validValues:validValues validValuesRange:validValuesRange];

  return v14;
}

- (id)serializeWithError:(id *)error
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
  instanceID = [(HAP2TLVParamCharacteristicSignature *)self instanceID];

  if (instanceID)
  {
    instanceID2 = [(HAP2TLVParamCharacteristicSignature *)self instanceID];
    v63 = 0;
    v7 = [instanceID2 serializeWithError:&v63];
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
      if (error)
      {
        HMErrorFromOSStatus(v10);
        v8 = 0;
        *error = v11 = 0;
        goto LABEL_72;
      }

      v8 = 0;
LABEL_71:
      v11 = 0;
      goto LABEL_72;
    }
  }

  characteristicType = [(HAP2TLVParamCharacteristicSignature *)self characteristicType];

  if (characteristicType)
  {
    characteristicType2 = [(HAP2TLVParamCharacteristicSignature *)self characteristicType];
    v62 = 0;
    v7 = [characteristicType2 serializeWithError:&v62];
    v8 = v62;

    if (!v8)
    {
      bytes = [v7 bytes];
      v15 = bytes + [v7 length];
      while (1)
      {
        v16 = (v15 - bytes) >= 255 ? 255 : v15 - bytes;
        v9 = TLV8BufferAppend();
        if (v9)
        {
          goto LABEL_4;
        }

        bytes += v16;
        if (bytes >= v15)
        {

          goto LABEL_18;
        }
      }
    }

    goto LABEL_69;
  }

LABEL_18:
  characteristicProperties = [(HAP2TLVParamCharacteristicSignature *)self characteristicProperties];

  if (characteristicProperties)
  {
    characteristicProperties2 = [(HAP2TLVParamCharacteristicSignature *)self characteristicProperties];
    v61 = 0;
    v7 = [characteristicProperties2 serializeWithError:&v61];
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

  userDescription = [(HAP2TLVParamCharacteristicSignature *)self userDescription];

  if (userDescription)
  {
    userDescription2 = [(HAP2TLVParamCharacteristicSignature *)self userDescription];
    v60 = 0;
    v7 = [userDescription2 serializeWithError:&v60];
    v8 = v60;

    if (!v8)
    {
      bytes2 = [v7 bytes];
      v22 = bytes2 + [v7 length];
      while (1)
      {
        v23 = (v22 - bytes2) >= 255 ? 255 : v22 - bytes2;
        v9 = TLV8BufferAppend();
        if (v9)
        {
          goto LABEL_4;
        }

        bytes2 += v23;
        if (bytes2 >= v22)
        {

          goto LABEL_31;
        }
      }
    }

    goto LABEL_69;
  }

LABEL_31:
  bluetoothFormat = [(HAP2TLVParamCharacteristicSignature *)self bluetoothFormat];

  if (bluetoothFormat)
  {
    bluetoothFormat2 = [(HAP2TLVParamCharacteristicSignature *)self bluetoothFormat];
    v59 = 0;
    v7 = [bluetoothFormat2 serializeWithError:&v59];
    v8 = v59;

    if (!v8)
    {
      bytes3 = [v7 bytes];
      v27 = bytes3 + [v7 length];
      while (1)
      {
        v28 = (v27 - bytes3) >= 255 ? 255 : v27 - bytes3;
        v9 = TLV8BufferAppend();
        if (v9)
        {
          goto LABEL_4;
        }

        bytes3 += v28;
        if (bytes3 >= v27)
        {

          goto LABEL_40;
        }
      }
    }

    goto LABEL_69;
  }

LABEL_40:
  validRange = [(HAP2TLVParamCharacteristicSignature *)self validRange];

  if (validRange)
  {
    validRange2 = [(HAP2TLVParamCharacteristicSignature *)self validRange];
    v58 = 0;
    v7 = [validRange2 serializeWithError:&v58];
    v8 = v58;

    if (!v8)
    {
      bytes4 = [v7 bytes];
      v32 = bytes4 + [v7 length];
      while (1)
      {
        v33 = (v32 - bytes4) >= 255 ? 255 : v32 - bytes4;
        v9 = TLV8BufferAppend();
        if (v9)
        {
          goto LABEL_4;
        }

        bytes4 += v33;
        if (bytes4 >= v32)
        {

          goto LABEL_49;
        }
      }
    }

    goto LABEL_69;
  }

LABEL_49:
  stepValue = [(HAP2TLVParamCharacteristicSignature *)self stepValue];

  if (stepValue)
  {
    stepValue2 = [(HAP2TLVParamCharacteristicSignature *)self stepValue];
    v57 = 0;
    v7 = [stepValue2 serializeWithError:&v57];
    v8 = v57;

    if (!v8)
    {
      bytes5 = [v7 bytes];
      v37 = bytes5 + [v7 length];
      while (1)
      {
        v38 = (v37 - bytes5) >= 255 ? 255 : v37 - bytes5;
        v9 = TLV8BufferAppend();
        if (v9)
        {
          goto LABEL_4;
        }

        bytes5 += v38;
        if (bytes5 >= v37)
        {

          goto LABEL_58;
        }
      }
    }

    goto LABEL_69;
  }

LABEL_58:
  validValues = [(HAP2TLVParamCharacteristicSignature *)self validValues];

  if (validValues)
  {
    validValues2 = [(HAP2TLVParamCharacteristicSignature *)self validValues];
    v56 = 0;
    v7 = [validValues2 serializeWithError:&v56];
    v8 = v56;

    if (!v8)
    {
      bytes6 = [v7 bytes];
      v42 = bytes6 + [v7 length];
      while (1)
      {
        v43 = (v42 - bytes6) >= 255 ? 255 : v42 - bytes6;
        v9 = TLV8BufferAppend();
        if (v9)
        {
          goto LABEL_4;
        }

        bytes6 += v43;
        if (bytes6 >= v42)
        {

          goto LABEL_67;
        }
      }
    }

LABEL_69:

    if (error)
    {
      v46 = v8;
      v11 = 0;
      *error = v8;
      goto LABEL_72;
    }

    goto LABEL_71;
  }

LABEL_67:
  validValuesRange = [(HAP2TLVParamCharacteristicSignature *)self validValuesRange];

  if (validValuesRange)
  {
    validValuesRange2 = [(HAP2TLVParamCharacteristicSignature *)self validValuesRange];
    v55 = 0;
    v7 = [validValuesRange2 serializeWithError:&v55];
    v8 = v55;

    if (v8)
    {
      goto LABEL_69;
    }

    bytes7 = [v7 bytes];
    v50 = bytes7 + [v7 length];
    do
    {
      if ((v50 - bytes7) >= 255)
      {
        v51 = 255;
      }

      else
      {
        v51 = v50 - bytes7;
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

      bytes7 += v53;
      if (v52)
      {
        v54 = 1;
      }

      else
      {
        v54 = bytes7 >= v50;
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

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v48 = dataCopy;
  v8 = [dataCopy length];
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
  v12 = bytes + v8;
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
      if (error)
      {
        HMErrorFromOSStatus(Next);
        *error = v36 = 0;
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
          v14 = HAPTLVParseContiguousTlvs(11, bytes, v12, v65, &v60);
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
          v14 = HAPTLVParseContiguousTlvs(4, bytes, v12, v65, &v63);
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
        v14 = HAPTLVParseContiguousTlvs(12, bytes, v12, v65, &v58);
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
        v14 = HAPTLVParseContiguousTlvs(13, bytes, v12, v65, &v56);
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
          v14 = HAPTLVParseContiguousTlvs(14, bytes, v12, v65, &v54);
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
          v14 = HAPTLVParseContiguousTlvs(17, bytes, v12, v65, &v52);
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
          v14 = HAPTLVParseContiguousTlvs(18, bytes, v12, v65, &v50);
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

    bytes = v65[0];
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
  if (error)
  {
    v38 = v9;
    v36 = 0;
    *error = v9;
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

- (HAP2TLVParamCharacteristicSignature)initWithInstanceID:(id)d characteristicType:(id)type characteristicProperties:(id)properties userDescription:(id)description bluetoothFormat:(id)format validRange:(id)range stepValue:(id)value validValues:(id)self0 validValuesRange:(id)self1
{
  dCopy = d;
  typeCopy = type;
  propertiesCopy = properties;
  descriptionCopy = description;
  formatCopy = format;
  rangeCopy = range;
  valueCopy = value;
  valuesCopy = values;
  valuesRangeCopy = valuesRange;
  v30.receiver = self;
  v30.super_class = HAP2TLVParamCharacteristicSignature;
  v19 = [(HAP2TLVParamCharacteristicSignature *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_instanceID, d);
    objc_storeStrong(&v20->_characteristicType, type);
    objc_storeStrong(&v20->_characteristicProperties, properties);
    objc_storeStrong(&v20->_userDescription, description);
    objc_storeStrong(&v20->_bluetoothFormat, format);
    objc_storeStrong(&v20->_validRange, range);
    objc_storeStrong(&v20->_stepValue, value);
    objc_storeStrong(&v20->_validValues, values);
    objc_storeStrong(&v20->_validValuesRange, valuesRange);
  }

  return v20;
}

- (HAP2TLVParamCharacteristicSignature)init
{
  v3.receiver = self;
  v3.super_class = HAP2TLVParamCharacteristicSignature;
  return [(HAP2TLVParamCharacteristicSignature *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAP2TLVParamCharacteristicSignature);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAP2TLVParamCharacteristicSignature *)v6 parseFromData:dataCopy error:&v11];
    v8 = v11;
    if (v8)
    {

      if (error)
      {
        v9 = v8;
        v7 = 0;
        *error = v8;
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