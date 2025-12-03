@interface GCGenericDeviceMotionEventDriverModel
+ (id)modelWithDictionaryRepresentation:(id)representation error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (GCGenericDeviceMotionEventDriverModel)init;
- (GCGenericDeviceMotionEventDriverModel)initWithCoder:(id)coder;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCGenericDeviceMotionEventDriverModel

- (GCGenericDeviceMotionEventDriverModel)init
{
  [(GCGenericDeviceMotionEventDriverModel *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCGenericDeviceMotionEventDriverModel)initWithCoder:(id)coder
{
  v18.receiver = self;
  v18.super_class = GCGenericDeviceMotionEventDriverModel;
  coderCopy = coder;
  v4 = [(GCGenericDeviceMotionEventDriverModel *)&v18 init];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"accelerometerXExpression", v18.receiver, v18.super_class}];
  accelerometerXExpression = v4->_accelerometerXExpression;
  v4->_accelerometerXExpression = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accelerometerYExpression"];
  accelerometerYExpression = v4->_accelerometerYExpression;
  v4->_accelerometerYExpression = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accelerometerZExpression"];
  accelerometerZExpression = v4->_accelerometerZExpression;
  v4->_accelerometerZExpression = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gyroXExpression"];
  gyroXExpression = v4->_gyroXExpression;
  v4->_gyroXExpression = v11;

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gyroYExpression"];
  gyroYExpression = v4->_gyroYExpression;
  v4->_gyroYExpression = v13;

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gyroZExpression"];

  gyroZExpression = v4->_gyroZExpression;
  v4->_gyroZExpression = v15;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accelerometerXExpression = [(GCGenericDeviceMotionEventDriverModel *)self accelerometerXExpression];
  [coderCopy encodeObject:accelerometerXExpression forKey:@"accelerometerXExpression"];

  accelerometerYExpression = [(GCGenericDeviceMotionEventDriverModel *)self accelerometerYExpression];
  [coderCopy encodeObject:accelerometerYExpression forKey:@"accelerometerYExpression"];

  accelerometerZExpression = [(GCGenericDeviceMotionEventDriverModel *)self accelerometerZExpression];
  [coderCopy encodeObject:accelerometerZExpression forKey:@"accelerometerZExpression"];

  gyroXExpression = [(GCGenericDeviceMotionEventDriverModel *)self gyroXExpression];
  [coderCopy encodeObject:gyroXExpression forKey:@"gyroXExpression"];

  gyroYExpression = [(GCGenericDeviceMotionEventDriverModel *)self gyroYExpression];
  [coderCopy encodeObject:gyroYExpression forKey:@"gyroYExpression"];

  gyroZExpression = [(GCGenericDeviceMotionEventDriverModel *)self gyroZExpression];
  [coderCopy encodeObject:gyroZExpression forKey:@"gyroZExpression"];
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !-[GCGenericDeviceMotionEventDriverModel isMemberOfClass:](self, "isMemberOfClass:", [objc_opt_class() modelClass]))
    {
      goto LABEL_9;
    }

LABEL_6:
    accelerometerXExpression = [(GCGenericDeviceMotionEventDriverModel *)self accelerometerXExpression];
    accelerometerXExpression2 = [equalCopy accelerometerXExpression];
    if (accelerometerXExpression != accelerometerXExpression2)
    {
      accelerometerXExpression3 = [(GCGenericDeviceMotionEventDriverModel *)self accelerometerXExpression];
      accelerometerXExpression4 = [equalCopy accelerometerXExpression];
      v54 = accelerometerXExpression3;
      if (![accelerometerXExpression3 isEqual:?])
      {
        v9 = 0;
        goto LABEL_38;
      }
    }

    accelerometerYExpression = [(GCGenericDeviceMotionEventDriverModel *)self accelerometerYExpression];
    accelerometerYExpression2 = [equalCopy accelerometerYExpression];
    if (accelerometerYExpression != accelerometerYExpression2)
    {
      accelerometerXExpression3 = [(GCGenericDeviceMotionEventDriverModel *)self accelerometerYExpression];
      accelerometerYExpression3 = [equalCopy accelerometerYExpression];
      if (![accelerometerXExpression3 isEqual:accelerometerYExpression3])
      {
        v9 = 0;
LABEL_36:

LABEL_37:
        if (accelerometerXExpression == accelerometerXExpression2)
        {
LABEL_39:

          goto LABEL_40;
        }

LABEL_38:

        goto LABEL_39;
      }
    }

    accelerometerZExpression = [(GCGenericDeviceMotionEventDriverModel *)self accelerometerZExpression];
    accelerometerZExpression2 = [equalCopy accelerometerZExpression];
    v52 = accelerometerZExpression;
    v14 = accelerometerZExpression == accelerometerZExpression2;
    v15 = accelerometerZExpression2;
    if (v14)
    {
      v47 = accelerometerYExpression;
      v17 = accelerometerZExpression2;
    }

    else
    {
      accelerometerZExpression3 = [(GCGenericDeviceMotionEventDriverModel *)self accelerometerZExpression];
      accelerometerZExpression4 = [equalCopy accelerometerZExpression];
      v46 = accelerometerZExpression3;
      if (![accelerometerZExpression3 isEqual:?])
      {
        v9 = 0;
        v24 = v15;
        v25 = v52;
LABEL_34:

LABEL_35:
        if (accelerometerYExpression == accelerometerYExpression2)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      v47 = accelerometerYExpression;
      v17 = v15;
    }

    gyroXExpression = [(GCGenericDeviceMotionEventDriverModel *)self gyroXExpression];
    gyroXExpression2 = [equalCopy gyroXExpression];
    v49 = gyroXExpression;
    v50 = accelerometerYExpression3;
    v14 = gyroXExpression == gyroXExpression2;
    v20 = gyroXExpression2;
    v51 = accelerometerXExpression3;
    if (!v14)
    {
      gyroXExpression3 = [(GCGenericDeviceMotionEventDriverModel *)self gyroXExpression];
      gyroXExpression4 = [equalCopy gyroXExpression];
      v41 = gyroXExpression3;
      if (![gyroXExpression3 isEqual:?])
      {
        v22 = v17;
        v9 = 0;
        accelerometerYExpression = v47;
        v23 = v49;
LABEL_32:

LABEL_33:
        v25 = v52;
        v24 = v22;
        v14 = v52 == v22;
        accelerometerYExpression3 = v50;
        accelerometerXExpression3 = v51;
        if (v14)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }
    }

    gyroYExpression = [(GCGenericDeviceMotionEventDriverModel *)self gyroYExpression];
    gyroYExpression2 = [equalCopy gyroYExpression];
    v43 = gyroYExpression;
    v44 = v20;
    if (gyroYExpression == gyroYExpression2)
    {
      v29 = v17;
    }

    else
    {
      gyroYExpression3 = [(GCGenericDeviceMotionEventDriverModel *)self gyroYExpression];
      gyroYExpression4 = [equalCopy gyroYExpression];
      v39 = gyroYExpression3;
      v28 = [gyroYExpression3 isEqual:?];
      v29 = v17;
      if (!v28)
      {
        v9 = 0;
        accelerometerYExpression = v47;
        v31 = gyroYExpression2;
        v30 = v43;
        goto LABEL_29;
      }
    }

    accelerometerYExpression = v47;
    gyroZExpression = [(GCGenericDeviceMotionEventDriverModel *)self gyroZExpression];
    gyroZExpression2 = [equalCopy gyroZExpression];
    v34 = gyroZExpression2;
    if (gyroZExpression == gyroZExpression2)
    {

      v9 = 1;
    }

    else
    {
      gyroZExpression3 = [(GCGenericDeviceMotionEventDriverModel *)self gyroZExpression];
      [equalCopy gyroZExpression];
      v36 = v48 = v29;
      v9 = [gyroZExpression3 isEqual:v36];

      v29 = v48;
    }

    v31 = gyroYExpression2;
    v30 = v43;
    if (v43 == gyroYExpression2)
    {
      v22 = v29;
LABEL_31:

      v23 = v49;
      v20 = v44;
      if (v49 == v44)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

LABEL_29:
    v22 = v29;

    goto LABEL_31;
  }

  if (([(GCGenericDeviceMotionEventDriverModel *)self isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    goto LABEL_6;
  }

LABEL_9:
  v9 = 0;
LABEL_40:

  return v9;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  accelerometerXExpression = [(GCGenericDeviceMotionEventDriverModel *)self accelerometerXExpression];
  accelerometerYExpression = [(GCGenericDeviceMotionEventDriverModel *)self accelerometerYExpression];
  accelerometerZExpression = [(GCGenericDeviceMotionEventDriverModel *)self accelerometerZExpression];
  gyroXExpression = [(GCGenericDeviceMotionEventDriverModel *)self gyroXExpression];
  gyroYExpression = [(GCGenericDeviceMotionEventDriverModel *)self gyroYExpression];
  gyroZExpression = [(GCGenericDeviceMotionEventDriverModel *)self gyroZExpression];
  v12 = [v3 stringWithFormat:@"<%@ %p> {\n\t accelerometerXExpression = %@\n\t accelerometerYExpression = %@\n\t accelerometerZExpression = %@\n\t gyroXExpression = %@\n\t gyroYExpression = %@\n\t gyroZExpression = %@\n}", v5, self, accelerometerXExpression, accelerometerYExpression, accelerometerZExpression, gyroXExpression, gyroYExpression, gyroZExpression];

  return v12;
}

+ (id)modelWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v161[2] = *MEMORY[0x1E69E9840];
  v6 = objc_opt_new();
  v137[0] = 0;
  v7 = [representation gc_objectForKey:@"AccelerometerXExpression" ofClass:objc_opt_class() error:v137];
  v8 = v137[0];
  v9 = v8;
  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 == 0;
  }

  if (!v10)
  {
    if (!error)
    {
      v12 = v8;
      goto LABEL_153;
    }

    v41 = MEMORY[0x1E696ABC0];
    v160[0] = *MEMORY[0x1E696A578];
    localizedDescription6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
    v161[0] = localizedDescription6;
    v160[1] = *MEMORY[0x1E696A588];
    localizedFailureReason = [v9 localizedFailureReason];
    v161[1] = localizedFailureReason;
    v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v161 forKeys:v160 count:2];
    *error = [(NSError *)v41 gc_modelError:v44 userInfo:?];

    v12 = v9;
LABEL_46:

LABEL_76:
    goto LABEL_153;
  }

  if (!v7)
  {
    v12 = v8;
    goto LABEL_10;
  }

  v136 = 0;
  v11 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v7 error:&v136];
  v12 = v136;

  if (v11)
  {
    [v6 setAccelerometerXExpression:v11];

LABEL_10:
    v135 = 0;
    v13 = [representation gc_objectForKey:@"AccelerometerYExpression" ofClass:objc_opt_class() error:&v135];
    v14 = v135;
    v15 = v14;
    if (!v13 && v14)
    {
      if (!error)
      {
        v17 = v14;
        goto LABEL_155;
      }

      v45 = MEMORY[0x1E696ABC0];
      v156[0] = *MEMORY[0x1E696A578];
      localizedDescription5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
      v157[0] = localizedDescription5;
      v156[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v15 localizedFailureReason];
      v157[1] = localizedFailureReason2;
      v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v157 forKeys:v156 count:2];
      *error = [(NSError *)v45 gc_modelError:v48 userInfo:?];

      v17 = v15;
    }

    else
    {
      if (!v13)
      {
        v17 = v14;
        goto LABEL_16;
      }

      v134 = 0;
      v16 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v13 error:&v134];
      v17 = v134;

      if (v16)
      {
        [v6 setAccelerometerYExpression:v16];

LABEL_16:
        v133 = 0;
        v18 = [representation gc_objectForKey:@"AccelerometerZExpression" ofClass:objc_opt_class() error:&v133];
        v19 = v133;
        v20 = v19;
        if (!v18 && v19)
        {
          if (!error)
          {
            v22 = v19;
            goto LABEL_157;
          }

          v49 = MEMORY[0x1E696ABC0];
          v152[0] = *MEMORY[0x1E696A578];
          localizedDescription4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
          v153[0] = localizedDescription4;
          v152[1] = *MEMORY[0x1E696A588];
          localizedFailureReason3 = [v20 localizedFailureReason];
          v153[1] = localizedFailureReason3;
          v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v153 forKeys:v152 count:2];
          *error = [(NSError *)v49 gc_modelError:v52 userInfo:?];

          v22 = v20;
        }

        else
        {
          if (!v18)
          {
            v22 = v19;
            goto LABEL_22;
          }

          v132 = 0;
          v21 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v18 error:&v132];
          v22 = v132;

          if (v21)
          {
            [v6 setAccelerometerZExpression:v21];

LABEL_22:
            v131 = 0;
            v23 = [representation gc_objectForKey:@"GyroXExpression" ofClass:objc_opt_class() error:&v131];
            v24 = v131;
            v25 = v24;
            if (!v23 && v24)
            {
              if (!error)
              {
                v27 = v24;
                goto LABEL_159;
              }

              v53 = MEMORY[0x1E696ABC0];
              v148[0] = *MEMORY[0x1E696A578];
              localizedDescription3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
              v149[0] = localizedDescription3;
              v148[1] = *MEMORY[0x1E696A588];
              localizedFailureReason4 = [v25 localizedFailureReason];
              v149[1] = localizedFailureReason4;
              v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v149 forKeys:v148 count:2];
              *error = [(NSError *)v53 gc_modelError:v56 userInfo:?];

              v27 = v25;
            }

            else
            {
              if (!v23)
              {
                v27 = v24;
                goto LABEL_28;
              }

              v130 = 0;
              v26 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v23 error:&v130];
              v27 = v130;

              if (v26)
              {
                [v6 setGyroXExpression:v26];

LABEL_28:
                v129 = 0;
                v28 = [representation gc_objectForKey:@"GyroYExpression" ofClass:objc_opt_class() error:&v129];
                v29 = v129;
                v30 = v29;
                if (!v28 && v29)
                {
                  if (!error)
                  {
                    v32 = v29;
                    goto LABEL_161;
                  }

                  v57 = MEMORY[0x1E696ABC0];
                  v144[0] = *MEMORY[0x1E696A578];
                  localizedDescription2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
                  v145[0] = localizedDescription2;
                  v144[1] = *MEMORY[0x1E696A588];
                  localizedFailureReason5 = [v30 localizedFailureReason];
                  v145[1] = localizedFailureReason5;
                  v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v145 forKeys:v144 count:2];
                  *error = [(NSError *)v57 gc_modelError:v60 userInfo:?];

                  v32 = v30;
                }

                else
                {
                  if (!v28)
                  {
                    v32 = v29;
                    goto LABEL_34;
                  }

                  v128 = 0;
                  v31 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v28 error:&v128];
                  v32 = v128;

                  if (v31)
                  {
                    [v6 setGyroYExpression:v31];

LABEL_34:
                    v127 = 0;
                    v33 = [representation gc_objectForKey:@"GyroZExpression" ofClass:objc_opt_class() error:&v127];
                    v34 = v127;
                    v35 = v34;
                    if (!v33 && v34)
                    {
                      if (!error)
                      {
                        v37 = v34;
                        goto LABEL_163;
                      }

                      v61 = MEMORY[0x1E696ABC0];
                      v140[0] = *MEMORY[0x1E696A578];
                      localizedDescription = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
                      v141[0] = localizedDescription;
                      v140[1] = *MEMORY[0x1E696A588];
                      localizedFailureReason6 = [v35 localizedFailureReason];
                      v141[1] = localizedFailureReason6;
                      v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v141 forKeys:v140 count:2];
                      *error = [(NSError *)v61 gc_modelError:v64 userInfo:?];

                      v37 = v35;
                    }

                    else
                    {
                      if (!v33)
                      {
                        v37 = v34;
                        goto LABEL_40;
                      }

                      v126 = 0;
                      v36 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v33 error:&v126];
                      v37 = v126;

                      if (v36)
                      {
                        [v6 setGyroZExpression:v36];

LABEL_40:
                        build = [v6 build];
                        goto LABEL_41;
                      }

                      if (!error)
                      {
LABEL_163:

                        goto LABEL_164;
                      }

                      v124 = MEMORY[0x1E696ABC0];
                      v138[0] = *MEMORY[0x1E696A578];
                      localizedDescription = [v37 localizedDescription];
                      localizedFailureReason6 = localizedDescription;
                      if (!localizedDescription)
                      {
                        localizedFailureReason6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
                      }

                      v139[0] = localizedFailureReason6;
                      v138[1] = *MEMORY[0x1E696A588];
                      localizedFailureReason7 = [v37 localizedFailureReason];
                      v101 = localizedFailureReason7;
                      if (!localizedFailureReason7)
                      {
                        localizedFailureReason7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"GyroZExpression"];
                      }

                      v118 = localizedFailureReason7;
                      v139[1] = localizedFailureReason7;
                      v138[2] = *MEMORY[0x1E696AA08];
                      null = v37;
                      if (!v37)
                      {
                        null = [MEMORY[0x1E695DFB0] null];
                      }

                      v112 = null;
                      v139[2] = null;
                      v138[3] = @"GCFailingKeyPathErrorKey";
                      gc_failingKeyPath = [v37 gc_failingKeyPath];
                      v104 = gc_failingKeyPath;
                      if (!gc_failingKeyPath)
                      {
                        gc_failingKeyPath = MEMORY[0x1E695E0F0];
                      }

                      v105 = [gc_failingKeyPath arrayByAddingObject:@"GyroZExpression"];
                      v139[3] = v105;
                      v106 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v139 forKeys:v138 count:4];
                      *error = [(NSError *)v124 gc_modelError:v106 userInfo:?];

                      if (!v37)
                      {
                      }

                      if (!v101)
                      {
                      }

                      if (localizedDescription)
                      {
LABEL_151:

                        goto LABEL_163;
                      }
                    }

                    goto LABEL_151;
                  }

                  if (!error)
                  {
LABEL_161:

                    goto LABEL_164;
                  }

                  v123 = MEMORY[0x1E696ABC0];
                  v142[0] = *MEMORY[0x1E696A578];
                  localizedDescription2 = [v32 localizedDescription];
                  localizedFailureReason5 = localizedDescription2;
                  if (!localizedDescription2)
                  {
                    localizedFailureReason5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
                  }

                  v143[0] = localizedFailureReason5;
                  v142[1] = *MEMORY[0x1E696A588];
                  localizedFailureReason8 = [v32 localizedFailureReason];
                  v94 = localizedFailureReason8;
                  if (!localizedFailureReason8)
                  {
                    localizedFailureReason8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"GyroYExpression"];
                  }

                  v117 = localizedFailureReason8;
                  v143[1] = localizedFailureReason8;
                  v142[2] = *MEMORY[0x1E696AA08];
                  null2 = v32;
                  if (!v32)
                  {
                    null2 = [MEMORY[0x1E695DFB0] null];
                  }

                  v111 = null2;
                  v143[2] = null2;
                  v142[3] = @"GCFailingKeyPathErrorKey";
                  gc_failingKeyPath2 = [v32 gc_failingKeyPath];
                  v97 = gc_failingKeyPath2;
                  if (!gc_failingKeyPath2)
                  {
                    gc_failingKeyPath2 = MEMORY[0x1E695E0F0];
                  }

                  v98 = [gc_failingKeyPath2 arrayByAddingObject:@"GyroYExpression"];
                  v143[3] = v98;
                  v99 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v143 forKeys:v142 count:4];
                  *error = [(NSError *)v123 gc_modelError:v99 userInfo:?];

                  if (!v32)
                  {
                  }

                  if (!v94)
                  {
                  }

                  if (localizedDescription2)
                  {
LABEL_136:

                    goto LABEL_161;
                  }
                }

                goto LABEL_136;
              }

              if (!error)
              {
LABEL_159:

                goto LABEL_164;
              }

              v122 = MEMORY[0x1E696ABC0];
              v146[0] = *MEMORY[0x1E696A578];
              localizedDescription3 = [v27 localizedDescription];
              localizedFailureReason4 = localizedDescription3;
              if (!localizedDescription3)
              {
                localizedFailureReason4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
              }

              v147[0] = localizedFailureReason4;
              v146[1] = *MEMORY[0x1E696A588];
              localizedFailureReason9 = [v27 localizedFailureReason];
              v87 = localizedFailureReason9;
              if (!localizedFailureReason9)
              {
                localizedFailureReason9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"GyroXExpression"];
              }

              v116 = localizedFailureReason9;
              v147[1] = localizedFailureReason9;
              v146[2] = *MEMORY[0x1E696AA08];
              null3 = v27;
              if (!v27)
              {
                null3 = [MEMORY[0x1E695DFB0] null];
              }

              v110 = null3;
              v147[2] = null3;
              v146[3] = @"GCFailingKeyPathErrorKey";
              gc_failingKeyPath3 = [v27 gc_failingKeyPath];
              v90 = gc_failingKeyPath3;
              if (!gc_failingKeyPath3)
              {
                gc_failingKeyPath3 = MEMORY[0x1E695E0F0];
              }

              v91 = [gc_failingKeyPath3 arrayByAddingObject:@"GyroXExpression"];
              v147[3] = v91;
              v92 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v147 forKeys:v146 count:4];
              *error = [(NSError *)v122 gc_modelError:v92 userInfo:?];

              if (!v27)
              {
              }

              if (!v87)
              {
              }

              if (localizedDescription3)
              {
LABEL_121:

                goto LABEL_159;
              }
            }

            goto LABEL_121;
          }

          if (!error)
          {
LABEL_157:

            goto LABEL_164;
          }

          v121 = MEMORY[0x1E696ABC0];
          v150[0] = *MEMORY[0x1E696A578];
          localizedDescription4 = [v22 localizedDescription];
          localizedFailureReason3 = localizedDescription4;
          if (!localizedDescription4)
          {
            localizedFailureReason3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
          }

          v151[0] = localizedFailureReason3;
          v150[1] = *MEMORY[0x1E696A588];
          localizedFailureReason10 = [v22 localizedFailureReason];
          v80 = localizedFailureReason10;
          if (!localizedFailureReason10)
          {
            localizedFailureReason10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"AccelerometerZExpression"];
          }

          v115 = localizedFailureReason10;
          v151[1] = localizedFailureReason10;
          v150[2] = *MEMORY[0x1E696AA08];
          null4 = v22;
          if (!v22)
          {
            null4 = [MEMORY[0x1E695DFB0] null];
          }

          v109 = null4;
          v151[2] = null4;
          v150[3] = @"GCFailingKeyPathErrorKey";
          gc_failingKeyPath4 = [v22 gc_failingKeyPath];
          v83 = gc_failingKeyPath4;
          if (!gc_failingKeyPath4)
          {
            gc_failingKeyPath4 = MEMORY[0x1E695E0F0];
          }

          v84 = [gc_failingKeyPath4 arrayByAddingObject:@"AccelerometerZExpression"];
          v151[3] = v84;
          v85 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v151 forKeys:v150 count:4];
          *error = [(NSError *)v121 gc_modelError:v85 userInfo:?];

          if (!v22)
          {
          }

          if (!v80)
          {
          }

          if (localizedDescription4)
          {
LABEL_106:

            goto LABEL_157;
          }
        }

        goto LABEL_106;
      }

      if (!error)
      {
LABEL_155:

        goto LABEL_164;
      }

      v120 = MEMORY[0x1E696ABC0];
      v154[0] = *MEMORY[0x1E696A578];
      localizedDescription5 = [v17 localizedDescription];
      localizedFailureReason2 = localizedDescription5;
      if (!localizedDescription5)
      {
        localizedFailureReason2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
      }

      v155[0] = localizedFailureReason2;
      v154[1] = *MEMORY[0x1E696A588];
      localizedFailureReason11 = [v17 localizedFailureReason];
      v73 = localizedFailureReason11;
      if (!localizedFailureReason11)
      {
        localizedFailureReason11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"AccelerometerYExpression"];
      }

      v114 = localizedFailureReason11;
      v155[1] = localizedFailureReason11;
      v154[2] = *MEMORY[0x1E696AA08];
      null5 = v17;
      if (!v17)
      {
        null5 = [MEMORY[0x1E695DFB0] null];
      }

      v108 = null5;
      v155[2] = null5;
      v154[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath5 = [v17 gc_failingKeyPath];
      v76 = gc_failingKeyPath5;
      if (!gc_failingKeyPath5)
      {
        gc_failingKeyPath5 = MEMORY[0x1E695E0F0];
      }

      v77 = [gc_failingKeyPath5 arrayByAddingObject:@"AccelerometerYExpression"];
      v155[3] = v77;
      v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v155 forKeys:v154 count:4];
      *error = [(NSError *)v120 gc_modelError:v78 userInfo:?];

      if (!v17)
      {
      }

      if (!v73)
      {
      }

      if (localizedDescription5)
      {
LABEL_91:

        goto LABEL_155;
      }
    }

    goto LABEL_91;
  }

  if (error)
  {
    v119 = MEMORY[0x1E696ABC0];
    v158[0] = *MEMORY[0x1E696A578];
    localizedDescription6 = [v12 localizedDescription];
    localizedFailureReason = localizedDescription6;
    if (!localizedDescription6)
    {
      localizedFailureReason = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
    }

    v159[0] = localizedFailureReason;
    v158[1] = *MEMORY[0x1E696A588];
    localizedFailureReason12 = [v12 localizedFailureReason];
    v66 = localizedFailureReason12;
    if (!localizedFailureReason12)
    {
      localizedFailureReason12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"AccelerometerXExpression"];
    }

    v113 = localizedFailureReason12;
    v159[1] = localizedFailureReason12;
    v158[2] = *MEMORY[0x1E696AA08];
    null6 = v12;
    if (!v12)
    {
      null6 = [MEMORY[0x1E695DFB0] null];
    }

    v107 = null6;
    v159[2] = null6;
    v158[3] = @"GCFailingKeyPathErrorKey";
    gc_failingKeyPath6 = [v12 gc_failingKeyPath];
    v69 = gc_failingKeyPath6;
    if (!gc_failingKeyPath6)
    {
      gc_failingKeyPath6 = MEMORY[0x1E695E0F0];
    }

    v70 = [gc_failingKeyPath6 arrayByAddingObject:@"AccelerometerXExpression"];
    v159[3] = v70;
    v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v159 forKeys:v158 count:4];
    *error = [(NSError *)v119 gc_modelError:v71 userInfo:?];

    if (!v12)
    {
    }

    if (!v66)
    {
    }

    if (localizedDescription6)
    {
      goto LABEL_76;
    }

    goto LABEL_46;
  }

LABEL_153:

LABEL_164:
  build = 0;
LABEL_41:

  v39 = *MEMORY[0x1E69E9840];

  return build;
}

@end