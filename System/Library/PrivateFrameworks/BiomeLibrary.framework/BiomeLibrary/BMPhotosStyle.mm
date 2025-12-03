@interface BMPhotosStyle
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMPhotosStyle)initWithIdentifier:(id)identifier styleChoice:(id)choice styleSelectionType:(int)type sliderValues:(id)values userLibrarySize:(int)size userLibraryAgeInDays:(int)days brightnessValue:(id)value stillImageProcessingFlags:(id)self0 camera:(id)self1 stillImageCaptureType:(id)self2 faceCount:(id)self3 petCount:(id)self4 version:(id)self5 sceneForAsset:(id)self6 subjectForAsset:(id)self7;
- (BMPhotosStyle)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_sliderValuesJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMPhotosStyle

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [(BMPhotosStyle *)self identifier];
    identifier2 = [v5 identifier];
    v8 = identifier2;
    if (identifier == identifier2)
    {
    }

    else
    {
      identifier3 = [(BMPhotosStyle *)self identifier];
      identifier4 = [v5 identifier];
      v11 = [identifier3 isEqual:identifier4];

      if (!v11)
      {
        goto LABEL_55;
      }
    }

    styleChoice = [(BMPhotosStyle *)self styleChoice];
    styleChoice2 = [v5 styleChoice];
    v15 = styleChoice2;
    if (styleChoice == styleChoice2)
    {
    }

    else
    {
      styleChoice3 = [(BMPhotosStyle *)self styleChoice];
      styleChoice4 = [v5 styleChoice];
      v18 = [styleChoice3 isEqual:styleChoice4];

      if (!v18)
      {
        goto LABEL_55;
      }
    }

    styleSelectionType = [(BMPhotosStyle *)self styleSelectionType];
    if (styleSelectionType == [v5 styleSelectionType])
    {
      sliderValues = [(BMPhotosStyle *)self sliderValues];
      sliderValues2 = [v5 sliderValues];
      v22 = sliderValues2;
      if (sliderValues == sliderValues2)
      {
      }

      else
      {
        sliderValues3 = [(BMPhotosStyle *)self sliderValues];
        sliderValues4 = [v5 sliderValues];
        v25 = [sliderValues3 isEqual:sliderValues4];

        if (!v25)
        {
          goto LABEL_55;
        }
      }

      userLibrarySize = [(BMPhotosStyle *)self userLibrarySize];
      if (userLibrarySize != [v5 userLibrarySize])
      {
        goto LABEL_55;
      }

      userLibraryAgeInDays = [(BMPhotosStyle *)self userLibraryAgeInDays];
      if (userLibraryAgeInDays != [v5 userLibraryAgeInDays])
      {
        goto LABEL_55;
      }

      if (-[BMPhotosStyle hasBrightnessValue](self, "hasBrightnessValue") || [v5 hasBrightnessValue])
      {
        if (![(BMPhotosStyle *)self hasBrightnessValue])
        {
          goto LABEL_55;
        }

        if (![v5 hasBrightnessValue])
        {
          goto LABEL_55;
        }

        [(BMPhotosStyle *)self brightnessValue];
        v29 = v28;
        [v5 brightnessValue];
        if (v29 != v30)
        {
          goto LABEL_55;
        }
      }

      if (-[BMPhotosStyle hasStillImageProcessingFlags](self, "hasStillImageProcessingFlags") || [v5 hasStillImageProcessingFlags])
      {
        if (![(BMPhotosStyle *)self hasStillImageProcessingFlags])
        {
          goto LABEL_55;
        }

        if (![v5 hasStillImageProcessingFlags])
        {
          goto LABEL_55;
        }

        stillImageProcessingFlags = [(BMPhotosStyle *)self stillImageProcessingFlags];
        if (stillImageProcessingFlags != [v5 stillImageProcessingFlags])
        {
          goto LABEL_55;
        }
      }

      if (-[BMPhotosStyle hasCamera](self, "hasCamera") || [v5 hasCamera])
      {
        if (![(BMPhotosStyle *)self hasCamera])
        {
          goto LABEL_55;
        }

        if (![v5 hasCamera])
        {
          goto LABEL_55;
        }

        camera = [(BMPhotosStyle *)self camera];
        if (camera != [v5 camera])
        {
          goto LABEL_55;
        }
      }

      if (-[BMPhotosStyle hasStillImageCaptureType](self, "hasStillImageCaptureType") || [v5 hasStillImageCaptureType])
      {
        if (![(BMPhotosStyle *)self hasStillImageCaptureType])
        {
          goto LABEL_55;
        }

        if (![v5 hasStillImageCaptureType])
        {
          goto LABEL_55;
        }

        stillImageCaptureType = [(BMPhotosStyle *)self stillImageCaptureType];
        if (stillImageCaptureType != [v5 stillImageCaptureType])
        {
          goto LABEL_55;
        }
      }

      if (-[BMPhotosStyle hasFaceCount](self, "hasFaceCount") || [v5 hasFaceCount])
      {
        if (![(BMPhotosStyle *)self hasFaceCount])
        {
          goto LABEL_55;
        }

        if (![v5 hasFaceCount])
        {
          goto LABEL_55;
        }

        faceCount = [(BMPhotosStyle *)self faceCount];
        if (faceCount != [v5 faceCount])
        {
          goto LABEL_55;
        }
      }

      if (-[BMPhotosStyle hasPetCount](self, "hasPetCount") || [v5 hasPetCount])
      {
        if (![(BMPhotosStyle *)self hasPetCount])
        {
          goto LABEL_55;
        }

        if (![v5 hasPetCount])
        {
          goto LABEL_55;
        }

        petCount = [(BMPhotosStyle *)self petCount];
        if (petCount != [v5 petCount])
        {
          goto LABEL_55;
        }
      }

      if (-[BMPhotosStyle hasVersion](self, "hasVersion") || [v5 hasVersion])
      {
        if (![(BMPhotosStyle *)self hasVersion])
        {
          goto LABEL_55;
        }

        if (![v5 hasVersion])
        {
          goto LABEL_55;
        }

        version = [(BMPhotosStyle *)self version];
        if (version != [v5 version])
        {
          goto LABEL_55;
        }
      }

      sceneForAsset = [(BMPhotosStyle *)self sceneForAsset];
      sceneForAsset2 = [v5 sceneForAsset];
      v39 = sceneForAsset2;
      if (sceneForAsset == sceneForAsset2)
      {
      }

      else
      {
        sceneForAsset3 = [(BMPhotosStyle *)self sceneForAsset];
        sceneForAsset4 = [v5 sceneForAsset];
        v42 = [sceneForAsset3 isEqual:sceneForAsset4];

        if (!v42)
        {
          goto LABEL_55;
        }
      }

      subjectForAsset = [(BMPhotosStyle *)self subjectForAsset];
      subjectForAsset2 = [v5 subjectForAsset];
      if (subjectForAsset == subjectForAsset2)
      {
        v12 = 1;
      }

      else
      {
        subjectForAsset3 = [(BMPhotosStyle *)self subjectForAsset];
        subjectForAsset4 = [v5 subjectForAsset];
        v12 = [subjectForAsset3 isEqual:subjectForAsset4];
      }

      goto LABEL_56;
    }

LABEL_55:
    v12 = 0;
LABEL_56:

    goto LABEL_57;
  }

  v12 = 0;
LABEL_57:

  return v12;
}

- (id)jsonDictionary
{
  v56[15] = *MEMORY[0x1E69E9840];
  identifier = [(BMPhotosStyle *)self identifier];
  styleChoice = [(BMPhotosStyle *)self styleChoice];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPhotosStyle styleSelectionType](self, "styleSelectionType")}];
  _sliderValuesJSONArray = [(BMPhotosStyle *)self _sliderValuesJSONArray];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPhotosStyle userLibrarySize](self, "userLibrarySize")}];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPhotosStyle userLibraryAgeInDays](self, "userLibraryAgeInDays")}];
  if (![(BMPhotosStyle *)self hasBrightnessValue]|| ([(BMPhotosStyle *)self brightnessValue], fabs(v9) == INFINITY))
  {
    v11 = 0;
  }

  else
  {
    [(BMPhotosStyle *)self brightnessValue];
    v10 = MEMORY[0x1E696AD98];
    [(BMPhotosStyle *)self brightnessValue];
    v11 = [v10 numberWithDouble:?];
  }

  if ([(BMPhotosStyle *)self hasStillImageProcessingFlags])
  {
    v54 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPhotosStyle stillImageProcessingFlags](self, "stillImageProcessingFlags")}];
  }

  else
  {
    v54 = 0;
  }

  if ([(BMPhotosStyle *)self hasCamera])
  {
    v53 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPhotosStyle camera](self, "camera")}];
  }

  else
  {
    v53 = 0;
  }

  if ([(BMPhotosStyle *)self hasStillImageCaptureType])
  {
    v52 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPhotosStyle stillImageCaptureType](self, "stillImageCaptureType")}];
  }

  else
  {
    v52 = 0;
  }

  if ([(BMPhotosStyle *)self hasFaceCount])
  {
    v51 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPhotosStyle faceCount](self, "faceCount")}];
  }

  else
  {
    v51 = 0;
  }

  if ([(BMPhotosStyle *)self hasPetCount])
  {
    v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPhotosStyle petCount](self, "petCount")}];
  }

  else
  {
    v50 = 0;
  }

  if ([(BMPhotosStyle *)self hasVersion])
  {
    v49 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPhotosStyle version](self, "version")}];
  }

  else
  {
    v49 = 0;
  }

  sceneForAsset = [(BMPhotosStyle *)self sceneForAsset];
  subjectForAsset = [(BMPhotosStyle *)self subjectForAsset];
  v55[0] = @"identifier";
  null = identifier;
  if (!identifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v42 = null;
  v56[0] = null;
  v55[1] = @"styleChoice";
  null2 = styleChoice;
  if (!styleChoice)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = null2;
  v56[1] = null2;
  v55[2] = @"styleSelectionType";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = null3;
  v56[2] = null3;
  v55[3] = @"sliderValues";
  null4 = _sliderValuesJSONArray;
  if (!_sliderValuesJSONArray)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = null4;
  v56[3] = null4;
  v55[4] = @"userLibrarySize";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = null5;
  v56[4] = null5;
  v55[5] = @"userLibraryAgeInDays";
  null6 = v8;
  if (!v8)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = null6;
  v56[5] = null6;
  v55[6] = @"brightnessValue";
  null7 = v11;
  if (!v11)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v45 = v8;
  v46 = v7;
  v36 = null7;
  v56[6] = null7;
  v55[7] = @"stillImageProcessingFlags";
  null8 = v54;
  if (!v54)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = styleChoice;
  v56[7] = null8;
  v55[8] = @"camera";
  null9 = v53;
  if (!v53)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = null8;
  v56[8] = null9;
  v55[9] = @"stillImageCaptureType";
  null10 = v52;
  if (!v52)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = null9;
  v47 = v5;
  v56[9] = null10;
  v55[10] = @"faceCount";
  null11 = v51;
  if (!v51)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v44 = _sliderValuesJSONArray;
  v25 = identifier;
  v56[10] = null11;
  v55[11] = @"petCount";
  null12 = v50;
  if (!v50)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v21;
  v56[11] = null12;
  v55[12] = @"version";
  null13 = v49;
  if (!v49)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v56[12] = null13;
  v55[13] = @"sceneForAsset";
  null14 = sceneForAsset;
  if (!sceneForAsset)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v56[13] = null14;
  v55[14] = @"subjectForAsset";
  null15 = subjectForAsset;
  if (!subjectForAsset)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v56[14] = null15;
  v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:{15, v33}];
  if (!subjectForAsset)
  {
  }

  if (!sceneForAsset)
  {
  }

  if (!v49)
  {
  }

  if (!v50)
  {
  }

  if (!v51)
  {
  }

  if (!v52)
  {
  }

  if (!v53)
  {
  }

  if (!v54)
  {
  }

  if (v11)
  {
    if (v45)
    {
      goto LABEL_71;
    }
  }

  else
  {

    if (v45)
    {
LABEL_71:
      if (v46)
      {
        goto LABEL_72;
      }

      goto LABEL_81;
    }
  }

  if (v46)
  {
LABEL_72:
    if (v44)
    {
      goto LABEL_73;
    }

    goto LABEL_82;
  }

LABEL_81:

  if (v44)
  {
LABEL_73:
    if (v47)
    {
      goto LABEL_74;
    }

    goto LABEL_83;
  }

LABEL_82:

  if (v47)
  {
LABEL_74:
    if (v27)
    {
      goto LABEL_75;
    }

LABEL_84:

    if (v25)
    {
      goto LABEL_76;
    }

    goto LABEL_85;
  }

LABEL_83:

  if (!v27)
  {
    goto LABEL_84;
  }

LABEL_75:
  if (v25)
  {
    goto LABEL_76;
  }

LABEL_85:

LABEL_76:
  v31 = *MEMORY[0x1E69E9840];

  return v43;
}

- (id)_sliderValuesJSONArray
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  sliderValues = [(BMPhotosStyle *)self sliderValues];
  v5 = [sliderValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(sliderValues);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        [v9 doubleValue];
        if (fabs(v10) == INFINITY)
        {
          null = [MEMORY[0x1E695DFB0] null];
          [v3 addObject:null];
        }

        else
        {
          [v9 doubleValue];
          [v3 addObject:v9];
        }
      }

      v6 = [sliderValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMPhotosStyle)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v199[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v12 = objc_alloc(MEMORY[0x1E696ABC0]);
        v13 = *MEMORY[0x1E698F240];
        v198 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"identifier"];
        v199[0] = v14;
        v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v199 forKeys:&v198 count:1];
        v15 = [v12 initWithDomain:v13 code:2 userInfo:v7];
        v6 = 0;
        v16 = 0;
        *error = v15;
        goto LABEL_157;
      }

      v6 = 0;
      v16 = 0;
      goto LABEL_158;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [dictionaryCopy objectForKeyedSubscript:@"styleChoice"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v17 = objc_alloc(MEMORY[0x1E696ABC0]);
        v18 = *MEMORY[0x1E698F240];
        v196 = *MEMORY[0x1E696A578];
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"styleChoice"];
        v197 = v19;
        v158 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v197 forKeys:&v196 count:1];
        v20 = [v17 initWithDomain:v18 code:2 userInfo:?];
        v14 = 0;
        v16 = 0;
        *error = v20;
        v10 = v19;
        goto LABEL_156;
      }

      v14 = 0;
      v16 = 0;
      goto LABEL_157;
    }

    v157 = v7;
  }

  else
  {
    v157 = 0;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"styleSelectionType"];
  v155 = v5;
  v156 = v7;
  v158 = v8;
  if (v8 && (v9 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v9;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v46 = objc_alloc(MEMORY[0x1E696ABC0]);
          v47 = *MEMORY[0x1E698F240];
          v194 = *MEMORY[0x1E696A578];
          v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"styleSelectionType"];
          v195 = v21;
          v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v195 forKeys:&v194 count:1];
          v48 = [v46 initWithDomain:v47 code:2 userInfo:v24];
          v10 = 0;
          v16 = 0;
          *error = v48;
          v14 = v157;
          goto LABEL_154;
        }

        v10 = 0;
        v16 = 0;
        v14 = v157;
        goto LABEL_156;
      }

      v11 = [MEMORY[0x1E696AD98] numberWithInt:BMPhotosStyleStyleSelectionTypeFromString(v9)];
    }

    v10 = v11;
  }

  else
  {
    v10 = 0;
  }

  v21 = [dictionaryCopy objectForKeyedSubscript:@"sliderValues"];
  null = [MEMORY[0x1E695DFB0] null];
  v23 = [v21 isEqual:null];

  v153 = v6;
  v154 = v10;
  if (v23)
  {

    v21 = 0;
  }

  else if (v21)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v16 = 0;
        v14 = v157;
        goto LABEL_155;
      }

      v42 = objc_alloc(MEMORY[0x1E696ABC0]);
      v43 = *MEMORY[0x1E698F240];
      v192 = *MEMORY[0x1E696A578];
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"sliderValues"];
      v193 = v24;
      errorCopy4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v193 forKeys:&v192 count:1];
      v44 = [v42 initWithDomain:v43 code:2 userInfo:errorCopy4];
      v16 = 0;
      *error = v44;
LABEL_47:
      v14 = v157;
      goto LABEL_153;
    }
  }

  v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v21, "count")}];
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v21 = v21;
  v25 = [v21 countByEnumeratingWithState:&v161 objects:v191 count:16];
  if (!v25)
  {
    goto LABEL_36;
  }

  v26 = v25;
  v27 = *v162;
  while (2)
  {
    for (i = 0; i != v26; ++i)
    {
      if (*v162 != v27)
      {
        objc_enumerationMutation(v21);
      }

      v29 = *(*(&v161 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        errorCopy2 = error;
        if (error)
        {
          v33 = objc_alloc(MEMORY[0x1E696ABC0]);
          v34 = *MEMORY[0x1E698F240];
          v189 = *MEMORY[0x1E696A578];
          v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"sliderValues"];
          v190 = v35;
          v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v190 forKeys:&v189 count:1];
          v37 = v33;
          v38 = v34;
          v30 = v35;
LABEL_43:
          errorCopy3 = v36;
          v6 = v153;
          v14 = v157;
          v16 = 0;
          *errorCopy2 = [v37 initWithDomain:v38 code:2 userInfo:?];
          errorCopy4 = v21;
          goto LABEL_151;
        }

        goto LABEL_44;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v39 = objc_alloc(MEMORY[0x1E696ABC0]);
          v40 = *MEMORY[0x1E698F240];
          v187 = *MEMORY[0x1E696A578];
          errorCopy2 = error;
          v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"sliderValues"];
          v188 = v30;
          v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v188 forKeys:&v187 count:1];
          v37 = v39;
          v38 = v40;
          goto LABEL_43;
        }

LABEL_44:
        v16 = 0;
        errorCopy4 = v21;
        v6 = v153;
        goto LABEL_47;
      }

      [v24 addObject:v29];
    }

    v26 = [v21 countByEnumeratingWithState:&v161 objects:v191 count:16];
    if (v26)
    {
      continue;
    }

    break;
  }

LABEL_36:

  v30 = [dictionaryCopy objectForKeyedSubscript:@"userLibrarySize"];
  if (!v30 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    errorCopy4 = 0;
LABEL_58:
    v6 = v153;
    v49 = [dictionaryCopy objectForKeyedSubscript:@"userLibraryAgeInDays"];
    v150 = v49;
    if (v49)
    {
      v50 = v49;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v139 = errorCopy4;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v148 = v50;
          goto LABEL_65;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v148 = [MEMORY[0x1E696AD98] numberWithInt:BMPhotosStyleUserLibraryAgeInDaysTypeFromString(v50)];
          goto LABEL_65;
        }

        errorCopy3 = error;
        if (error)
        {
          v94 = objc_alloc(MEMORY[0x1E696ABC0]);
          v95 = *MEMORY[0x1E698F240];
          v183 = *MEMORY[0x1E696A578];
          v149 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"userLibraryAgeInDays"];
          v184 = v149;
          v152 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v184 forKeys:&v183 count:1];
          v96 = [v94 initWithDomain:v95 code:2 userInfo:v152];
          errorCopy3 = 0;
          v16 = 0;
          *error = v96;
          v14 = v157;
          errorCopy4 = v139;
          goto LABEL_149;
        }

        v16 = 0;
        v14 = v157;
        goto LABEL_150;
      }
    }

    v148 = 0;
LABEL_65:
    v152 = [dictionaryCopy objectForKeyedSubscript:@"brightnessValue"];
    if (v152 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v149 = v152;
        goto LABEL_68;
      }

      if (!error)
      {
        v149 = 0;
        v16 = 0;
        v14 = v157;
        errorCopy3 = v148;
        goto LABEL_149;
      }

      v68 = objc_alloc(MEMORY[0x1E696ABC0]);
      v140 = errorCopy4;
      v69 = v30;
      v70 = *MEMORY[0x1E698F240];
      v181 = *MEMORY[0x1E696A578];
      v64 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"brightnessValue"];
      v182 = v64;
      v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v182 forKeys:&v181 count:1];
      v72 = v70;
      v30 = v69;
      errorCopy4 = v140;
      v147 = v71;
      v73 = [v68 initWithDomain:v72 code:2 userInfo:?];
      v149 = 0;
      v16 = 0;
      *error = v73;
      v6 = v153;
    }

    else
    {
      v149 = 0;
LABEL_68:
      v51 = [dictionaryCopy objectForKeyedSubscript:@"stillImageProcessingFlags"];
      v147 = v51;
      if (!v51 || (v52 = v51, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v135 = 0;
LABEL_71:
        v53 = [dictionaryCopy objectForKeyedSubscript:@"camera"];
        v137 = v53;
        if (v53 && (v54 = v53, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v138 = v54;
            goto LABEL_74;
          }

          if (!error)
          {
            v138 = 0;
            v16 = 0;
            v14 = v157;
            errorCopy3 = v148;
            v64 = v135;
            goto LABEL_147;
          }

          v80 = objc_alloc(MEMORY[0x1E696ABC0]);
          v142 = errorCopy4;
          v81 = v30;
          v82 = *MEMORY[0x1E698F240];
          v177 = *MEMORY[0x1E696A578];
          v136 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"camera"];
          v178 = v136;
          v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v178 forKeys:&v177 count:1];
          v84 = v82;
          v30 = v81;
          errorCopy4 = v142;
          v134 = v83;
          v85 = [v80 initWithDomain:v84 code:2 userInfo:?];
          v138 = 0;
          v16 = 0;
          *error = v85;
          v6 = v153;
        }

        else
        {
          v138 = 0;
LABEL_74:
          v55 = [dictionaryCopy objectForKeyedSubscript:@"stillImageCaptureType"];
          v134 = v55;
          if (!v55 || (v56 = v55, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v136 = 0;
LABEL_77:
            v57 = [dictionaryCopy objectForKeyedSubscript:@"faceCount"];
            v132 = v57;
            if (!v57 || (v58 = v57, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v133 = 0;
LABEL_80:
              v59 = [dictionaryCopy objectForKeyedSubscript:@"petCount"];
              v128 = v59;
              if (!v59 || (v60 = v59, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v131 = 0;
LABEL_83:
                v61 = [dictionaryCopy objectForKeyedSubscript:@"version"];
                v130 = v30;
                v126 = v61;
                if (!v61 || (v62 = v61, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v129 = 0;
LABEL_86:
                  v63 = [dictionaryCopy objectForKeyedSubscript:@"sceneForAsset"];
                  v64 = v135;
                  v125 = v63;
                  if (v63 && (v65 = v63, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                  {
                    v143 = errorCopy4;
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v127 = v65;
                      goto LABEL_89;
                    }

                    if (!error)
                    {
                      v127 = 0;
                      v16 = 0;
                      v14 = v157;
                      goto LABEL_141;
                    }

                    v115 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v116 = *MEMORY[0x1E698F240];
                    v167 = *MEMORY[0x1E696A578];
                    v67 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sceneForAsset"];
                    v168 = v67;
                    v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v168 forKeys:&v167 count:1];
                    v117 = [v115 initWithDomain:v116 code:2 userInfo:v66];
                    v127 = 0;
                    v16 = 0;
                    *error = v117;
                  }

                  else
                  {
                    v127 = 0;
LABEL_89:
                    v66 = [dictionaryCopy objectForKeyedSubscript:@"subjectForAsset"];
                    if (!v66 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v67 = 0;
                      goto LABEL_92;
                    }

                    v143 = errorCopy4;
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v67 = v66;
LABEL_92:
                      v16 = -[BMPhotosStyle initWithIdentifier:styleChoice:styleSelectionType:sliderValues:userLibrarySize:userLibraryAgeInDays:brightnessValue:stillImageProcessingFlags:camera:stillImageCaptureType:faceCount:petCount:version:sceneForAsset:subjectForAsset:](self, "initWithIdentifier:styleChoice:styleSelectionType:sliderValues:userLibrarySize:userLibraryAgeInDays:brightnessValue:stillImageProcessingFlags:camera:stillImageCaptureType:faceCount:petCount:version:sceneForAsset:subjectForAsset:", v153, v157, [v154 intValue], v24, objc_msgSend(errorCopy4, "intValue"), objc_msgSend(v148, "intValue"), v149, v135, v138, v136, v133, v131, v129, v127, v67);
                      self = v16;
LABEL_140:

                      v14 = v157;
LABEL_141:
                      errorCopy3 = v148;
                      v113 = v125;
LABEL_142:

                      v30 = v130;
LABEL_143:

LABEL_144:
LABEL_145:

LABEL_146:
LABEL_147:

LABEL_148:
LABEL_149:

LABEL_150:
LABEL_151:

                      goto LABEL_152;
                    }

                    if (error)
                    {
                      v118 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v119 = *MEMORY[0x1E698F240];
                      v165 = *MEMORY[0x1E696A578];
                      v120 = dictionaryCopy;
                      v121 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"subjectForAsset"];
                      v166 = v121;
                      v122 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v166 forKeys:&v165 count:1];
                      *error = [v118 initWithDomain:v119 code:2 userInfo:v122];

                      dictionaryCopy = v120;
                    }

                    v67 = 0;
                    v16 = 0;
                  }

                  errorCopy4 = v143;
                  goto LABEL_140;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v129 = v62;
                  goto LABEL_86;
                }

                if (error)
                {
                  v109 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v110 = *MEMORY[0x1E698F240];
                  v169 = *MEMORY[0x1E696A578];
                  v127 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"version"];
                  v170 = v127;
                  v111 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v170 forKeys:&v169 count:1];
                  v112 = v110;
                  v113 = v111;
                  v114 = [v109 initWithDomain:v112 code:2 userInfo:v111];
                  v129 = 0;
                  v16 = 0;
                  *error = v114;
                  v14 = v157;
                  errorCopy3 = v148;
                  v64 = v135;
                  goto LABEL_142;
                }

                v129 = 0;
                v16 = 0;
LABEL_168:
                v14 = v157;
                errorCopy3 = v148;
                v64 = v135;
                goto LABEL_143;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v131 = v60;
                goto LABEL_83;
              }

              if (error)
              {
                v103 = objc_alloc(MEMORY[0x1E696ABC0]);
                v146 = errorCopy4;
                v104 = v30;
                v105 = *MEMORY[0x1E698F240];
                v171 = *MEMORY[0x1E696A578];
                v129 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"petCount"];
                v172 = v129;
                v106 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v172 forKeys:&v171 count:1];
                v107 = v105;
                v30 = v104;
                errorCopy4 = v146;
                v126 = v106;
                v108 = [v103 initWithDomain:v107 code:2 userInfo:?];
                v131 = 0;
                v16 = 0;
                *error = v108;
                v6 = v153;
                goto LABEL_168;
              }

              v131 = 0;
              v16 = 0;
LABEL_166:
              v14 = v157;
              errorCopy3 = v148;
              v64 = v135;
              goto LABEL_144;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v133 = v58;
              goto LABEL_80;
            }

            if (error)
            {
              v97 = objc_alloc(MEMORY[0x1E696ABC0]);
              v145 = errorCopy4;
              v98 = v30;
              v99 = *MEMORY[0x1E698F240];
              v173 = *MEMORY[0x1E696A578];
              v131 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"faceCount"];
              v174 = v131;
              v100 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v174 forKeys:&v173 count:1];
              v101 = v99;
              v30 = v98;
              errorCopy4 = v145;
              v128 = v100;
              v102 = [v97 initWithDomain:v101 code:2 userInfo:?];
              v133 = 0;
              v16 = 0;
              *error = v102;
              v6 = v153;
              goto LABEL_166;
            }

            v133 = 0;
            v16 = 0;
LABEL_164:
            v14 = v157;
            errorCopy3 = v148;
            v64 = v135;
            goto LABEL_145;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v136 = v56;
            goto LABEL_77;
          }

          if (error)
          {
            v86 = objc_alloc(MEMORY[0x1E696ABC0]);
            v144 = errorCopy4;
            v87 = v30;
            v88 = *MEMORY[0x1E698F240];
            v175 = *MEMORY[0x1E696A578];
            v133 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"stillImageCaptureType"];
            v176 = v133;
            v89 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v176 forKeys:&v175 count:1];
            v90 = v88;
            v30 = v87;
            errorCopy4 = v144;
            v132 = v89;
            v91 = [v86 initWithDomain:v90 code:2 userInfo:?];
            v136 = 0;
            v16 = 0;
            *error = v91;
            v6 = v153;
            goto LABEL_164;
          }

          v136 = 0;
          v16 = 0;
        }

        v14 = v157;
        errorCopy3 = v148;
        v64 = v135;
        goto LABEL_146;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v135 = v52;
        goto LABEL_71;
      }

      if (error)
      {
        v74 = objc_alloc(MEMORY[0x1E696ABC0]);
        v141 = errorCopy4;
        v75 = v30;
        v76 = *MEMORY[0x1E698F240];
        v179 = *MEMORY[0x1E696A578];
        v138 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"stillImageProcessingFlags"];
        v180 = v138;
        v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v180 forKeys:&v179 count:1];
        v78 = v76;
        v30 = v75;
        errorCopy4 = v141;
        v137 = v77;
        v79 = [v74 initWithDomain:v78 code:2 userInfo:?];
        v64 = 0;
        v16 = 0;
        *error = v79;
        v6 = v153;
        v14 = v157;
        errorCopy3 = v148;
        goto LABEL_147;
      }

      v64 = 0;
      v16 = 0;
    }

    v14 = v157;
    errorCopy3 = v148;
    goto LABEL_148;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v45 = v30;
LABEL_57:
    errorCopy4 = v45;
    goto LABEL_58;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v45 = [MEMORY[0x1E696AD98] numberWithInt:BMPhotosStyleLibrarySizeTypeFromString(v30)];
    goto LABEL_57;
  }

  errorCopy4 = error;
  if (error)
  {
    v92 = objc_alloc(MEMORY[0x1E696ABC0]);
    v93 = *MEMORY[0x1E698F240];
    v185 = *MEMORY[0x1E696A578];
    errorCopy3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"userLibrarySize"];
    v186 = errorCopy3;
    v151 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v186 forKeys:&v185 count:1];
    v16 = 0;
    *error = [v92 initWithDomain:v93 code:2 userInfo:?];
    errorCopy4 = 0;
    v6 = v153;
    v14 = v157;

    goto LABEL_151;
  }

  v16 = 0;
  v6 = v153;
  v14 = v157;
LABEL_152:

LABEL_153:
  v10 = v154;
LABEL_154:

  v5 = v155;
LABEL_155:

  v7 = v156;
LABEL_156:

LABEL_157:
LABEL_158:

  v123 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMPhotosStyle *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v26 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_styleChoice)
  {
    PBDataWriterWriteStringField();
  }

  styleSelectionType = self->_styleSelectionType;
  PBDataWriterWriteUint32Field();
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = self->_sliderValues;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v21 + 1) + 8 * v10) floatValue];
        PBDataWriterWriteFloatField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  userLibrarySize = self->_userLibrarySize;
  PBDataWriterWriteUint32Field();
  userLibraryAgeInDays = self->_userLibraryAgeInDays;
  PBDataWriterWriteUint32Field();
  if (self->_hasBrightnessValue)
  {
    brightnessValue = self->_brightnessValue;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasStillImageProcessingFlags)
  {
    stillImageProcessingFlags = self->_stillImageProcessingFlags;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasCamera)
  {
    camera = self->_camera;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasStillImageCaptureType)
  {
    stillImageCaptureType = self->_stillImageCaptureType;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasFaceCount)
  {
    faceCount = self->_faceCount;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasPetCount)
  {
    petCount = self->_petCount;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasVersion)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
  }

  if (self->_sceneForAsset)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_subjectForAsset)
  {
    PBDataWriterWriteStringField();
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v91.receiver = self;
  v91.super_class = BMPhotosStyle;
  v5 = [(BMEventBase *)&v91 init];
  if (!v5)
  {
    goto LABEL_160;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v92) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v92 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (LOBYTE(v92) & 0x7F) << v8;
        if ((LOBYTE(v92) & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        v14 = v9++ >= 9;
        if (v14)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        break;
      }

      switch((v15 >> 3))
      {
        case 1u:
          v16 = PBReaderReadString();
          v17 = 72;
          goto LABEL_82;
        case 2u:
          v16 = PBReaderReadString();
          v17 = 80;
          goto LABEL_82;
        case 3u:
          v31 = 0;
          v32 = 0;
          v33 = 0;
          while (1)
          {
            LOBYTE(v92) = 0;
            v34 = [fromCopy position] + 1;
            if (v34 >= [fromCopy position] && (v35 = objc_msgSend(fromCopy, "position") + 1, v35 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v92 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v33 |= (LOBYTE(v92) & 0x7F) << v31;
            if ((LOBYTE(v92) & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v37 = v32++ > 8;
            if (v37)
            {
              goto LABEL_123;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v33 > 2)
          {
LABEL_123:
            LODWORD(v33) = 0;
          }

          v80 = 36;
          goto LABEL_141;
        case 4u:
          v58 = MEMORY[0x1E696AD98];
          LODWORD(v92) = 0;
          v59 = [fromCopy position] + 4;
          if (v59 >= [fromCopy position] && (v60 = objc_msgSend(fromCopy, "position") + 4, v60 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v92 range:{objc_msgSend(fromCopy, "position"), 4}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
          }

          else
          {
            [fromCopy _setError];
          }

          LODWORD(v61) = LODWORD(v92);
          v84 = [v58 numberWithFloat:v61];
          if (!v84)
          {
            goto LABEL_162;
          }

          v85 = v84;
          [v6 addObject:v84];

          goto LABEL_151;
        case 5u:
          v62 = 0;
          v63 = 0;
          v33 = 0;
          while (1)
          {
            LOBYTE(v92) = 0;
            v64 = [fromCopy position] + 1;
            if (v64 >= [fromCopy position] && (v65 = objc_msgSend(fromCopy, "position") + 1, v65 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v92 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v33 |= (LOBYTE(v92) & 0x7F) << v62;
            if ((LOBYTE(v92) & 0x80) == 0)
            {
              break;
            }

            v62 += 7;
            v37 = v63++ > 8;
            if (v37)
            {
              goto LABEL_139;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v33 > 5)
          {
LABEL_139:
            LODWORD(v33) = 0;
          }

          v80 = 40;
          goto LABEL_141;
        case 6u:
          v38 = 0;
          v39 = 0;
          v33 = 0;
          while (1)
          {
            LOBYTE(v92) = 0;
            v40 = [fromCopy position] + 1;
            if (v40 >= [fromCopy position] && (v41 = objc_msgSend(fromCopy, "position") + 1, v41 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:&v92 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v33 |= (LOBYTE(v92) & 0x7F) << v38;
            if ((LOBYTE(v92) & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v37 = v39++ > 8;
            if (v37)
            {
              goto LABEL_127;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v33 > 5)
          {
LABEL_127:
            LODWORD(v33) = 0;
          }

          v80 = 44;
LABEL_141:
          *(&v5->super.super.isa + v80) = v33;
          goto LABEL_151;
        case 7u:
          v5->_hasBrightnessValue = 1;
          v92 = 0.0;
          v49 = [fromCopy position] + 8;
          if (v49 >= [fromCopy position] && (v50 = objc_msgSend(fromCopy, "position") + 8, v50 <= objc_msgSend(fromCopy, "length")))
          {
            data6 = [fromCopy data];
            [data6 getBytes:&v92 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v5->_brightnessValue = v92;
          goto LABEL_151;
        case 8u:
          v51 = 0;
          v52 = 0;
          v53 = 0;
          v5->_hasStillImageProcessingFlags = 1;
          while (1)
          {
            LOBYTE(v92) = 0;
            v54 = [fromCopy position] + 1;
            if (v54 >= [fromCopy position] && (v55 = objc_msgSend(fromCopy, "position") + 1, v55 <= objc_msgSend(fromCopy, "length")))
            {
              data7 = [fromCopy data];
              [data7 getBytes:&v92 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v53 |= (LOBYTE(v92) & 0x7F) << v51;
            if ((LOBYTE(v92) & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            v14 = v52++ >= 9;
            if (v14)
            {
              v24 = 0;
              goto LABEL_136;
            }
          }

          if ([fromCopy hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v53;
          }

LABEL_136:
          v79 = 48;
          goto LABEL_150;
        case 9u:
          v73 = 0;
          v74 = 0;
          v75 = 0;
          v5->_hasCamera = 1;
          while (1)
          {
            LOBYTE(v92) = 0;
            v76 = [fromCopy position] + 1;
            if (v76 >= [fromCopy position] && (v77 = objc_msgSend(fromCopy, "position") + 1, v77 <= objc_msgSend(fromCopy, "length")))
            {
              data8 = [fromCopy data];
              [data8 getBytes:&v92 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v75 |= (LOBYTE(v92) & 0x7F) << v73;
            if ((LOBYTE(v92) & 0x80) == 0)
            {
              break;
            }

            v73 += 7;
            v14 = v74++ >= 9;
            if (v14)
            {
              v24 = 0;
              goto LABEL_149;
            }
          }

          if ([fromCopy hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v75;
          }

LABEL_149:
          v79 = 52;
          goto LABEL_150;
        case 0xAu:
          v67 = 0;
          v68 = 0;
          v69 = 0;
          v5->_hasStillImageCaptureType = 1;
          while (1)
          {
            LOBYTE(v92) = 0;
            v70 = [fromCopy position] + 1;
            if (v70 >= [fromCopy position] && (v71 = objc_msgSend(fromCopy, "position") + 1, v71 <= objc_msgSend(fromCopy, "length")))
            {
              data9 = [fromCopy data];
              [data9 getBytes:&v92 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v69 |= (LOBYTE(v92) & 0x7F) << v67;
            if ((LOBYTE(v92) & 0x80) == 0)
            {
              break;
            }

            v67 += 7;
            v14 = v68++ >= 9;
            if (v14)
            {
              v24 = 0;
              goto LABEL_145;
            }
          }

          if ([fromCopy hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v69;
          }

LABEL_145:
          v79 = 56;
          goto LABEL_150;
        case 0xBu:
          v18 = 0;
          v19 = 0;
          v20 = 0;
          v5->_hasFaceCount = 1;
          while (1)
          {
            LOBYTE(v92) = 0;
            v21 = [fromCopy position] + 1;
            if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
            {
              data10 = [fromCopy data];
              [data10 getBytes:&v92 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v20 |= (LOBYTE(v92) & 0x7F) << v18;
            if ((LOBYTE(v92) & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v14 = v19++ >= 9;
            if (v14)
            {
              v24 = 0;
              goto LABEL_116;
            }
          }

          if ([fromCopy hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v20;
          }

LABEL_116:
          v79 = 60;
          goto LABEL_150;
        case 0xCu:
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v5->_hasPetCount = 1;
          while (1)
          {
            LOBYTE(v92) = 0;
            v46 = [fromCopy position] + 1;
            if (v46 >= [fromCopy position] && (v47 = objc_msgSend(fromCopy, "position") + 1, v47 <= objc_msgSend(fromCopy, "length")))
            {
              data11 = [fromCopy data];
              [data11 getBytes:&v92 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v45 |= (LOBYTE(v92) & 0x7F) << v43;
            if ((LOBYTE(v92) & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v14 = v44++ >= 9;
            if (v14)
            {
              v24 = 0;
              goto LABEL_132;
            }
          }

          if ([fromCopy hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v45;
          }

LABEL_132:
          v79 = 64;
          goto LABEL_150;
        case 0x13u:
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v5->_hasVersion = 1;
          break;
        case 0x14u:
          v16 = PBReaderReadString();
          v17 = 104;
          goto LABEL_82;
        case 0x15u:
          v16 = PBReaderReadString();
          v17 = 112;
LABEL_82:
          v57 = *(&v5->super.super.isa + v17);
          *(&v5->super.super.isa + v17) = v16;

          goto LABEL_151;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_151;
          }

LABEL_162:

          goto LABEL_159;
      }

      while (1)
      {
        LOBYTE(v92) = 0;
        v28 = [fromCopy position] + 1;
        if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 1, v29 <= objc_msgSend(fromCopy, "length")))
        {
          data12 = [fromCopy data];
          [data12 getBytes:&v92 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v27 |= (LOBYTE(v92) & 0x7F) << v25;
        if ((LOBYTE(v92) & 0x80) == 0)
        {
          break;
        }

        v25 += 7;
        v14 = v26++ >= 9;
        if (v14)
        {
          v24 = 0;
          goto LABEL_120;
        }
      }

      v24 = [fromCopy hasError] ? 0 : v27;
LABEL_120:
      v79 = 68;
LABEL_150:
      *(&v5->super.super.isa + v79) = v24;
LABEL_151:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v86 = [v6 copy];
  sliderValues = v5->_sliderValues;
  v5->_sliderValues = v86;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_159:
    v89 = 0;
  }

  else
  {
LABEL_160:
    v89 = v5;
  }

  return v89;
}

- (NSString)description
{
  v18 = objc_alloc(MEMORY[0x1E696AEC0]);
  identifier = [(BMPhotosStyle *)self identifier];
  styleChoice = [(BMPhotosStyle *)self styleChoice];
  v20 = BMPhotosStyleStyleSelectionTypeAsString([(BMPhotosStyle *)self styleSelectionType]);
  sliderValues = [(BMPhotosStyle *)self sliderValues];
  v16 = BMPhotosStyleLibrarySizeTypeAsString([(BMPhotosStyle *)self userLibrarySize]);
  v15 = BMPhotosStyleUserLibraryAgeInDaysTypeAsString([(BMPhotosStyle *)self userLibraryAgeInDays]);
  v3 = MEMORY[0x1E696AD98];
  [(BMPhotosStyle *)self brightnessValue];
  v14 = [v3 numberWithDouble:?];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPhotosStyle stillImageProcessingFlags](self, "stillImageProcessingFlags")}];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPhotosStyle camera](self, "camera")}];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPhotosStyle stillImageCaptureType](self, "stillImageCaptureType")}];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPhotosStyle faceCount](self, "faceCount")}];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPhotosStyle petCount](self, "petCount")}];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPhotosStyle version](self, "version")}];
  sceneForAsset = [(BMPhotosStyle *)self sceneForAsset];
  subjectForAsset = [(BMPhotosStyle *)self subjectForAsset];
  v19 = [v18 initWithFormat:@"BMPhotosStyle with identifier: %@, styleChoice: %@, styleSelectionType: %@, sliderValues: %@, userLibrarySize: %@, userLibraryAgeInDays: %@, brightnessValue: %@, stillImageProcessingFlags: %@, camera: %@, stillImageCaptureType: %@, faceCount: %@, petCount: %@, version: %@, sceneForAsset: %@, subjectForAsset: %@", identifier, styleChoice, v20, sliderValues, v16, v15, v14, v12, v4, v11, v5, v6, v7, sceneForAsset, subjectForAsset];

  return v19;
}

- (BMPhotosStyle)initWithIdentifier:(id)identifier styleChoice:(id)choice styleSelectionType:(int)type sliderValues:(id)values userLibrarySize:(int)size userLibraryAgeInDays:(int)days brightnessValue:(id)value stillImageProcessingFlags:(id)self0 camera:(id)self1 stillImageCaptureType:(id)self2 faceCount:(id)self3 petCount:(id)self4 version:(id)self5 sceneForAsset:(id)self6 subjectForAsset:(id)self7
{
  identifierCopy = identifier;
  choiceCopy = choice;
  choiceCopy2 = choice;
  valuesCopy = values;
  valuesCopy2 = values;
  valueCopy = value;
  flagsCopy = flags;
  cameraCopy = camera;
  captureTypeCopy = captureType;
  countCopy = count;
  petCountCopy = petCount;
  versionCopy = version;
  assetCopy = asset;
  forAssetCopy = forAsset;
  v47.receiver = self;
  v47.super_class = BMPhotosStyle;
  v26 = [(BMEventBase *)&v47 init];
  if (v26)
  {
    v26->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v26->_identifier, identifier);
    objc_storeStrong(&v26->_styleChoice, choiceCopy);
    v26->_styleSelectionType = type;
    objc_storeStrong(&v26->_sliderValues, valuesCopy);
    v26->_userLibrarySize = size;
    v26->_userLibraryAgeInDays = days;
    if (valueCopy)
    {
      v26->_hasBrightnessValue = 1;
      [valueCopy doubleValue];
    }

    else
    {
      v26->_hasBrightnessValue = 0;
      v27 = -1.0;
    }

    v26->_brightnessValue = v27;
    if (flagsCopy)
    {
      v26->_hasStillImageProcessingFlags = 1;
      unsignedIntValue = [flagsCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v26->_hasStillImageProcessingFlags = 0;
    }

    v26->_stillImageProcessingFlags = unsignedIntValue;
    if (cameraCopy)
    {
      v26->_hasCamera = 1;
      unsignedIntValue2 = [cameraCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue2 = 0;
      v26->_hasCamera = 0;
    }

    v26->_camera = unsignedIntValue2;
    if (captureTypeCopy)
    {
      v26->_hasStillImageCaptureType = 1;
      unsignedIntValue3 = [captureTypeCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue3 = 0;
      v26->_hasStillImageCaptureType = 0;
    }

    v26->_stillImageCaptureType = unsignedIntValue3;
    if (countCopy)
    {
      v26->_hasFaceCount = 1;
      unsignedIntValue4 = [countCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue4 = 0;
      v26->_hasFaceCount = 0;
    }

    v26->_faceCount = unsignedIntValue4;
    if (petCountCopy)
    {
      v26->_hasPetCount = 1;
      unsignedIntValue5 = [petCountCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue5 = 0;
      v26->_hasPetCount = 0;
    }

    v26->_petCount = unsignedIntValue5;
    if (versionCopy)
    {
      v26->_hasVersion = 1;
      unsignedIntValue6 = [versionCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue6 = 0;
      v26->_hasVersion = 0;
    }

    v26->_version = unsignedIntValue6;
    objc_storeStrong(&v26->_sceneForAsset, asset);
    objc_storeStrong(&v26->_subjectForAsset, forAsset);
  }

  return v26;
}

+ (id)protoFields
{
  v26[21] = *MEMORY[0x1E69E9840];
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:1 type:13 subMessageClass:0];
  v26[0] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"styleChoice" number:2 type:13 subMessageClass:0];
  v26[1] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"styleSelectionType" number:3 type:4 subMessageClass:0];
  v26[2] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sliderValues" number:4 type:1 subMessageClass:0];
  v26[3] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userLibrarySize" number:5 type:4 subMessageClass:0];
  v26[4] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userLibraryAgeInDays" number:6 type:4 subMessageClass:0];
  v26[5] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"brightnessValue" number:7 type:0 subMessageClass:0];
  v26[6] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"stillImageProcessingFlags" number:8 type:4 subMessageClass:0];
  v26[7] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"camera" number:9 type:4 subMessageClass:0];
  v26[8] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"stillImageCaptureType" number:10 type:4 subMessageClass:0];
  v26[9] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"faceCount" number:11 type:4 subMessageClass:0];
  v26[10] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"petCount" number:12 type:4 subMessageClass:0];
  v26[11] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"faceSizeRatio" number:13 type:1 subMessageClass:0];
  v26[12] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isSunsetSunrise" number:14 type:12 subMessageClass:0];
  v26[13] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isOutdoor" number:15 type:12 subMessageClass:0];
  v26[14] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isFood" number:16 type:12 subMessageClass:0];
  v26[15] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isIndoor" number:17 type:12 subMessageClass:0];
  v26[16] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"salientScenes" number:18 type:4 subMessageClass:0];
  v26[17] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"version" number:19 type:4 subMessageClass:0];
  v26[18] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sceneForAsset" number:20 type:13 subMessageClass:0];
  v26[19] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"subjectForAsset" number:21 type:13 subMessageClass:0];
  v26[20] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:21];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v26[21] = *MEMORY[0x1E69E9840];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"styleChoice" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"styleSelectionType" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"sliderValues_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_142];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userLibrarySize" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userLibraryAgeInDays" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"brightnessValue" dataType:1 requestOnly:0 fieldNumber:7 protoDataType:0 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"stillImageProcessingFlags" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:4 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"camera" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:4 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"stillImageCaptureType" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:4 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"faceCount" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:4 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"petCount" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"faceSizeRatio" dataType:1 requestOnly:0 fieldNumber:13 protoDataType:1 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isSunsetSunrise" dataType:0 requestOnly:0 fieldNumber:14 protoDataType:12 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isOutdoor" dataType:0 requestOnly:0 fieldNumber:15 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isFood" dataType:0 requestOnly:0 fieldNumber:16 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isIndoor" dataType:0 requestOnly:0 fieldNumber:17 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"salientScenes_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_144];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"version" dataType:0 requestOnly:0 fieldNumber:19 protoDataType:4 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sceneForAsset" dataType:2 requestOnly:0 fieldNumber:20 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"subjectForAsset" dataType:2 requestOnly:0 fieldNumber:21 protoDataType:13 convertedType:0];
  v26[0] = v25;
  v26[1] = v24;
  v26[2] = v23;
  v26[3] = v14;
  v26[4] = v22;
  v26[5] = v21;
  v26[6] = v20;
  v26[7] = v19;
  v26[8] = v18;
  v26[9] = v17;
  v26[10] = v16;
  v26[11] = v2;
  v26[12] = v3;
  v26[13] = v4;
  v26[14] = v15;
  v26[15] = v5;
  v26[16] = v6;
  v26[17] = v7;
  v26[18] = v13;
  v26[19] = v8;
  v26[20] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:21];

  v10 = *MEMORY[0x1E69E9840];

  return v12;
}

id __24__BMPhotosStyle_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _sliderValuesJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
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

    v8 = [[BMPhotosStyle alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[8] = 0;
    }
  }

  return v4;
}

@end