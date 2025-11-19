@interface BMPhotosStyle
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMPhotosStyle)initWithIdentifier:(id)a3 styleChoice:(id)a4 styleSelectionType:(int)a5 sliderValues:(id)a6 userLibrarySize:(int)a7 userLibraryAgeInDays:(int)a8 brightnessValue:(id)a9 stillImageProcessingFlags:(id)a10 camera:(id)a11 stillImageCaptureType:(id)a12 faceCount:(id)a13 petCount:(id)a14 version:(id)a15 sceneForAsset:(id)a16 subjectForAsset:(id)a17;
- (BMPhotosStyle)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_sliderValuesJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMPhotosStyle

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMPhotosStyle *)self identifier];
    v7 = [v5 identifier];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMPhotosStyle *)self identifier];
      v10 = [v5 identifier];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_55;
      }
    }

    v13 = [(BMPhotosStyle *)self styleChoice];
    v14 = [v5 styleChoice];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMPhotosStyle *)self styleChoice];
      v17 = [v5 styleChoice];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_55;
      }
    }

    v19 = [(BMPhotosStyle *)self styleSelectionType];
    if (v19 == [v5 styleSelectionType])
    {
      v20 = [(BMPhotosStyle *)self sliderValues];
      v21 = [v5 sliderValues];
      v22 = v21;
      if (v20 == v21)
      {
      }

      else
      {
        v23 = [(BMPhotosStyle *)self sliderValues];
        v24 = [v5 sliderValues];
        v25 = [v23 isEqual:v24];

        if (!v25)
        {
          goto LABEL_55;
        }
      }

      v26 = [(BMPhotosStyle *)self userLibrarySize];
      if (v26 != [v5 userLibrarySize])
      {
        goto LABEL_55;
      }

      v27 = [(BMPhotosStyle *)self userLibraryAgeInDays];
      if (v27 != [v5 userLibraryAgeInDays])
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

        v31 = [(BMPhotosStyle *)self stillImageProcessingFlags];
        if (v31 != [v5 stillImageProcessingFlags])
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

        v32 = [(BMPhotosStyle *)self camera];
        if (v32 != [v5 camera])
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

        v33 = [(BMPhotosStyle *)self stillImageCaptureType];
        if (v33 != [v5 stillImageCaptureType])
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

        v34 = [(BMPhotosStyle *)self faceCount];
        if (v34 != [v5 faceCount])
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

        v35 = [(BMPhotosStyle *)self petCount];
        if (v35 != [v5 petCount])
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

        v36 = [(BMPhotosStyle *)self version];
        if (v36 != [v5 version])
        {
          goto LABEL_55;
        }
      }

      v37 = [(BMPhotosStyle *)self sceneForAsset];
      v38 = [v5 sceneForAsset];
      v39 = v38;
      if (v37 == v38)
      {
      }

      else
      {
        v40 = [(BMPhotosStyle *)self sceneForAsset];
        v41 = [v5 sceneForAsset];
        v42 = [v40 isEqual:v41];

        if (!v42)
        {
          goto LABEL_55;
        }
      }

      v44 = [(BMPhotosStyle *)self subjectForAsset];
      v45 = [v5 subjectForAsset];
      if (v44 == v45)
      {
        v12 = 1;
      }

      else
      {
        v46 = [(BMPhotosStyle *)self subjectForAsset];
        v47 = [v5 subjectForAsset];
        v12 = [v46 isEqual:v47];
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
  v3 = [(BMPhotosStyle *)self identifier];
  v4 = [(BMPhotosStyle *)self styleChoice];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPhotosStyle styleSelectionType](self, "styleSelectionType")}];
  v6 = [(BMPhotosStyle *)self _sliderValuesJSONArray];
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

  v48 = [(BMPhotosStyle *)self sceneForAsset];
  v12 = [(BMPhotosStyle *)self subjectForAsset];
  v55[0] = @"identifier";
  v13 = v3;
  if (!v3)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v42 = v13;
  v56[0] = v13;
  v55[1] = @"styleChoice";
  v14 = v4;
  if (!v4)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = v14;
  v56[1] = v14;
  v55[2] = @"styleSelectionType";
  v15 = v5;
  if (!v5)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = v15;
  v56[2] = v15;
  v55[3] = @"sliderValues";
  v16 = v6;
  if (!v6)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = v16;
  v56[3] = v16;
  v55[4] = @"userLibrarySize";
  v17 = v7;
  if (!v7)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = v17;
  v56[4] = v17;
  v55[5] = @"userLibraryAgeInDays";
  v18 = v8;
  if (!v8)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = v18;
  v56[5] = v18;
  v55[6] = @"brightnessValue";
  v19 = v11;
  if (!v11)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v45 = v8;
  v46 = v7;
  v36 = v19;
  v56[6] = v19;
  v55[7] = @"stillImageProcessingFlags";
  v20 = v54;
  if (!v54)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v4;
  v56[7] = v20;
  v55[8] = @"camera";
  v22 = v53;
  if (!v53)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = v20;
  v56[8] = v22;
  v55[9] = @"stillImageCaptureType";
  v23 = v52;
  if (!v52)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = v22;
  v47 = v5;
  v56[9] = v23;
  v55[10] = @"faceCount";
  v24 = v51;
  if (!v51)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v44 = v6;
  v25 = v3;
  v56[10] = v24;
  v55[11] = @"petCount";
  v26 = v50;
  if (!v50)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v21;
  v56[11] = v26;
  v55[12] = @"version";
  v28 = v49;
  if (!v49)
  {
    v28 = [MEMORY[0x1E695DFB0] null];
  }

  v56[12] = v28;
  v55[13] = @"sceneForAsset";
  v29 = v48;
  if (!v48)
  {
    v29 = [MEMORY[0x1E695DFB0] null];
  }

  v56[13] = v29;
  v55[14] = @"subjectForAsset";
  v30 = v12;
  if (!v12)
  {
    v30 = [MEMORY[0x1E695DFB0] null];
  }

  v56[14] = v30;
  v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:{15, v33}];
  if (!v12)
  {
  }

  if (!v48)
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
  v4 = [(BMPhotosStyle *)self sliderValues];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        [v9 doubleValue];
        if (fabs(v10) == INFINITY)
        {
          v11 = [MEMORY[0x1E695DFB0] null];
          [v3 addObject:v11];
        }

        else
        {
          [v9 doubleValue];
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMPhotosStyle)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v199[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"identifier"];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
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
        *a4 = v15;
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

  v7 = [v4 objectForKeyedSubscript:@"styleChoice"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
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
        *a4 = v20;
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

  v8 = [v4 objectForKeyedSubscript:@"styleSelectionType"];
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
        if (a4)
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
          *a4 = v48;
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

  v21 = [v4 objectForKeyedSubscript:@"sliderValues"];
  v22 = [MEMORY[0x1E695DFB0] null];
  v23 = [v21 isEqual:v22];

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
      if (!a4)
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
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v193 forKeys:&v192 count:1];
      v44 = [v42 initWithDomain:v43 code:2 userInfo:v31];
      v16 = 0;
      *a4 = v44;
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
        v32 = a4;
        if (a4)
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
          v41 = v36;
          v6 = v153;
          v14 = v157;
          v16 = 0;
          *v32 = [v37 initWithDomain:v38 code:2 userInfo:?];
          v31 = v21;
          goto LABEL_151;
        }

        goto LABEL_44;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v39 = objc_alloc(MEMORY[0x1E696ABC0]);
          v40 = *MEMORY[0x1E698F240];
          v187 = *MEMORY[0x1E696A578];
          v32 = a4;
          v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"sliderValues"];
          v188 = v30;
          v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v188 forKeys:&v187 count:1];
          v37 = v39;
          v38 = v40;
          goto LABEL_43;
        }

LABEL_44:
        v16 = 0;
        v31 = v21;
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

  v30 = [v4 objectForKeyedSubscript:@"userLibrarySize"];
  if (!v30 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v31 = 0;
LABEL_58:
    v6 = v153;
    v49 = [v4 objectForKeyedSubscript:@"userLibraryAgeInDays"];
    v150 = v49;
    if (v49)
    {
      v50 = v49;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v139 = v31;
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

        v41 = a4;
        if (a4)
        {
          v94 = objc_alloc(MEMORY[0x1E696ABC0]);
          v95 = *MEMORY[0x1E698F240];
          v183 = *MEMORY[0x1E696A578];
          v149 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"userLibraryAgeInDays"];
          v184 = v149;
          v152 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v184 forKeys:&v183 count:1];
          v96 = [v94 initWithDomain:v95 code:2 userInfo:v152];
          v41 = 0;
          v16 = 0;
          *a4 = v96;
          v14 = v157;
          v31 = v139;
          goto LABEL_149;
        }

        v16 = 0;
        v14 = v157;
        goto LABEL_150;
      }
    }

    v148 = 0;
LABEL_65:
    v152 = [v4 objectForKeyedSubscript:@"brightnessValue"];
    if (v152 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v149 = v152;
        goto LABEL_68;
      }

      if (!a4)
      {
        v149 = 0;
        v16 = 0;
        v14 = v157;
        v41 = v148;
        goto LABEL_149;
      }

      v68 = objc_alloc(MEMORY[0x1E696ABC0]);
      v140 = v31;
      v69 = v30;
      v70 = *MEMORY[0x1E698F240];
      v181 = *MEMORY[0x1E696A578];
      v64 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"brightnessValue"];
      v182 = v64;
      v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v182 forKeys:&v181 count:1];
      v72 = v70;
      v30 = v69;
      v31 = v140;
      v147 = v71;
      v73 = [v68 initWithDomain:v72 code:2 userInfo:?];
      v149 = 0;
      v16 = 0;
      *a4 = v73;
      v6 = v153;
    }

    else
    {
      v149 = 0;
LABEL_68:
      v51 = [v4 objectForKeyedSubscript:@"stillImageProcessingFlags"];
      v147 = v51;
      if (!v51 || (v52 = v51, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v135 = 0;
LABEL_71:
        v53 = [v4 objectForKeyedSubscript:@"camera"];
        v137 = v53;
        if (v53 && (v54 = v53, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v138 = v54;
            goto LABEL_74;
          }

          if (!a4)
          {
            v138 = 0;
            v16 = 0;
            v14 = v157;
            v41 = v148;
            v64 = v135;
            goto LABEL_147;
          }

          v80 = objc_alloc(MEMORY[0x1E696ABC0]);
          v142 = v31;
          v81 = v30;
          v82 = *MEMORY[0x1E698F240];
          v177 = *MEMORY[0x1E696A578];
          v136 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"camera"];
          v178 = v136;
          v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v178 forKeys:&v177 count:1];
          v84 = v82;
          v30 = v81;
          v31 = v142;
          v134 = v83;
          v85 = [v80 initWithDomain:v84 code:2 userInfo:?];
          v138 = 0;
          v16 = 0;
          *a4 = v85;
          v6 = v153;
        }

        else
        {
          v138 = 0;
LABEL_74:
          v55 = [v4 objectForKeyedSubscript:@"stillImageCaptureType"];
          v134 = v55;
          if (!v55 || (v56 = v55, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v136 = 0;
LABEL_77:
            v57 = [v4 objectForKeyedSubscript:@"faceCount"];
            v132 = v57;
            if (!v57 || (v58 = v57, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v133 = 0;
LABEL_80:
              v59 = [v4 objectForKeyedSubscript:@"petCount"];
              v128 = v59;
              if (!v59 || (v60 = v59, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v131 = 0;
LABEL_83:
                v61 = [v4 objectForKeyedSubscript:@"version"];
                v130 = v30;
                v126 = v61;
                if (!v61 || (v62 = v61, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v129 = 0;
LABEL_86:
                  v63 = [v4 objectForKeyedSubscript:@"sceneForAsset"];
                  v64 = v135;
                  v125 = v63;
                  if (v63 && (v65 = v63, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                  {
                    v143 = v31;
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v127 = v65;
                      goto LABEL_89;
                    }

                    if (!a4)
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
                    *a4 = v117;
                  }

                  else
                  {
                    v127 = 0;
LABEL_89:
                    v66 = [v4 objectForKeyedSubscript:@"subjectForAsset"];
                    if (!v66 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v67 = 0;
                      goto LABEL_92;
                    }

                    v143 = v31;
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v67 = v66;
LABEL_92:
                      v16 = -[BMPhotosStyle initWithIdentifier:styleChoice:styleSelectionType:sliderValues:userLibrarySize:userLibraryAgeInDays:brightnessValue:stillImageProcessingFlags:camera:stillImageCaptureType:faceCount:petCount:version:sceneForAsset:subjectForAsset:](self, "initWithIdentifier:styleChoice:styleSelectionType:sliderValues:userLibrarySize:userLibraryAgeInDays:brightnessValue:stillImageProcessingFlags:camera:stillImageCaptureType:faceCount:petCount:version:sceneForAsset:subjectForAsset:", v153, v157, [v154 intValue], v24, objc_msgSend(v31, "intValue"), objc_msgSend(v148, "intValue"), v149, v135, v138, v136, v133, v131, v129, v127, v67);
                      self = v16;
LABEL_140:

                      v14 = v157;
LABEL_141:
                      v41 = v148;
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

                    if (a4)
                    {
                      v118 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v119 = *MEMORY[0x1E698F240];
                      v165 = *MEMORY[0x1E696A578];
                      v120 = v4;
                      v121 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"subjectForAsset"];
                      v166 = v121;
                      v122 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v166 forKeys:&v165 count:1];
                      *a4 = [v118 initWithDomain:v119 code:2 userInfo:v122];

                      v4 = v120;
                    }

                    v67 = 0;
                    v16 = 0;
                  }

                  v31 = v143;
                  goto LABEL_140;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v129 = v62;
                  goto LABEL_86;
                }

                if (a4)
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
                  *a4 = v114;
                  v14 = v157;
                  v41 = v148;
                  v64 = v135;
                  goto LABEL_142;
                }

                v129 = 0;
                v16 = 0;
LABEL_168:
                v14 = v157;
                v41 = v148;
                v64 = v135;
                goto LABEL_143;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v131 = v60;
                goto LABEL_83;
              }

              if (a4)
              {
                v103 = objc_alloc(MEMORY[0x1E696ABC0]);
                v146 = v31;
                v104 = v30;
                v105 = *MEMORY[0x1E698F240];
                v171 = *MEMORY[0x1E696A578];
                v129 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"petCount"];
                v172 = v129;
                v106 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v172 forKeys:&v171 count:1];
                v107 = v105;
                v30 = v104;
                v31 = v146;
                v126 = v106;
                v108 = [v103 initWithDomain:v107 code:2 userInfo:?];
                v131 = 0;
                v16 = 0;
                *a4 = v108;
                v6 = v153;
                goto LABEL_168;
              }

              v131 = 0;
              v16 = 0;
LABEL_166:
              v14 = v157;
              v41 = v148;
              v64 = v135;
              goto LABEL_144;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v133 = v58;
              goto LABEL_80;
            }

            if (a4)
            {
              v97 = objc_alloc(MEMORY[0x1E696ABC0]);
              v145 = v31;
              v98 = v30;
              v99 = *MEMORY[0x1E698F240];
              v173 = *MEMORY[0x1E696A578];
              v131 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"faceCount"];
              v174 = v131;
              v100 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v174 forKeys:&v173 count:1];
              v101 = v99;
              v30 = v98;
              v31 = v145;
              v128 = v100;
              v102 = [v97 initWithDomain:v101 code:2 userInfo:?];
              v133 = 0;
              v16 = 0;
              *a4 = v102;
              v6 = v153;
              goto LABEL_166;
            }

            v133 = 0;
            v16 = 0;
LABEL_164:
            v14 = v157;
            v41 = v148;
            v64 = v135;
            goto LABEL_145;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v136 = v56;
            goto LABEL_77;
          }

          if (a4)
          {
            v86 = objc_alloc(MEMORY[0x1E696ABC0]);
            v144 = v31;
            v87 = v30;
            v88 = *MEMORY[0x1E698F240];
            v175 = *MEMORY[0x1E696A578];
            v133 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"stillImageCaptureType"];
            v176 = v133;
            v89 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v176 forKeys:&v175 count:1];
            v90 = v88;
            v30 = v87;
            v31 = v144;
            v132 = v89;
            v91 = [v86 initWithDomain:v90 code:2 userInfo:?];
            v136 = 0;
            v16 = 0;
            *a4 = v91;
            v6 = v153;
            goto LABEL_164;
          }

          v136 = 0;
          v16 = 0;
        }

        v14 = v157;
        v41 = v148;
        v64 = v135;
        goto LABEL_146;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v135 = v52;
        goto LABEL_71;
      }

      if (a4)
      {
        v74 = objc_alloc(MEMORY[0x1E696ABC0]);
        v141 = v31;
        v75 = v30;
        v76 = *MEMORY[0x1E698F240];
        v179 = *MEMORY[0x1E696A578];
        v138 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"stillImageProcessingFlags"];
        v180 = v138;
        v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v180 forKeys:&v179 count:1];
        v78 = v76;
        v30 = v75;
        v31 = v141;
        v137 = v77;
        v79 = [v74 initWithDomain:v78 code:2 userInfo:?];
        v64 = 0;
        v16 = 0;
        *a4 = v79;
        v6 = v153;
        v14 = v157;
        v41 = v148;
        goto LABEL_147;
      }

      v64 = 0;
      v16 = 0;
    }

    v14 = v157;
    v41 = v148;
    goto LABEL_148;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v45 = v30;
LABEL_57:
    v31 = v45;
    goto LABEL_58;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v45 = [MEMORY[0x1E696AD98] numberWithInt:BMPhotosStyleLibrarySizeTypeFromString(v30)];
    goto LABEL_57;
  }

  v31 = a4;
  if (a4)
  {
    v92 = objc_alloc(MEMORY[0x1E696ABC0]);
    v93 = *MEMORY[0x1E698F240];
    v185 = *MEMORY[0x1E696A578];
    v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"userLibrarySize"];
    v186 = v41;
    v151 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v186 forKeys:&v185 count:1];
    v16 = 0;
    *a4 = [v92 initWithDomain:v93 code:2 userInfo:?];
    v31 = 0;
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
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v91.receiver = self;
  v91.super_class = BMPhotosStyle;
  v5 = [(BMEventBase *)&v91 init];
  if (!v5)
  {
    goto LABEL_160;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v92) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:&v92 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v15 = [v4 hasError] ? 0 : v10;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v15 & 7) == 4)
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
            v34 = [v4 position] + 1;
            if (v34 >= [v4 position] && (v35 = objc_msgSend(v4, "position") + 1, v35 <= objc_msgSend(v4, "length")))
            {
              v36 = [v4 data];
              [v36 getBytes:&v92 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          if (([v4 hasError] & 1) != 0 || v33 > 2)
          {
LABEL_123:
            LODWORD(v33) = 0;
          }

          v80 = 36;
          goto LABEL_141;
        case 4u:
          v58 = MEMORY[0x1E696AD98];
          LODWORD(v92) = 0;
          v59 = [v4 position] + 4;
          if (v59 >= [v4 position] && (v60 = objc_msgSend(v4, "position") + 4, v60 <= objc_msgSend(v4, "length")))
          {
            v83 = [v4 data];
            [v83 getBytes:&v92 range:{objc_msgSend(v4, "position"), 4}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
          }

          else
          {
            [v4 _setError];
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
            v64 = [v4 position] + 1;
            if (v64 >= [v4 position] && (v65 = objc_msgSend(v4, "position") + 1, v65 <= objc_msgSend(v4, "length")))
            {
              v66 = [v4 data];
              [v66 getBytes:&v92 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          if (([v4 hasError] & 1) != 0 || v33 > 5)
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
            v40 = [v4 position] + 1;
            if (v40 >= [v4 position] && (v41 = objc_msgSend(v4, "position") + 1, v41 <= objc_msgSend(v4, "length")))
            {
              v42 = [v4 data];
              [v42 getBytes:&v92 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          if (([v4 hasError] & 1) != 0 || v33 > 5)
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
          v49 = [v4 position] + 8;
          if (v49 >= [v4 position] && (v50 = objc_msgSend(v4, "position") + 8, v50 <= objc_msgSend(v4, "length")))
          {
            v82 = [v4 data];
            [v82 getBytes:&v92 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
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
            v54 = [v4 position] + 1;
            if (v54 >= [v4 position] && (v55 = objc_msgSend(v4, "position") + 1, v55 <= objc_msgSend(v4, "length")))
            {
              v56 = [v4 data];
              [v56 getBytes:&v92 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          if ([v4 hasError])
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
            v76 = [v4 position] + 1;
            if (v76 >= [v4 position] && (v77 = objc_msgSend(v4, "position") + 1, v77 <= objc_msgSend(v4, "length")))
            {
              v78 = [v4 data];
              [v78 getBytes:&v92 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          if ([v4 hasError])
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
            v70 = [v4 position] + 1;
            if (v70 >= [v4 position] && (v71 = objc_msgSend(v4, "position") + 1, v71 <= objc_msgSend(v4, "length")))
            {
              v72 = [v4 data];
              [v72 getBytes:&v92 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          if ([v4 hasError])
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
            v21 = [v4 position] + 1;
            if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
            {
              v23 = [v4 data];
              [v23 getBytes:&v92 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          if ([v4 hasError])
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
            v46 = [v4 position] + 1;
            if (v46 >= [v4 position] && (v47 = objc_msgSend(v4, "position") + 1, v47 <= objc_msgSend(v4, "length")))
            {
              v48 = [v4 data];
              [v48 getBytes:&v92 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          if ([v4 hasError])
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
        v28 = [v4 position] + 1;
        if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 1, v29 <= objc_msgSend(v4, "length")))
        {
          v30 = [v4 data];
          [v30 getBytes:&v92 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v24 = [v4 hasError] ? 0 : v27;
LABEL_120:
      v79 = 68;
LABEL_150:
      *(&v5->super.super.isa + v79) = v24;
LABEL_151:
      v81 = [v4 position];
    }

    while (v81 < [v4 length]);
  }

  v86 = [v6 copy];
  sliderValues = v5->_sliderValues;
  v5->_sliderValues = v86;

  v88 = [v4 hasError];
  if (v88)
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
  v17 = [(BMPhotosStyle *)self identifier];
  v21 = [(BMPhotosStyle *)self styleChoice];
  v20 = BMPhotosStyleStyleSelectionTypeAsString([(BMPhotosStyle *)self styleSelectionType]);
  v13 = [(BMPhotosStyle *)self sliderValues];
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
  v8 = [(BMPhotosStyle *)self sceneForAsset];
  v9 = [(BMPhotosStyle *)self subjectForAsset];
  v19 = [v18 initWithFormat:@"BMPhotosStyle with identifier: %@, styleChoice: %@, styleSelectionType: %@, sliderValues: %@, userLibrarySize: %@, userLibraryAgeInDays: %@, brightnessValue: %@, stillImageProcessingFlags: %@, camera: %@, stillImageCaptureType: %@, faceCount: %@, petCount: %@, version: %@, sceneForAsset: %@, subjectForAsset: %@", v17, v21, v20, v13, v16, v15, v14, v12, v4, v11, v5, v6, v7, v8, v9];

  return v19;
}

- (BMPhotosStyle)initWithIdentifier:(id)a3 styleChoice:(id)a4 styleSelectionType:(int)a5 sliderValues:(id)a6 userLibrarySize:(int)a7 userLibraryAgeInDays:(int)a8 brightnessValue:(id)a9 stillImageProcessingFlags:(id)a10 camera:(id)a11 stillImageCaptureType:(id)a12 faceCount:(id)a13 petCount:(id)a14 version:(id)a15 sceneForAsset:(id)a16 subjectForAsset:(id)a17
{
  v46 = a3;
  v36 = a4;
  v45 = a4;
  v38 = a6;
  v44 = a6;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  v22 = a12;
  v23 = a13;
  v24 = a14;
  v25 = a15;
  v43 = a16;
  v42 = a17;
  v47.receiver = self;
  v47.super_class = BMPhotosStyle;
  v26 = [(BMEventBase *)&v47 init];
  if (v26)
  {
    v26->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v26->_identifier, a3);
    objc_storeStrong(&v26->_styleChoice, v36);
    v26->_styleSelectionType = a5;
    objc_storeStrong(&v26->_sliderValues, v38);
    v26->_userLibrarySize = a7;
    v26->_userLibraryAgeInDays = a8;
    if (v19)
    {
      v26->_hasBrightnessValue = 1;
      [v19 doubleValue];
    }

    else
    {
      v26->_hasBrightnessValue = 0;
      v27 = -1.0;
    }

    v26->_brightnessValue = v27;
    if (v20)
    {
      v26->_hasStillImageProcessingFlags = 1;
      v28 = [v20 unsignedIntValue];
    }

    else
    {
      v28 = 0;
      v26->_hasStillImageProcessingFlags = 0;
    }

    v26->_stillImageProcessingFlags = v28;
    if (v21)
    {
      v26->_hasCamera = 1;
      v29 = [v21 unsignedIntValue];
    }

    else
    {
      v29 = 0;
      v26->_hasCamera = 0;
    }

    v26->_camera = v29;
    if (v22)
    {
      v26->_hasStillImageCaptureType = 1;
      v30 = [v22 unsignedIntValue];
    }

    else
    {
      v30 = 0;
      v26->_hasStillImageCaptureType = 0;
    }

    v26->_stillImageCaptureType = v30;
    if (v23)
    {
      v26->_hasFaceCount = 1;
      v31 = [v23 unsignedIntValue];
    }

    else
    {
      v31 = 0;
      v26->_hasFaceCount = 0;
    }

    v26->_faceCount = v31;
    if (v24)
    {
      v26->_hasPetCount = 1;
      v32 = [v24 unsignedIntValue];
    }

    else
    {
      v32 = 0;
      v26->_hasPetCount = 0;
    }

    v26->_petCount = v32;
    if (v25)
    {
      v26->_hasVersion = 1;
      v33 = [v25 unsignedIntValue];
    }

    else
    {
      v33 = 0;
      v26->_hasVersion = 0;
    }

    v26->_version = v33;
    objc_storeStrong(&v26->_sceneForAsset, a16);
    objc_storeStrong(&v26->_subjectForAsset, a17);
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