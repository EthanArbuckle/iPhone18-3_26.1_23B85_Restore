@interface BMOasisAnalyticsGazeSample
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMOasisAnalyticsGazeSample)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMOasisAnalyticsGazeSample)initWithUserProfileId:(id)a3 eyeSide:(int)a4 pupilSizeCategory:(int)a5 offsetWithinEyeboxX:(id)a6 offsetWithinEyeboxY:(id)a7 offsetWithinEyeboxZ:(id)a8 totalEyeRelief:(id)a9 nearEyeRelief:(id)a10 pupil2dVisibleRatioNecam:(id)a11 pupil2dVisibleRatioBecam:(id)a12 pupilIrisContrastNecam:(id)a13 pupilIrisContrastBecam:(id)a14 countOfVisibleGlintsNecam:(id)a15 countOfVisibleGlintsBecam:(id)a16 temperatureCelsiusNecam:(id)a17 temperatureCelsiusBecam:(id)a18 enrollmentDeviceType:(int)a19;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMOasisAnalyticsGazeSample

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMOasisAnalyticsGazeSample *)self userProfileId];
    v7 = [v5 userProfileId];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMOasisAnalyticsGazeSample *)self userProfileId];
      v10 = [v5 userProfileId];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_75;
      }
    }

    v13 = [(BMOasisAnalyticsGazeSample *)self eyeSide];
    if (v13 == [v5 eyeSide])
    {
      v14 = [(BMOasisAnalyticsGazeSample *)self pupilSizeCategory];
      if (v14 == [v5 pupilSizeCategory])
      {
        if (!-[BMOasisAnalyticsGazeSample hasOffsetWithinEyeboxX](self, "hasOffsetWithinEyeboxX") && ![v5 hasOffsetWithinEyeboxX] || -[BMOasisAnalyticsGazeSample hasOffsetWithinEyeboxX](self, "hasOffsetWithinEyeboxX") && objc_msgSend(v5, "hasOffsetWithinEyeboxX") && (-[BMOasisAnalyticsGazeSample offsetWithinEyeboxX](self, "offsetWithinEyeboxX"), v16 = v15, objc_msgSend(v5, "offsetWithinEyeboxX"), v16 == v17))
        {
          if (!-[BMOasisAnalyticsGazeSample hasOffsetWithinEyeboxY](self, "hasOffsetWithinEyeboxY") && ![v5 hasOffsetWithinEyeboxY] || -[BMOasisAnalyticsGazeSample hasOffsetWithinEyeboxY](self, "hasOffsetWithinEyeboxY") && objc_msgSend(v5, "hasOffsetWithinEyeboxY") && (-[BMOasisAnalyticsGazeSample offsetWithinEyeboxY](self, "offsetWithinEyeboxY"), v19 = v18, objc_msgSend(v5, "offsetWithinEyeboxY"), v19 == v20))
          {
            if (!-[BMOasisAnalyticsGazeSample hasOffsetWithinEyeboxZ](self, "hasOffsetWithinEyeboxZ") && ![v5 hasOffsetWithinEyeboxZ] || -[BMOasisAnalyticsGazeSample hasOffsetWithinEyeboxZ](self, "hasOffsetWithinEyeboxZ") && objc_msgSend(v5, "hasOffsetWithinEyeboxZ") && (-[BMOasisAnalyticsGazeSample offsetWithinEyeboxZ](self, "offsetWithinEyeboxZ"), v22 = v21, objc_msgSend(v5, "offsetWithinEyeboxZ"), v22 == v23))
            {
              if (!-[BMOasisAnalyticsGazeSample hasTotalEyeRelief](self, "hasTotalEyeRelief") && ![v5 hasTotalEyeRelief] || -[BMOasisAnalyticsGazeSample hasTotalEyeRelief](self, "hasTotalEyeRelief") && objc_msgSend(v5, "hasTotalEyeRelief") && (-[BMOasisAnalyticsGazeSample totalEyeRelief](self, "totalEyeRelief"), v25 = v24, objc_msgSend(v5, "totalEyeRelief"), v25 == v26))
              {
                if (!-[BMOasisAnalyticsGazeSample hasNearEyeRelief](self, "hasNearEyeRelief") && ![v5 hasNearEyeRelief] || -[BMOasisAnalyticsGazeSample hasNearEyeRelief](self, "hasNearEyeRelief") && objc_msgSend(v5, "hasNearEyeRelief") && (-[BMOasisAnalyticsGazeSample nearEyeRelief](self, "nearEyeRelief"), v28 = v27, objc_msgSend(v5, "nearEyeRelief"), v28 == v29))
                {
                  if (!-[BMOasisAnalyticsGazeSample hasPupil2dVisibleRatioNecam](self, "hasPupil2dVisibleRatioNecam") && ![v5 hasPupil2dVisibleRatioNecam] || -[BMOasisAnalyticsGazeSample hasPupil2dVisibleRatioNecam](self, "hasPupil2dVisibleRatioNecam") && objc_msgSend(v5, "hasPupil2dVisibleRatioNecam") && (-[BMOasisAnalyticsGazeSample pupil2dVisibleRatioNecam](self, "pupil2dVisibleRatioNecam"), v31 = v30, objc_msgSend(v5, "pupil2dVisibleRatioNecam"), v31 == v32))
                  {
                    if (!-[BMOasisAnalyticsGazeSample hasPupil2dVisibleRatioBecam](self, "hasPupil2dVisibleRatioBecam") && ![v5 hasPupil2dVisibleRatioBecam] || -[BMOasisAnalyticsGazeSample hasPupil2dVisibleRatioBecam](self, "hasPupil2dVisibleRatioBecam") && objc_msgSend(v5, "hasPupil2dVisibleRatioBecam") && (-[BMOasisAnalyticsGazeSample pupil2dVisibleRatioBecam](self, "pupil2dVisibleRatioBecam"), v34 = v33, objc_msgSend(v5, "pupil2dVisibleRatioBecam"), v34 == v35))
                    {
                      if (!-[BMOasisAnalyticsGazeSample hasPupilIrisContrastNecam](self, "hasPupilIrisContrastNecam") && ![v5 hasPupilIrisContrastNecam] || -[BMOasisAnalyticsGazeSample hasPupilIrisContrastNecam](self, "hasPupilIrisContrastNecam") && objc_msgSend(v5, "hasPupilIrisContrastNecam") && (-[BMOasisAnalyticsGazeSample pupilIrisContrastNecam](self, "pupilIrisContrastNecam"), v37 = v36, objc_msgSend(v5, "pupilIrisContrastNecam"), v37 == v38))
                      {
                        if (!-[BMOasisAnalyticsGazeSample hasPupilIrisContrastBecam](self, "hasPupilIrisContrastBecam") && ![v5 hasPupilIrisContrastBecam] || -[BMOasisAnalyticsGazeSample hasPupilIrisContrastBecam](self, "hasPupilIrisContrastBecam") && objc_msgSend(v5, "hasPupilIrisContrastBecam") && (-[BMOasisAnalyticsGazeSample pupilIrisContrastBecam](self, "pupilIrisContrastBecam"), v40 = v39, objc_msgSend(v5, "pupilIrisContrastBecam"), v40 == v41))
                        {
                          if (!-[BMOasisAnalyticsGazeSample hasCountOfVisibleGlintsNecam](self, "hasCountOfVisibleGlintsNecam") && ![v5 hasCountOfVisibleGlintsNecam] || -[BMOasisAnalyticsGazeSample hasCountOfVisibleGlintsNecam](self, "hasCountOfVisibleGlintsNecam") && objc_msgSend(v5, "hasCountOfVisibleGlintsNecam") && (v42 = -[BMOasisAnalyticsGazeSample countOfVisibleGlintsNecam](self, "countOfVisibleGlintsNecam"), v42 == objc_msgSend(v5, "countOfVisibleGlintsNecam")))
                          {
                            if (!-[BMOasisAnalyticsGazeSample hasCountOfVisibleGlintsBecam](self, "hasCountOfVisibleGlintsBecam") && ![v5 hasCountOfVisibleGlintsBecam] || -[BMOasisAnalyticsGazeSample hasCountOfVisibleGlintsBecam](self, "hasCountOfVisibleGlintsBecam") && objc_msgSend(v5, "hasCountOfVisibleGlintsBecam") && (v43 = -[BMOasisAnalyticsGazeSample countOfVisibleGlintsBecam](self, "countOfVisibleGlintsBecam"), v43 == objc_msgSend(v5, "countOfVisibleGlintsBecam")))
                            {
                              if (!-[BMOasisAnalyticsGazeSample hasTemperatureCelsiusNecam](self, "hasTemperatureCelsiusNecam") && ![v5 hasTemperatureCelsiusNecam] || -[BMOasisAnalyticsGazeSample hasTemperatureCelsiusNecam](self, "hasTemperatureCelsiusNecam") && objc_msgSend(v5, "hasTemperatureCelsiusNecam") && (-[BMOasisAnalyticsGazeSample temperatureCelsiusNecam](self, "temperatureCelsiusNecam"), v45 = v44, objc_msgSend(v5, "temperatureCelsiusNecam"), v45 == v46))
                              {
                                if (!-[BMOasisAnalyticsGazeSample hasTemperatureCelsiusBecam](self, "hasTemperatureCelsiusBecam") && ![v5 hasTemperatureCelsiusBecam] || -[BMOasisAnalyticsGazeSample hasTemperatureCelsiusBecam](self, "hasTemperatureCelsiusBecam") && objc_msgSend(v5, "hasTemperatureCelsiusBecam") && (-[BMOasisAnalyticsGazeSample temperatureCelsiusBecam](self, "temperatureCelsiusBecam"), v48 = v47, objc_msgSend(v5, "temperatureCelsiusBecam"), v48 == v49))
                                {
                                  v50 = [(BMOasisAnalyticsGazeSample *)self enrollmentDeviceType];
                                  v12 = v50 == [v5 enrollmentDeviceType];
LABEL_76:

                                  goto LABEL_77;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_75:
    v12 = 0;
    goto LABEL_76;
  }

  v12 = 0;
LABEL_77:

  return v12;
}

- (id)jsonDictionary
{
  v81[17] = *MEMORY[0x1E69E9840];
  v3 = [(BMOasisAnalyticsGazeSample *)self userProfileId];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMOasisAnalyticsGazeSample eyeSide](self, "eyeSide")}];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMOasisAnalyticsGazeSample pupilSizeCategory](self, "pupilSizeCategory")}];
  if (![(BMOasisAnalyticsGazeSample *)self hasOffsetWithinEyeboxX]|| ([(BMOasisAnalyticsGazeSample *)self offsetWithinEyeboxX], fabsf(v6) == INFINITY))
  {
    v8 = 0;
  }

  else
  {
    [(BMOasisAnalyticsGazeSample *)self offsetWithinEyeboxX];
    v7 = MEMORY[0x1E696AD98];
    [(BMOasisAnalyticsGazeSample *)self offsetWithinEyeboxX];
    v8 = [v7 numberWithFloat:?];
  }

  if (![(BMOasisAnalyticsGazeSample *)self hasOffsetWithinEyeboxY]|| ([(BMOasisAnalyticsGazeSample *)self offsetWithinEyeboxY], fabsf(v9) == INFINITY))
  {
    v11 = 0;
  }

  else
  {
    [(BMOasisAnalyticsGazeSample *)self offsetWithinEyeboxY];
    v10 = MEMORY[0x1E696AD98];
    [(BMOasisAnalyticsGazeSample *)self offsetWithinEyeboxY];
    v11 = [v10 numberWithFloat:?];
  }

  if (![(BMOasisAnalyticsGazeSample *)self hasOffsetWithinEyeboxZ]|| ([(BMOasisAnalyticsGazeSample *)self offsetWithinEyeboxZ], fabsf(v12) == INFINITY))
  {
    v14 = 0;
  }

  else
  {
    [(BMOasisAnalyticsGazeSample *)self offsetWithinEyeboxZ];
    v13 = MEMORY[0x1E696AD98];
    [(BMOasisAnalyticsGazeSample *)self offsetWithinEyeboxZ];
    v14 = [v13 numberWithFloat:?];
  }

  if (![(BMOasisAnalyticsGazeSample *)self hasTotalEyeRelief]|| ([(BMOasisAnalyticsGazeSample *)self totalEyeRelief], fabsf(v15) == INFINITY))
  {
    v17 = 0;
  }

  else
  {
    [(BMOasisAnalyticsGazeSample *)self totalEyeRelief];
    v16 = MEMORY[0x1E696AD98];
    [(BMOasisAnalyticsGazeSample *)self totalEyeRelief];
    v17 = [v16 numberWithFloat:?];
  }

  if (![(BMOasisAnalyticsGazeSample *)self hasNearEyeRelief]|| ([(BMOasisAnalyticsGazeSample *)self nearEyeRelief], fabsf(v18) == INFINITY))
  {
    v79 = 0;
  }

  else
  {
    [(BMOasisAnalyticsGazeSample *)self nearEyeRelief];
    v19 = MEMORY[0x1E696AD98];
    [(BMOasisAnalyticsGazeSample *)self nearEyeRelief];
    v79 = [v19 numberWithFloat:?];
  }

  if (![(BMOasisAnalyticsGazeSample *)self hasPupil2dVisibleRatioNecam]|| ([(BMOasisAnalyticsGazeSample *)self pupil2dVisibleRatioNecam], fabsf(v20) == INFINITY))
  {
    v78 = 0;
  }

  else
  {
    [(BMOasisAnalyticsGazeSample *)self pupil2dVisibleRatioNecam];
    v21 = MEMORY[0x1E696AD98];
    [(BMOasisAnalyticsGazeSample *)self pupil2dVisibleRatioNecam];
    v78 = [v21 numberWithFloat:?];
  }

  if (![(BMOasisAnalyticsGazeSample *)self hasPupil2dVisibleRatioBecam]|| ([(BMOasisAnalyticsGazeSample *)self pupil2dVisibleRatioBecam], fabsf(v22) == INFINITY))
  {
    v77 = 0;
  }

  else
  {
    [(BMOasisAnalyticsGazeSample *)self pupil2dVisibleRatioBecam];
    v23 = MEMORY[0x1E696AD98];
    [(BMOasisAnalyticsGazeSample *)self pupil2dVisibleRatioBecam];
    v77 = [v23 numberWithFloat:?];
  }

  if (![(BMOasisAnalyticsGazeSample *)self hasPupilIrisContrastNecam]|| ([(BMOasisAnalyticsGazeSample *)self pupilIrisContrastNecam], fabsf(v24) == INFINITY))
  {
    v76 = 0;
  }

  else
  {
    [(BMOasisAnalyticsGazeSample *)self pupilIrisContrastNecam];
    v25 = MEMORY[0x1E696AD98];
    [(BMOasisAnalyticsGazeSample *)self pupilIrisContrastNecam];
    v76 = [v25 numberWithFloat:?];
  }

  if (![(BMOasisAnalyticsGazeSample *)self hasPupilIrisContrastBecam]|| ([(BMOasisAnalyticsGazeSample *)self pupilIrisContrastBecam], fabsf(v26) == INFINITY))
  {
    v75 = 0;
  }

  else
  {
    [(BMOasisAnalyticsGazeSample *)self pupilIrisContrastBecam];
    v27 = MEMORY[0x1E696AD98];
    [(BMOasisAnalyticsGazeSample *)self pupilIrisContrastBecam];
    v75 = [v27 numberWithFloat:?];
  }

  if ([(BMOasisAnalyticsGazeSample *)self hasCountOfVisibleGlintsNecam])
  {
    v74 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMOasisAnalyticsGazeSample countOfVisibleGlintsNecam](self, "countOfVisibleGlintsNecam")}];
  }

  else
  {
    v74 = 0;
  }

  if ([(BMOasisAnalyticsGazeSample *)self hasCountOfVisibleGlintsBecam])
  {
    v73 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMOasisAnalyticsGazeSample countOfVisibleGlintsBecam](self, "countOfVisibleGlintsBecam")}];
  }

  else
  {
    v73 = 0;
  }

  if (![(BMOasisAnalyticsGazeSample *)self hasTemperatureCelsiusNecam]|| ([(BMOasisAnalyticsGazeSample *)self temperatureCelsiusNecam], fabsf(v28) == INFINITY))
  {
    v72 = 0;
  }

  else
  {
    [(BMOasisAnalyticsGazeSample *)self temperatureCelsiusNecam];
    v29 = MEMORY[0x1E696AD98];
    [(BMOasisAnalyticsGazeSample *)self temperatureCelsiusNecam];
    v72 = [v29 numberWithFloat:?];
  }

  if (![(BMOasisAnalyticsGazeSample *)self hasTemperatureCelsiusBecam]|| ([(BMOasisAnalyticsGazeSample *)self temperatureCelsiusBecam], fabsf(v30) == INFINITY))
  {
    v71 = 0;
  }

  else
  {
    [(BMOasisAnalyticsGazeSample *)self temperatureCelsiusBecam];
    v31 = MEMORY[0x1E696AD98];
    [(BMOasisAnalyticsGazeSample *)self temperatureCelsiusBecam];
    v71 = [v31 numberWithFloat:?];
  }

  v32 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMOasisAnalyticsGazeSample enrollmentDeviceType](self, "enrollmentDeviceType")}];
  v80[0] = @"userProfileId";
  v33 = v3;
  if (!v3)
  {
    v33 = [MEMORY[0x1E695DFB0] null];
  }

  v64 = v33;
  v81[0] = v33;
  v80[1] = @"eyeSide";
  v34 = v4;
  if (!v4)
  {
    v34 = [MEMORY[0x1E695DFB0] null];
  }

  v63 = v34;
  v81[1] = v34;
  v80[2] = @"pupilSizeCategory";
  v35 = v5;
  if (!v5)
  {
    v35 = [MEMORY[0x1E695DFB0] null];
  }

  v62 = v35;
  v81[2] = v35;
  v80[3] = @"offsetWithinEyeboxX";
  v36 = v8;
  if (!v8)
  {
    v36 = [MEMORY[0x1E695DFB0] null];
  }

  v61 = v36;
  v81[3] = v36;
  v80[4] = @"offsetWithinEyeboxY";
  v37 = v11;
  if (!v11)
  {
    v37 = [MEMORY[0x1E695DFB0] null];
  }

  v60 = v37;
  v81[4] = v37;
  v80[5] = @"offsetWithinEyeboxZ";
  v38 = v14;
  if (!v14)
  {
    v38 = [MEMORY[0x1E695DFB0] null];
  }

  v59 = v38;
  v81[5] = v38;
  v80[6] = @"totalEyeRelief";
  v39 = v17;
  if (!v17)
  {
    v39 = [MEMORY[0x1E695DFB0] null];
  }

  v58 = v39;
  v81[6] = v39;
  v80[7] = @"nearEyeRelief";
  v40 = v79;
  if (!v79)
  {
    v40 = [MEMORY[0x1E695DFB0] null];
  }

  v81[7] = v40;
  v80[8] = @"pupil2dVisibleRatioNecam";
  v41 = v78;
  if (!v78)
  {
    v41 = [MEMORY[0x1E695DFB0] null];
  }

  v70 = v3;
  v81[8] = v41;
  v80[9] = @"pupil2dVisibleRatioBecam";
  v42 = v77;
  if (!v77)
  {
    v42 = [MEMORY[0x1E695DFB0] null];
  }

  v69 = v4;
  v81[9] = v42;
  v80[10] = @"pupilIrisContrastNecam";
  v43 = v76;
  if (!v76)
  {
    v43 = [MEMORY[0x1E695DFB0] null];
  }

  v57 = v40;
  v54 = v43;
  v81[10] = v43;
  v80[11] = @"pupilIrisContrastBecam";
  v44 = v75;
  if (!v75)
  {
    v44 = [MEMORY[0x1E695DFB0] null];
  }

  v67 = v17;
  v68 = v14;
  v66 = v5;
  v81[11] = v44;
  v80[12] = @"countOfVisibleGlintsNecam";
  v45 = v74;
  if (!v74)
  {
    v45 = [MEMORY[0x1E695DFB0] null];
  }

  v56 = v41;
  v46 = v11;
  v81[12] = v45;
  v80[13] = @"countOfVisibleGlintsBecam";
  v47 = v73;
  if (!v73)
  {
    v47 = [MEMORY[0x1E695DFB0] null];
  }

  v48 = v8;
  v81[13] = v47;
  v80[14] = @"temperatureCelsiusNecam";
  v49 = v72;
  if (!v72)
  {
    v49 = [MEMORY[0x1E695DFB0] null];
  }

  v81[14] = v49;
  v80[15] = @"temperatureCelsiusBecam";
  v50 = v71;
  if (!v71)
  {
    v50 = [MEMORY[0x1E695DFB0] null];
  }

  v81[15] = v50;
  v80[16] = @"enrollmentDeviceType";
  v51 = v32;
  if (!v32)
  {
    v51 = [MEMORY[0x1E695DFB0] null];
  }

  v81[16] = v51;
  v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:v80 count:{17, v54}];
  if (!v32)
  {
  }

  if (!v71)
  {
  }

  if (!v72)
  {
  }

  if (!v73)
  {
  }

  if (!v74)
  {
  }

  if (!v75)
  {
  }

  if (!v76)
  {
  }

  if (!v77)
  {
  }

  if (!v78)
  {
  }

  if (v79)
  {
    if (v67)
    {
      goto LABEL_105;
    }
  }

  else
  {

    if (v67)
    {
LABEL_105:
      if (v68)
      {
        goto LABEL_106;
      }

      goto LABEL_116;
    }
  }

  if (v68)
  {
LABEL_106:
    if (v46)
    {
      goto LABEL_107;
    }

    goto LABEL_117;
  }

LABEL_116:

  if (v46)
  {
LABEL_107:
    if (v48)
    {
      goto LABEL_108;
    }

    goto LABEL_118;
  }

LABEL_117:

  if (v48)
  {
LABEL_108:
    if (v66)
    {
      goto LABEL_109;
    }

    goto LABEL_119;
  }

LABEL_118:

  if (v66)
  {
LABEL_109:
    if (v69)
    {
      goto LABEL_110;
    }

LABEL_120:

    if (v70)
    {
      goto LABEL_111;
    }

    goto LABEL_121;
  }

LABEL_119:

  if (!v69)
  {
    goto LABEL_120;
  }

LABEL_110:
  if (v70)
  {
    goto LABEL_111;
  }

LABEL_121:

LABEL_111:
  v52 = *MEMORY[0x1E69E9840];

  return v65;
}

- (BMOasisAnalyticsGazeSample)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v177[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"userProfileId"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
LABEL_4:
    v8 = [v5 objectForKeyedSubscript:@"eyeSide"];
    if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v142 = 0;
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
LABEL_15:
      v142 = v9;
LABEL_16:
      v14 = [v5 objectForKeyedSubscript:@"pupilSizeCategory"];
      if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v15 = a4;
        v16 = 0;
        goto LABEL_24;
      }

      v15 = a4;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v14;
LABEL_23:
        v16 = v17;
LABEL_24:
        v18 = [v5 objectForKeyedSubscript:@"offsetWithinEyeboxX"];
        v140 = v7;
        v141 = v18;
        if (!v18 || (v19 = v18, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v137 = 0;
          goto LABEL_27;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v137 = v19;
LABEL_27:
          v20 = [v5 objectForKeyedSubscript:@"offsetWithinEyeboxY"];
          if (!v20 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v132 = 0;
            v133 = v20;
            goto LABEL_30;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v133 = v20;
            v132 = v20;
LABEL_30:
            v21 = [v5 objectForKeyedSubscript:@"offsetWithinEyeboxZ"];
            v136 = v21;
            if (!v21 || (v22 = v21, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v138 = 0;
              goto LABEL_33;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v138 = v22;
LABEL_33:
              v23 = [v5 objectForKeyedSubscript:@"totalEyeRelief"];
              v131 = v23;
              if (!v23 || (v24 = v23, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v134 = 0;
                goto LABEL_36;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v134 = v24;
LABEL_36:
                v25 = [v5 objectForKeyedSubscript:@"nearEyeRelief"];
                v126 = v25;
                if (!v25 || (v26 = v25, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v127 = 0;
                  goto LABEL_39;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v127 = v26;
LABEL_39:
                  v27 = [v5 objectForKeyedSubscript:@"pupil2dVisibleRatioNecam"];
                  v123 = v27;
                  if (!v27 || (v28 = v27, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v124 = 0;
                    goto LABEL_42;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v124 = v28;
LABEL_42:
                    v29 = [v5 objectForKeyedSubscript:@"pupil2dVisibleRatioBecam"];
                    v120 = v29;
                    if (!v29 || (v30 = v29, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v121 = 0;
                      goto LABEL_45;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v121 = v30;
LABEL_45:
                      v31 = [v5 objectForKeyedSubscript:@"pupilIrisContrastNecam"];
                      v117 = v31;
                      if (!v31 || (v32 = v31, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v118 = 0;
                        goto LABEL_48;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v118 = v32;
LABEL_48:
                        v33 = [v5 objectForKeyedSubscript:@"pupilIrisContrastBecam"];
                        v114 = v33;
                        if (!v33 || (v34 = v33, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v115 = 0;
                          goto LABEL_51;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v115 = v34;
LABEL_51:
                          v35 = [v5 objectForKeyedSubscript:@"countOfVisibleGlintsNecam"];
                          v109 = v35;
                          if (!v35 || (v36 = v35, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v112 = 0;
                            goto LABEL_54;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v112 = v36;
LABEL_54:
                            v37 = [v5 objectForKeyedSubscript:@"countOfVisibleGlintsBecam"];
                            v108 = v37;
                            if (!v37 || (v38 = v37, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v110 = 0;
LABEL_57:
                              v39 = [v5 objectForKeyedSubscript:@"temperatureCelsiusNecam"];
                              v106 = v39;
                              if (!v39)
                              {
                                goto LABEL_106;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v39 = 0;
                                goto LABEL_106;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v39 = v39;
LABEL_106:
                                v74 = [v5 objectForKeyedSubscript:@"temperatureCelsiusBecam"];
                                v103 = v39;
                                v105 = v16;
                                v102 = v74;
                                if (!v74 || (v75 = v74, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v107 = 0;
                                  goto LABEL_109;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v107 = v75;
LABEL_109:
                                  v76 = [v5 objectForKeyedSubscript:@"enrollmentDeviceType"];
                                  if (!v76 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    v77 = 0;
LABEL_146:
                                    v92 = [v142 intValue];
                                    v93 = [v105 intValue];
                                    LODWORD(v100) = [v77 intValue];
                                    v94 = v92;
                                    v44 = v137;
                                    v15 = v132;
                                    v13 = [(BMOasisAnalyticsGazeSample *)self initWithUserProfileId:v140 eyeSide:v94 pupilSizeCategory:v93 offsetWithinEyeboxX:v137 offsetWithinEyeboxY:v132 offsetWithinEyeboxZ:v138 totalEyeRelief:v134 nearEyeRelief:v127 pupil2dVisibleRatioNecam:v124 pupil2dVisibleRatioBecam:v121 pupilIrisContrastNecam:v118 pupilIrisContrastBecam:v115 countOfVisibleGlintsNecam:v112 countOfVisibleGlintsBecam:v110 temperatureCelsiusNecam:v39 temperatureCelsiusBecam:v107 enrollmentDeviceType:v100];
                                    self = v13;
                                    v20 = v133;
LABEL_147:

                                    v45 = self;
                                    v16 = v105;
LABEL_148:

LABEL_149:
LABEL_150:

LABEL_151:
LABEL_152:

                                    goto LABEL_153;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v82 = v76;
LABEL_145:
                                    v77 = v82;
                                    goto LABEL_146;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v82 = [MEMORY[0x1E696AD98] numberWithInt:BMOasisAnalyticsGazeSampleEnrollmentDeviceTypeFromString(v76)];
                                    goto LABEL_145;
                                  }

                                  if (v15)
                                  {
                                    v97 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v101 = *MEMORY[0x1E698F240];
                                    v144 = *MEMORY[0x1E696A578];
                                    v98 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"enrollmentDeviceType"];
                                    v145 = v98;
                                    v99 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v145 forKeys:&v144 count:1];
                                    *v15 = [v97 initWithDomain:v101 code:2 userInfo:v99];
                                  }

                                  v77 = 0;
                                  v13 = 0;
LABEL_175:
                                  v44 = v137;
                                  v15 = v132;
                                  v20 = v133;
                                  goto LABEL_147;
                                }

                                if (v15)
                                {
                                  v89 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v90 = *MEMORY[0x1E698F240];
                                  v146 = *MEMORY[0x1E696A578];
                                  v77 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"temperatureCelsiusBecam"];
                                  v147 = v77;
                                  v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v147 forKeys:&v146 count:1];
                                  v91 = [v89 initWithDomain:v90 code:2 userInfo:v76];
                                  v107 = 0;
                                  v13 = 0;
                                  *v15 = v91;
                                  goto LABEL_175;
                                }

                                v107 = 0;
                                v13 = 0;
                                v45 = self;
LABEL_177:
                                v44 = v137;
                                v15 = v132;
                                v20 = v133;
                                goto LABEL_148;
                              }

                              if (v15)
                              {
                                v87 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v104 = *MEMORY[0x1E698F240];
                                v148 = *MEMORY[0x1E696A578];
                                v45 = self;
                                v107 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"temperatureCelsiusNecam"];
                                v149 = v107;
                                v102 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v149 forKeys:&v148 count:1];
                                v88 = [v87 initWithDomain:v104 code:2 userInfo:?];
                                v103 = 0;
                                v13 = 0;
                                *v15 = v88;
                                goto LABEL_177;
                              }

                              v103 = 0;
                              v13 = 0;
                              v45 = self;
LABEL_171:
                              v44 = v137;
                              v15 = v132;
                              v20 = v133;
                              goto LABEL_149;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v110 = v38;
                              goto LABEL_57;
                            }

                            if (v15)
                            {
                              v85 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v111 = *MEMORY[0x1E698F240];
                              v150 = *MEMORY[0x1E696A578];
                              v45 = self;
                              v103 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"countOfVisibleGlintsBecam"];
                              v151 = v103;
                              v106 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v151 forKeys:&v150 count:1];
                              v86 = [v85 initWithDomain:v111 code:2 userInfo:?];
                              v110 = 0;
                              v13 = 0;
                              *v15 = v86;
                              goto LABEL_171;
                            }

                            v110 = 0;
                            v13 = 0;
                            v45 = self;
LABEL_169:
                            v44 = v137;
                            v15 = v132;
                            v20 = v133;
                            goto LABEL_150;
                          }

                          if (v15)
                          {
                            v83 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v113 = *MEMORY[0x1E698F240];
                            v152 = *MEMORY[0x1E696A578];
                            v45 = self;
                            v110 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"countOfVisibleGlintsNecam"];
                            v153 = v110;
                            v108 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v153 forKeys:&v152 count:1];
                            v84 = [v83 initWithDomain:v113 code:2 userInfo:?];
                            v112 = 0;
                            v13 = 0;
                            *v15 = v84;
                            goto LABEL_169;
                          }

                          v112 = 0;
                          v13 = 0;
                          v45 = self;
LABEL_167:
                          v44 = v137;
                          v15 = v132;
                          v20 = v133;
                          goto LABEL_151;
                        }

                        if (v15)
                        {
                          v80 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v116 = *MEMORY[0x1E698F240];
                          v154 = *MEMORY[0x1E696A578];
                          v45 = self;
                          v112 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"pupilIrisContrastBecam"];
                          v155 = v112;
                          v109 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v155 forKeys:&v154 count:1];
                          v81 = [v80 initWithDomain:v116 code:2 userInfo:?];
                          v115 = 0;
                          v13 = 0;
                          *v15 = v81;
                          goto LABEL_167;
                        }

                        v115 = 0;
                        v13 = 0;
                        v45 = self;
LABEL_165:
                        v44 = v137;
                        v15 = v132;
                        v20 = v133;
                        goto LABEL_152;
                      }

                      if (v15)
                      {
                        v78 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v119 = *MEMORY[0x1E698F240];
                        v156 = *MEMORY[0x1E696A578];
                        v45 = self;
                        v115 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"pupilIrisContrastNecam"];
                        v157 = v115;
                        v114 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v157 forKeys:&v156 count:1];
                        v79 = [v78 initWithDomain:v119 code:2 userInfo:?];
                        v118 = 0;
                        v13 = 0;
                        *v15 = v79;
                        goto LABEL_165;
                      }

                      v118 = 0;
                      v13 = 0;
                      v45 = self;
LABEL_142:
                      v44 = v137;
                      v15 = v132;
                      v20 = v133;
LABEL_153:

                      goto LABEL_154;
                    }

                    if (v15)
                    {
                      v72 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v122 = *MEMORY[0x1E698F240];
                      v158 = *MEMORY[0x1E696A578];
                      v45 = self;
                      v118 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"pupil2dVisibleRatioBecam"];
                      v159 = v118;
                      v117 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v159 forKeys:&v158 count:1];
                      v73 = [v72 initWithDomain:v122 code:2 userInfo:?];
                      v121 = 0;
                      v13 = 0;
                      *v15 = v73;
                      goto LABEL_142;
                    }

                    v121 = 0;
                    v13 = 0;
                    v45 = self;
LABEL_138:
                    v44 = v137;
                    v15 = v132;
                    v20 = v133;
LABEL_154:

                    goto LABEL_155;
                  }

                  if (v15)
                  {
                    v70 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v125 = *MEMORY[0x1E698F240];
                    v160 = *MEMORY[0x1E696A578];
                    v45 = self;
                    v121 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"pupil2dVisibleRatioNecam"];
                    v161 = v121;
                    v120 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v161 forKeys:&v160 count:1];
                    v71 = [v70 initWithDomain:v125 code:2 userInfo:?];
                    v124 = 0;
                    v13 = 0;
                    *v15 = v71;
                    goto LABEL_138;
                  }

                  v124 = 0;
                  v13 = 0;
                  v45 = self;
LABEL_134:
                  v44 = v137;
                  v15 = v132;
                  v20 = v133;
LABEL_155:

                  goto LABEL_156;
                }

                if (v15)
                {
                  v68 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v130 = *MEMORY[0x1E698F240];
                  v162 = *MEMORY[0x1E696A578];
                  v45 = self;
                  v124 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"nearEyeRelief"];
                  v163 = v124;
                  v123 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v163 forKeys:&v162 count:1];
                  v69 = [v68 initWithDomain:v130 code:2 userInfo:?];
                  v127 = 0;
                  v13 = 0;
                  *v15 = v69;
                  goto LABEL_134;
                }

                v127 = 0;
                v13 = 0;
                v45 = self;
LABEL_130:
                v44 = v137;
                v15 = v132;
                v20 = v133;
LABEL_156:

                goto LABEL_157;
              }

              if (v15)
              {
                v56 = objc_alloc(MEMORY[0x1E696ABC0]);
                v135 = *MEMORY[0x1E698F240];
                v164 = *MEMORY[0x1E696A578];
                v45 = self;
                v127 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"totalEyeRelief"];
                v165 = v127;
                v126 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v165 forKeys:&v164 count:1];
                v57 = [v56 initWithDomain:v135 code:2 userInfo:?];
                v134 = 0;
                v13 = 0;
                *v15 = v57;
                goto LABEL_130;
              }

              v134 = 0;
              v13 = 0;
              v45 = self;
LABEL_120:
              v44 = v137;
              v15 = v132;
              v20 = v133;
LABEL_157:

              goto LABEL_158;
            }

            if (v15)
            {
              v51 = objc_alloc(MEMORY[0x1E696ABC0]);
              v129 = v6;
              v52 = *MEMORY[0x1E698F240];
              v166 = *MEMORY[0x1E696A578];
              v134 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"offsetWithinEyeboxZ"];
              v167 = v134;
              v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v167 forKeys:&v166 count:1];
              v54 = v52;
              v45 = self;
              v6 = v129;
              v131 = v53;
              v55 = [v51 initWithDomain:v54 code:2 userInfo:?];
              v138 = 0;
              v13 = 0;
              *v15 = v55;
              goto LABEL_120;
            }

            v138 = 0;
            v13 = 0;
            v45 = self;
            v44 = v137;
            v15 = v132;
            v20 = v133;
LABEL_158:

            goto LABEL_159;
          }

          if (v15)
          {
            v46 = objc_alloc(MEMORY[0x1E696ABC0]);
            v128 = v6;
            v47 = *MEMORY[0x1E698F240];
            v168 = *MEMORY[0x1E696A578];
            v138 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"offsetWithinEyeboxY"];
            v169 = v138;
            v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v169 forKeys:&v168 count:1];
            v49 = v47;
            v45 = self;
            v6 = v128;
            v136 = v48;
            v50 = [v46 initWithDomain:v49 code:2 userInfo:?];
            v13 = 0;
            *v15 = v50;
            v15 = 0;
            v44 = v137;
            goto LABEL_158;
          }

          v13 = 0;
          v45 = self;
          v44 = v137;
LABEL_159:

          v7 = v140;
          goto LABEL_160;
        }

        if (v15)
        {
          v139 = objc_alloc(MEMORY[0x1E696ABC0]);
          v40 = *MEMORY[0x1E698F240];
          v170 = *MEMORY[0x1E696A578];
          v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"offsetWithinEyeboxX"];
          v171 = v41;
          v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v171 forKeys:&v170 count:1];
          v43 = [v139 initWithDomain:v40 code:2 userInfo:v42];
          v44 = 0;
          v13 = 0;
          *v15 = v43;
          v15 = v41;
          v20 = v42;
          v45 = self;
          goto LABEL_159;
        }

        v44 = 0;
        v13 = 0;
LABEL_98:
        v45 = self;
LABEL_160:

        goto LABEL_161;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = [MEMORY[0x1E696AD98] numberWithInt:BMOasisAnalyticsGazeSamplePupilSizeCategoryFromString(v14)];
        goto LABEL_23;
      }

      if (a4)
      {
        v62 = objc_alloc(MEMORY[0x1E696ABC0]);
        v63 = *MEMORY[0x1E698F240];
        v172 = *MEMORY[0x1E696A578];
        v64 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"pupilSizeCategory"];
        v173 = v64;
        v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v173 forKeys:&v172 count:1];
        v66 = v62;
        v44 = v64;
        v141 = v65;
        v67 = [v66 initWithDomain:v63 code:2 userInfo:?];
        v13 = 0;
        *a4 = v67;
        v16 = 0;
        goto LABEL_98;
      }

      v13 = 0;
      v16 = 0;
LABEL_128:
      v45 = self;
LABEL_161:

      goto LABEL_162;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [MEMORY[0x1E696AD98] numberWithInt:BMOasisAnalyticsGazeSampleEyeSideFromString(v8)];
      goto LABEL_15;
    }

    if (a4)
    {
      v58 = objc_alloc(MEMORY[0x1E696ABC0]);
      v59 = *MEMORY[0x1E698F240];
      v174 = *MEMORY[0x1E696A578];
      v60 = a4;
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"eyeSide"];
      v175 = v16;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v175 forKeys:&v174 count:1];
      v61 = [v58 initWithDomain:v59 code:2 userInfo:v14];
      v142 = 0;
      v13 = 0;
      *v60 = v61;
      goto LABEL_128;
    }

    v142 = 0;
    v13 = 0;
LABEL_122:
    v45 = self;
LABEL_162:

    goto LABEL_163;
  }

  if (a4)
  {
    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v11 = *MEMORY[0x1E698F240];
    v176 = *MEMORY[0x1E696A578];
    v142 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"userProfileId"];
    v177[0] = v142;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v177 forKeys:&v176 count:1];
    v12 = [v10 initWithDomain:v11 code:2 userInfo:v8];
    v7 = 0;
    v13 = 0;
    *a4 = v12;
    goto LABEL_122;
  }

  v7 = 0;
  v13 = 0;
  v45 = self;
LABEL_163:

  v95 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMOasisAnalyticsGazeSample *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v20 = a3;
  if (self->_userProfileId)
  {
    PBDataWriterWriteStringField();
  }

  eyeSide = self->_eyeSide;
  PBDataWriterWriteUint32Field();
  pupilSizeCategory = self->_pupilSizeCategory;
  PBDataWriterWriteUint32Field();
  if (self->_hasOffsetWithinEyeboxX)
  {
    offsetWithinEyeboxX = self->_offsetWithinEyeboxX;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasOffsetWithinEyeboxY)
  {
    offsetWithinEyeboxY = self->_offsetWithinEyeboxY;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasOffsetWithinEyeboxZ)
  {
    offsetWithinEyeboxZ = self->_offsetWithinEyeboxZ;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasTotalEyeRelief)
  {
    totalEyeRelief = self->_totalEyeRelief;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasNearEyeRelief)
  {
    nearEyeRelief = self->_nearEyeRelief;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasPupil2dVisibleRatioNecam)
  {
    pupil2dVisibleRatioNecam = self->_pupil2dVisibleRatioNecam;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasPupil2dVisibleRatioBecam)
  {
    pupil2dVisibleRatioBecam = self->_pupil2dVisibleRatioBecam;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasPupilIrisContrastNecam)
  {
    pupilIrisContrastNecam = self->_pupilIrisContrastNecam;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasPupilIrisContrastBecam)
  {
    pupilIrisContrastBecam = self->_pupilIrisContrastBecam;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasCountOfVisibleGlintsNecam)
  {
    countOfVisibleGlintsNecam = self->_countOfVisibleGlintsNecam;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasCountOfVisibleGlintsBecam)
  {
    countOfVisibleGlintsBecam = self->_countOfVisibleGlintsBecam;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasTemperatureCelsiusNecam)
  {
    temperatureCelsiusNecam = self->_temperatureCelsiusNecam;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasTemperatureCelsiusBecam)
  {
    temperatureCelsiusBecam = self->_temperatureCelsiusBecam;
    PBDataWriterWriteFloatField();
  }

  enrollmentDeviceType = self->_enrollmentDeviceType;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v87.receiver = self;
  v87.super_class = BMOasisAnalyticsGazeSample;
  v5 = [(BMEventBase *)&v87 init];
  if (!v5)
  {
    goto LABEL_148;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v88) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v88 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v88 & 0x7F) << v7;
        if ((v88 & 0x80) == 0)
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
        break;
      }

      switch((v14 >> 3))
      {
        case 1u:
          v15 = PBReaderReadString();
          userProfileId = v5->_userProfileId;
          v5->_userProfileId = v15;

          goto LABEL_145;
        case 2u:
          v50 = 0;
          v51 = 0;
          v19 = 0;
          while (1)
          {
            LOBYTE(v88) = 0;
            v52 = [v4 position] + 1;
            if (v52 >= [v4 position] && (v53 = objc_msgSend(v4, "position") + 1, v53 <= objc_msgSend(v4, "length")))
            {
              v54 = [v4 data];
              [v54 getBytes:&v88 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v19 |= (v88 & 0x7F) << v50;
            if ((v88 & 0x80) == 0)
            {
              break;
            }

            v50 += 7;
            v23 = v51++ > 8;
            if (v23)
            {
              goto LABEL_114;
            }
          }

          if (([v4 hasError] & 1) != 0 || v19 > 4)
          {
LABEL_114:
            LODWORD(v19) = 0;
          }

          v69 = 36;
          goto LABEL_116;
        case 3u:
          v39 = 0;
          v40 = 0;
          v19 = 0;
          while (1)
          {
            LOBYTE(v88) = 0;
            v41 = [v4 position] + 1;
            if (v41 >= [v4 position] && (v42 = objc_msgSend(v4, "position") + 1, v42 <= objc_msgSend(v4, "length")))
            {
              v43 = [v4 data];
              [v43 getBytes:&v88 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v19 |= (v88 & 0x7F) << v39;
            if ((v88 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v23 = v40++ > 8;
            if (v23)
            {
              goto LABEL_110;
            }
          }

          if (([v4 hasError] & 1) != 0 || v19 > 6)
          {
LABEL_110:
            LODWORD(v19) = 0;
          }

          v69 = 40;
          goto LABEL_116;
        case 4u:
          v5->_hasOffsetWithinEyeboxX = 1;
          v88 = 0;
          v46 = [v4 position] + 4;
          if (v46 >= [v4 position] && (v47 = objc_msgSend(v4, "position") + 4, v47 <= objc_msgSend(v4, "length")))
          {
            v78 = [v4 data];
            [v78 getBytes:&v88 range:{objc_msgSend(v4, "position"), 4}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
          }

          else
          {
            [v4 _setError];
          }

          v72 = v88;
          v73 = 44;
          goto LABEL_144;
        case 5u:
          v5->_hasOffsetWithinEyeboxY = 1;
          v88 = 0;
          v28 = [v4 position] + 4;
          if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 4, v29 <= objc_msgSend(v4, "length")))
          {
            v75 = [v4 data];
            [v75 getBytes:&v88 range:{objc_msgSend(v4, "position"), 4}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
          }

          else
          {
            [v4 _setError];
          }

          v72 = v88;
          v73 = 48;
          goto LABEL_144;
        case 6u:
          v5->_hasOffsetWithinEyeboxZ = 1;
          v88 = 0;
          v55 = [v4 position] + 4;
          if (v55 >= [v4 position] && (v56 = objc_msgSend(v4, "position") + 4, v56 <= objc_msgSend(v4, "length")))
          {
            v80 = [v4 data];
            [v80 getBytes:&v88 range:{objc_msgSend(v4, "position"), 4}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
          }

          else
          {
            [v4 _setError];
          }

          v72 = v88;
          v73 = 52;
          goto LABEL_144;
        case 7u:
          v5->_hasTotalEyeRelief = 1;
          v88 = 0;
          v63 = [v4 position] + 4;
          if (v63 >= [v4 position] && (v64 = objc_msgSend(v4, "position") + 4, v64 <= objc_msgSend(v4, "length")))
          {
            v81 = [v4 data];
            [v81 getBytes:&v88 range:{objc_msgSend(v4, "position"), 4}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
          }

          else
          {
            [v4 _setError];
          }

          v72 = v88;
          v73 = 56;
          goto LABEL_144;
        case 8u:
          v5->_hasNearEyeRelief = 1;
          v88 = 0;
          v48 = [v4 position] + 4;
          if (v48 >= [v4 position] && (v49 = objc_msgSend(v4, "position") + 4, v49 <= objc_msgSend(v4, "length")))
          {
            v79 = [v4 data];
            [v79 getBytes:&v88 range:{objc_msgSend(v4, "position"), 4}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
          }

          else
          {
            [v4 _setError];
          }

          v72 = v88;
          v73 = 60;
          goto LABEL_144;
        case 9u:
          v5->_hasPupil2dVisibleRatioNecam = 1;
          v88 = 0;
          v67 = [v4 position] + 4;
          if (v67 >= [v4 position] && (v68 = objc_msgSend(v4, "position") + 4, v68 <= objc_msgSend(v4, "length")))
          {
            v83 = [v4 data];
            [v83 getBytes:&v88 range:{objc_msgSend(v4, "position"), 4}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
          }

          else
          {
            [v4 _setError];
          }

          v72 = v88;
          v73 = 64;
          goto LABEL_144;
        case 0xAu:
          v5->_hasPupil2dVisibleRatioBecam = 1;
          v88 = 0;
          v37 = [v4 position] + 4;
          if (v37 >= [v4 position] && (v38 = objc_msgSend(v4, "position") + 4, v38 <= objc_msgSend(v4, "length")))
          {
            v76 = [v4 data];
            [v76 getBytes:&v88 range:{objc_msgSend(v4, "position"), 4}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
          }

          else
          {
            [v4 _setError];
          }

          v72 = v88;
          v73 = 68;
          goto LABEL_144;
        case 0xBu:
          v5->_hasPupilIrisContrastNecam = 1;
          v88 = 0;
          v65 = [v4 position] + 4;
          if (v65 >= [v4 position] && (v66 = objc_msgSend(v4, "position") + 4, v66 <= objc_msgSend(v4, "length")))
          {
            v82 = [v4 data];
            [v82 getBytes:&v88 range:{objc_msgSend(v4, "position"), 4}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
          }

          else
          {
            [v4 _setError];
          }

          v72 = v88;
          v73 = 72;
          goto LABEL_144;
        case 0xCu:
          v5->_hasPupilIrisContrastBecam = 1;
          v88 = 0;
          v26 = [v4 position] + 4;
          if (v26 >= [v4 position] && (v27 = objc_msgSend(v4, "position") + 4, v27 <= objc_msgSend(v4, "length")))
          {
            v74 = [v4 data];
            [v74 getBytes:&v88 range:{objc_msgSend(v4, "position"), 4}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
          }

          else
          {
            [v4 _setError];
          }

          v72 = v88;
          v73 = 76;
          goto LABEL_144;
        case 0xDu:
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v5->_hasCountOfVisibleGlintsNecam = 1;
          while (1)
          {
            LOBYTE(v88) = 0;
            v33 = [v4 position] + 1;
            if (v33 >= [v4 position] && (v34 = objc_msgSend(v4, "position") + 1, v34 <= objc_msgSend(v4, "length")))
            {
              v35 = [v4 data];
              [v35 getBytes:&v88 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v32 |= (v88 & 0x7F) << v30;
            if ((v88 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v13 = v31++ >= 9;
            if (v13)
            {
              v36 = 0;
              goto LABEL_107;
            }
          }

          if ([v4 hasError])
          {
            v36 = 0;
          }

          else
          {
            v36 = v32;
          }

LABEL_107:
          v70 = 80;
          goto LABEL_121;
        case 0xEu:
          v57 = 0;
          v58 = 0;
          v59 = 0;
          v5->_hasCountOfVisibleGlintsBecam = 1;
          while (1)
          {
            LOBYTE(v88) = 0;
            v60 = [v4 position] + 1;
            if (v60 >= [v4 position] && (v61 = objc_msgSend(v4, "position") + 1, v61 <= objc_msgSend(v4, "length")))
            {
              v62 = [v4 data];
              [v62 getBytes:&v88 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v59 |= (v88 & 0x7F) << v57;
            if ((v88 & 0x80) == 0)
            {
              break;
            }

            v57 += 7;
            v13 = v58++ >= 9;
            if (v13)
            {
              v36 = 0;
              goto LABEL_120;
            }
          }

          if ([v4 hasError])
          {
            v36 = 0;
          }

          else
          {
            v36 = v59;
          }

LABEL_120:
          v70 = 84;
LABEL_121:
          *(&v5->super.super.isa + v70) = v36;
          goto LABEL_145;
        case 0xFu:
          v5->_hasTemperatureCelsiusNecam = 1;
          v88 = 0;
          v24 = [v4 position] + 4;
          if (v24 >= [v4 position] && (v25 = objc_msgSend(v4, "position") + 4, v25 <= objc_msgSend(v4, "length")))
          {
            v71 = [v4 data];
            [v71 getBytes:&v88 range:{objc_msgSend(v4, "position"), 4}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
          }

          else
          {
            [v4 _setError];
          }

          v72 = v88;
          v73 = 88;
          goto LABEL_144;
        case 0x10u:
          v5->_hasTemperatureCelsiusBecam = 1;
          v88 = 0;
          v44 = [v4 position] + 4;
          if (v44 >= [v4 position] && (v45 = objc_msgSend(v4, "position") + 4, v45 <= objc_msgSend(v4, "length")))
          {
            v77 = [v4 data];
            [v77 getBytes:&v88 range:{objc_msgSend(v4, "position"), 4}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
          }

          else
          {
            [v4 _setError];
          }

          v72 = v88;
          v73 = 92;
LABEL_144:
          *(&v5->super.super.isa + v73) = v72;
          goto LABEL_145;
        case 0x11u:
          v17 = 0;
          v18 = 0;
          v19 = 0;
          break;
        default:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_147;
          }

          goto LABEL_145;
      }

      while (1)
      {
        LOBYTE(v88) = 0;
        v20 = [v4 position] + 1;
        if (v20 >= [v4 position] && (v21 = objc_msgSend(v4, "position") + 1, v21 <= objc_msgSend(v4, "length")))
        {
          v22 = [v4 data];
          [v22 getBytes:&v88 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v19 |= (v88 & 0x7F) << v17;
        if ((v88 & 0x80) == 0)
        {
          break;
        }

        v17 += 7;
        v23 = v18++ > 8;
        if (v23)
        {
          goto LABEL_102;
        }
      }

      if (([v4 hasError] & 1) != 0 || v19 > 2)
      {
LABEL_102:
        LODWORD(v19) = 0;
      }

      v69 = 96;
LABEL_116:
      *(&v5->super.super.isa + v69) = v19;
LABEL_145:
      v84 = [v4 position];
    }

    while (v84 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_147:
    v85 = 0;
  }

  else
  {
LABEL_148:
    v85 = v5;
  }

  return v85;
}

- (NSString)description
{
  v30 = objc_alloc(MEMORY[0x1E696AEC0]);
  v33 = [(BMOasisAnalyticsGazeSample *)self userProfileId];
  v32 = BMOasisAnalyticsGazeSampleEyeSideAsString([(BMOasisAnalyticsGazeSample *)self eyeSide]);
  v29 = BMOasisAnalyticsGazeSamplePupilSizeCategoryAsString([(BMOasisAnalyticsGazeSample *)self pupilSizeCategory]);
  v3 = MEMORY[0x1E696AD98];
  [(BMOasisAnalyticsGazeSample *)self offsetWithinEyeboxX];
  v28 = [v3 numberWithFloat:?];
  v4 = MEMORY[0x1E696AD98];
  [(BMOasisAnalyticsGazeSample *)self offsetWithinEyeboxY];
  v27 = [v4 numberWithFloat:?];
  v5 = MEMORY[0x1E696AD98];
  [(BMOasisAnalyticsGazeSample *)self offsetWithinEyeboxZ];
  v26 = [v5 numberWithFloat:?];
  v6 = MEMORY[0x1E696AD98];
  [(BMOasisAnalyticsGazeSample *)self totalEyeRelief];
  v25 = [v6 numberWithFloat:?];
  v7 = MEMORY[0x1E696AD98];
  [(BMOasisAnalyticsGazeSample *)self nearEyeRelief];
  v24 = [v7 numberWithFloat:?];
  v8 = MEMORY[0x1E696AD98];
  [(BMOasisAnalyticsGazeSample *)self pupil2dVisibleRatioNecam];
  v23 = [v8 numberWithFloat:?];
  v9 = MEMORY[0x1E696AD98];
  [(BMOasisAnalyticsGazeSample *)self pupil2dVisibleRatioBecam];
  v22 = [v9 numberWithFloat:?];
  v10 = MEMORY[0x1E696AD98];
  [(BMOasisAnalyticsGazeSample *)self pupilIrisContrastNecam];
  v21 = [v10 numberWithFloat:?];
  v11 = MEMORY[0x1E696AD98];
  [(BMOasisAnalyticsGazeSample *)self pupilIrisContrastBecam];
  v20 = [v11 numberWithFloat:?];
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMOasisAnalyticsGazeSample countOfVisibleGlintsNecam](self, "countOfVisibleGlintsNecam")}];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMOasisAnalyticsGazeSample countOfVisibleGlintsBecam](self, "countOfVisibleGlintsBecam")}];
  v13 = MEMORY[0x1E696AD98];
  [(BMOasisAnalyticsGazeSample *)self temperatureCelsiusNecam];
  v14 = [v13 numberWithFloat:?];
  v15 = MEMORY[0x1E696AD98];
  [(BMOasisAnalyticsGazeSample *)self temperatureCelsiusBecam];
  v16 = [v15 numberWithFloat:?];
  v17 = BMOasisAnalyticsGazeSampleEnrollmentDeviceTypeAsString([(BMOasisAnalyticsGazeSample *)self enrollmentDeviceType]);
  v31 = [v30 initWithFormat:@"BMOasisAnalyticsGazeSample with userProfileId: %@, eyeSide: %@, pupilSizeCategory: %@, offsetWithinEyeboxX: %@, offsetWithinEyeboxY: %@, offsetWithinEyeboxZ: %@, totalEyeRelief: %@, nearEyeRelief: %@, pupil2dVisibleRatioNecam: %@, pupil2dVisibleRatioBecam: %@, pupilIrisContrastNecam: %@, pupilIrisContrastBecam: %@, countOfVisibleGlintsNecam: %@, countOfVisibleGlintsBecam: %@, temperatureCelsiusNecam: %@, temperatureCelsiusBecam: %@, enrollmentDeviceType: %@", v33, v32, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v12, v14, v16, v17];

  return v31;
}

- (BMOasisAnalyticsGazeSample)initWithUserProfileId:(id)a3 eyeSide:(int)a4 pupilSizeCategory:(int)a5 offsetWithinEyeboxX:(id)a6 offsetWithinEyeboxY:(id)a7 offsetWithinEyeboxZ:(id)a8 totalEyeRelief:(id)a9 nearEyeRelief:(id)a10 pupil2dVisibleRatioNecam:(id)a11 pupil2dVisibleRatioBecam:(id)a12 pupilIrisContrastNecam:(id)a13 pupilIrisContrastBecam:(id)a14 countOfVisibleGlintsNecam:(id)a15 countOfVisibleGlintsBecam:(id)a16 temperatureCelsiusNecam:(id)a17 temperatureCelsiusBecam:(id)a18 enrollmentDeviceType:(int)a19
{
  v52 = a3;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v25 = a9;
  v26 = v24;
  v57 = a10;
  v56 = a11;
  v27 = v23;
  v55 = a12;
  v54 = a13;
  v28 = v22;
  v53 = a14;
  v29 = a15;
  v30 = a16;
  v31 = a17;
  v32 = a18;
  v58.receiver = self;
  v58.super_class = BMOasisAnalyticsGazeSample;
  v33 = [(BMEventBase *)&v58 init];
  if (v33)
  {
    v33->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v33->_userProfileId, a3);
    v33->_eyeSide = a4;
    v33->_pupilSizeCategory = a5;
    if (v28)
    {
      v33->_hasOffsetWithinEyeboxX = 1;
      [v28 floatValue];
    }

    else
    {
      v33->_hasOffsetWithinEyeboxX = 0;
      v34 = -1.0;
    }

    v33->_offsetWithinEyeboxX = v34;
    if (v27)
    {
      v33->_hasOffsetWithinEyeboxY = 1;
      [v27 floatValue];
    }

    else
    {
      v33->_hasOffsetWithinEyeboxY = 0;
      v35 = -1.0;
    }

    v33->_offsetWithinEyeboxY = v35;
    if (v26)
    {
      v33->_hasOffsetWithinEyeboxZ = 1;
      [v26 floatValue];
    }

    else
    {
      v33->_hasOffsetWithinEyeboxZ = 0;
      v36 = -1.0;
    }

    v33->_offsetWithinEyeboxZ = v36;
    if (v25)
    {
      v33->_hasTotalEyeRelief = 1;
      [v25 floatValue];
    }

    else
    {
      v33->_hasTotalEyeRelief = 0;
      v37 = -1.0;
    }

    v33->_totalEyeRelief = v37;
    if (v57)
    {
      v33->_hasNearEyeRelief = 1;
      [v57 floatValue];
    }

    else
    {
      v33->_hasNearEyeRelief = 0;
      v38 = -1.0;
    }

    v33->_nearEyeRelief = v38;
    if (v56)
    {
      v33->_hasPupil2dVisibleRatioNecam = 1;
      [v56 floatValue];
    }

    else
    {
      v33->_hasPupil2dVisibleRatioNecam = 0;
      v39 = -1.0;
    }

    v33->_pupil2dVisibleRatioNecam = v39;
    if (v55)
    {
      v33->_hasPupil2dVisibleRatioBecam = 1;
      [v55 floatValue];
    }

    else
    {
      v33->_hasPupil2dVisibleRatioBecam = 0;
      v40 = -1.0;
    }

    v33->_pupil2dVisibleRatioBecam = v40;
    if (v54)
    {
      v33->_hasPupilIrisContrastNecam = 1;
      [v54 floatValue];
    }

    else
    {
      v33->_hasPupilIrisContrastNecam = 0;
      v41 = -1.0;
    }

    v33->_pupilIrisContrastNecam = v41;
    if (v53)
    {
      v33->_hasPupilIrisContrastBecam = 1;
      [v53 floatValue];
    }

    else
    {
      v33->_hasPupilIrisContrastBecam = 0;
      v42 = -1.0;
    }

    v33->_pupilIrisContrastBecam = v42;
    if (v29)
    {
      v33->_hasCountOfVisibleGlintsNecam = 1;
      v43 = [v29 unsignedIntValue];
    }

    else
    {
      v43 = 0;
      v33->_hasCountOfVisibleGlintsNecam = 0;
    }

    v33->_countOfVisibleGlintsNecam = v43;
    if (v30)
    {
      v33->_hasCountOfVisibleGlintsBecam = 1;
      v44 = [v30 unsignedIntValue];
    }

    else
    {
      v44 = 0;
      v33->_hasCountOfVisibleGlintsBecam = 0;
    }

    v33->_countOfVisibleGlintsBecam = v44;
    if (v31)
    {
      v33->_hasTemperatureCelsiusNecam = 1;
      [v31 floatValue];
    }

    else
    {
      v33->_hasTemperatureCelsiusNecam = 0;
      v45 = -1.0;
    }

    v33->_temperatureCelsiusNecam = v45;
    if (v32)
    {
      v33->_hasTemperatureCelsiusBecam = 1;
      [v32 floatValue];
    }

    else
    {
      v33->_hasTemperatureCelsiusBecam = 0;
      v46 = -1.0;
    }

    v33->_temperatureCelsiusBecam = v46;
    v33->_enrollmentDeviceType = a19;
  }

  return v33;
}

+ (id)protoFields
{
  v22[17] = *MEMORY[0x1E69E9840];
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userProfileId" number:1 type:13 subMessageClass:0];
  v22[0] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eyeSide" number:2 type:4 subMessageClass:0];
  v22[1] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"pupilSizeCategory" number:3 type:4 subMessageClass:0];
  v22[2] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"offsetWithinEyeboxX" number:4 type:1 subMessageClass:0];
  v22[3] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"offsetWithinEyeboxY" number:5 type:1 subMessageClass:0];
  v22[4] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"offsetWithinEyeboxZ" number:6 type:1 subMessageClass:0];
  v22[5] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"totalEyeRelief" number:7 type:1 subMessageClass:0];
  v22[6] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"nearEyeRelief" number:8 type:1 subMessageClass:0];
  v22[7] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"pupil2dVisibleRatioNecam" number:9 type:1 subMessageClass:0];
  v22[8] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"pupil2dVisibleRatioBecam" number:10 type:1 subMessageClass:0];
  v22[9] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"pupilIrisContrastNecam" number:11 type:1 subMessageClass:0];
  v22[10] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"pupilIrisContrastBecam" number:12 type:1 subMessageClass:0];
  v22[11] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"countOfVisibleGlintsNecam" number:13 type:4 subMessageClass:0];
  v22[12] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"countOfVisibleGlintsBecam" number:14 type:4 subMessageClass:0];
  v22[13] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"temperatureCelsiusNecam" number:15 type:1 subMessageClass:0];
  v22[14] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"temperatureCelsiusBecam" number:16 type:1 subMessageClass:0];
  v22[15] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"enrollmentDeviceType" number:17 type:4 subMessageClass:0];
  v22[16] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:17];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v22[17] = *MEMORY[0x1E69E9840];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userProfileId" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eyeSide" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"pupilSizeCategory" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"offsetWithinEyeboxX" dataType:1 requestOnly:0 fieldNumber:4 protoDataType:1 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"offsetWithinEyeboxY" dataType:1 requestOnly:0 fieldNumber:5 protoDataType:1 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"offsetWithinEyeboxZ" dataType:1 requestOnly:0 fieldNumber:6 protoDataType:1 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"totalEyeRelief" dataType:1 requestOnly:0 fieldNumber:7 protoDataType:1 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"nearEyeRelief" dataType:1 requestOnly:0 fieldNumber:8 protoDataType:1 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"pupil2dVisibleRatioNecam" dataType:1 requestOnly:0 fieldNumber:9 protoDataType:1 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"pupil2dVisibleRatioBecam" dataType:1 requestOnly:0 fieldNumber:10 protoDataType:1 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"pupilIrisContrastNecam" dataType:1 requestOnly:0 fieldNumber:11 protoDataType:1 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"pupilIrisContrastBecam" dataType:1 requestOnly:0 fieldNumber:12 protoDataType:1 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"countOfVisibleGlintsNecam" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"countOfVisibleGlintsBecam" dataType:0 requestOnly:0 fieldNumber:14 protoDataType:4 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"temperatureCelsiusNecam" dataType:1 requestOnly:0 fieldNumber:15 protoDataType:1 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"temperatureCelsiusBecam" dataType:1 requestOnly:0 fieldNumber:16 protoDataType:1 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"enrollmentDeviceType" dataType:0 requestOnly:0 fieldNumber:17 protoDataType:4 convertedType:0];
  v22[0] = v21;
  v22[1] = v20;
  v22[2] = v19;
  v22[3] = v18;
  v22[4] = v17;
  v22[5] = v16;
  v22[6] = v15;
  v22[7] = v2;
  v22[8] = v3;
  v22[9] = v4;
  v22[10] = v5;
  v22[11] = v14;
  v22[12] = v6;
  v22[13] = v7;
  v22[14] = v13;
  v22[15] = v8;
  v22[16] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:17];

  v10 = *MEMORY[0x1E69E9840];

  return v12;
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

    v8 = [[BMOasisAnalyticsGazeSample alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[8] = 0;
    }
  }

  return v4;
}

@end