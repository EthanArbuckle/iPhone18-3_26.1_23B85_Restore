@interface GCGenericDeviceMotionEventDriverModel
+ (id)modelWithDictionaryRepresentation:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (GCGenericDeviceMotionEventDriverModel)init;
- (GCGenericDeviceMotionEventDriverModel)initWithCoder:(id)a3;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCGenericDeviceMotionEventDriverModel

- (GCGenericDeviceMotionEventDriverModel)init
{
  [(GCGenericDeviceMotionEventDriverModel *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCGenericDeviceMotionEventDriverModel)initWithCoder:(id)a3
{
  v18.receiver = self;
  v18.super_class = GCGenericDeviceMotionEventDriverModel;
  v3 = a3;
  v4 = [(GCGenericDeviceMotionEventDriverModel *)&v18 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"accelerometerXExpression", v18.receiver, v18.super_class}];
  accelerometerXExpression = v4->_accelerometerXExpression;
  v4->_accelerometerXExpression = v5;

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"accelerometerYExpression"];
  accelerometerYExpression = v4->_accelerometerYExpression;
  v4->_accelerometerYExpression = v7;

  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"accelerometerZExpression"];
  accelerometerZExpression = v4->_accelerometerZExpression;
  v4->_accelerometerZExpression = v9;

  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"gyroXExpression"];
  gyroXExpression = v4->_gyroXExpression;
  v4->_gyroXExpression = v11;

  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"gyroYExpression"];
  gyroYExpression = v4->_gyroYExpression;
  v4->_gyroYExpression = v13;

  v15 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"gyroZExpression"];

  gyroZExpression = v4->_gyroZExpression;
  v4->_gyroZExpression = v15;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(GCGenericDeviceMotionEventDriverModel *)self accelerometerXExpression];
  [v4 encodeObject:v5 forKey:@"accelerometerXExpression"];

  v6 = [(GCGenericDeviceMotionEventDriverModel *)self accelerometerYExpression];
  [v4 encodeObject:v6 forKey:@"accelerometerYExpression"];

  v7 = [(GCGenericDeviceMotionEventDriverModel *)self accelerometerZExpression];
  [v4 encodeObject:v7 forKey:@"accelerometerZExpression"];

  v8 = [(GCGenericDeviceMotionEventDriverModel *)self gyroXExpression];
  [v4 encodeObject:v8 forKey:@"gyroXExpression"];

  v9 = [(GCGenericDeviceMotionEventDriverModel *)self gyroYExpression];
  [v4 encodeObject:v9 forKey:@"gyroYExpression"];

  v10 = [(GCGenericDeviceMotionEventDriverModel *)self gyroZExpression];
  [v4 encodeObject:v10 forKey:@"gyroZExpression"];
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !-[GCGenericDeviceMotionEventDriverModel isMemberOfClass:](self, "isMemberOfClass:", [objc_opt_class() modelClass]))
    {
      goto LABEL_9;
    }

LABEL_6:
    v7 = [(GCGenericDeviceMotionEventDriverModel *)self accelerometerXExpression];
    v8 = [v6 accelerometerXExpression];
    if (v7 != v8)
    {
      v3 = [(GCGenericDeviceMotionEventDriverModel *)self accelerometerXExpression];
      v53 = [v6 accelerometerXExpression];
      v54 = v3;
      if (![v3 isEqual:?])
      {
        v9 = 0;
        goto LABEL_38;
      }
    }

    v10 = [(GCGenericDeviceMotionEventDriverModel *)self accelerometerYExpression];
    v11 = [v6 accelerometerYExpression];
    if (v10 != v11)
    {
      v3 = [(GCGenericDeviceMotionEventDriverModel *)self accelerometerYExpression];
      v4 = [v6 accelerometerYExpression];
      if (![v3 isEqual:v4])
      {
        v9 = 0;
LABEL_36:

LABEL_37:
        if (v7 == v8)
        {
LABEL_39:

          goto LABEL_40;
        }

LABEL_38:

        goto LABEL_39;
      }
    }

    v12 = [(GCGenericDeviceMotionEventDriverModel *)self accelerometerZExpression];
    v13 = [v6 accelerometerZExpression];
    v52 = v12;
    v14 = v12 == v13;
    v15 = v13;
    if (v14)
    {
      v47 = v10;
      v17 = v13;
    }

    else
    {
      v16 = [(GCGenericDeviceMotionEventDriverModel *)self accelerometerZExpression];
      v45 = [v6 accelerometerZExpression];
      v46 = v16;
      if (![v16 isEqual:?])
      {
        v9 = 0;
        v24 = v15;
        v25 = v52;
LABEL_34:

LABEL_35:
        if (v10 == v11)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      v47 = v10;
      v17 = v15;
    }

    v18 = [(GCGenericDeviceMotionEventDriverModel *)self gyroXExpression];
    v19 = [v6 gyroXExpression];
    v49 = v18;
    v50 = v4;
    v14 = v18 == v19;
    v20 = v19;
    v51 = v3;
    if (!v14)
    {
      v21 = [(GCGenericDeviceMotionEventDriverModel *)self gyroXExpression];
      v40 = [v6 gyroXExpression];
      v41 = v21;
      if (![v21 isEqual:?])
      {
        v22 = v17;
        v9 = 0;
        v10 = v47;
        v23 = v49;
LABEL_32:

LABEL_33:
        v25 = v52;
        v24 = v22;
        v14 = v52 == v22;
        v4 = v50;
        v3 = v51;
        if (v14)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }
    }

    v26 = [(GCGenericDeviceMotionEventDriverModel *)self gyroYExpression];
    v42 = [v6 gyroYExpression];
    v43 = v26;
    v44 = v20;
    if (v26 == v42)
    {
      v29 = v17;
    }

    else
    {
      v27 = [(GCGenericDeviceMotionEventDriverModel *)self gyroYExpression];
      v38 = [v6 gyroYExpression];
      v39 = v27;
      v28 = [v27 isEqual:?];
      v29 = v17;
      if (!v28)
      {
        v9 = 0;
        v10 = v47;
        v31 = v42;
        v30 = v43;
        goto LABEL_29;
      }
    }

    v10 = v47;
    v32 = [(GCGenericDeviceMotionEventDriverModel *)self gyroZExpression];
    v33 = [v6 gyroZExpression];
    v34 = v33;
    if (v32 == v33)
    {

      v9 = 1;
    }

    else
    {
      v35 = [(GCGenericDeviceMotionEventDriverModel *)self gyroZExpression];
      [v6 gyroZExpression];
      v36 = v48 = v29;
      v9 = [v35 isEqual:v36];

      v29 = v48;
    }

    v31 = v42;
    v30 = v43;
    if (v43 == v42)
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
  v6 = [(GCGenericDeviceMotionEventDriverModel *)self accelerometerXExpression];
  v7 = [(GCGenericDeviceMotionEventDriverModel *)self accelerometerYExpression];
  v8 = [(GCGenericDeviceMotionEventDriverModel *)self accelerometerZExpression];
  v9 = [(GCGenericDeviceMotionEventDriverModel *)self gyroXExpression];
  v10 = [(GCGenericDeviceMotionEventDriverModel *)self gyroYExpression];
  v11 = [(GCGenericDeviceMotionEventDriverModel *)self gyroZExpression];
  v12 = [v3 stringWithFormat:@"<%@ %p> {\n\t accelerometerXExpression = %@\n\t accelerometerYExpression = %@\n\t accelerometerZExpression = %@\n\t gyroXExpression = %@\n\t gyroYExpression = %@\n\t gyroZExpression = %@\n}", v5, self, v6, v7, v8, v9, v10, v11];

  return v12;
}

+ (id)modelWithDictionaryRepresentation:(id)a3 error:(id *)a4
{
  v161[2] = *MEMORY[0x1E69E9840];
  v6 = objc_opt_new();
  v137[0] = 0;
  v7 = [a3 gc_objectForKey:@"AccelerometerXExpression" ofClass:objc_opt_class() error:v137];
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
    if (!a4)
    {
      v12 = v8;
      goto LABEL_153;
    }

    v41 = MEMORY[0x1E696ABC0];
    v160[0] = *MEMORY[0x1E696A578];
    v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
    v161[0] = v42;
    v160[1] = *MEMORY[0x1E696A588];
    v43 = [v9 localizedFailureReason];
    v161[1] = v43;
    v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v161 forKeys:v160 count:2];
    *a4 = [(NSError *)v41 gc_modelError:v44 userInfo:?];

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
    v13 = [a3 gc_objectForKey:@"AccelerometerYExpression" ofClass:objc_opt_class() error:&v135];
    v14 = v135;
    v15 = v14;
    if (!v13 && v14)
    {
      if (!a4)
      {
        v17 = v14;
        goto LABEL_155;
      }

      v45 = MEMORY[0x1E696ABC0];
      v156[0] = *MEMORY[0x1E696A578];
      v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
      v157[0] = v46;
      v156[1] = *MEMORY[0x1E696A588];
      v47 = [v15 localizedFailureReason];
      v157[1] = v47;
      v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v157 forKeys:v156 count:2];
      *a4 = [(NSError *)v45 gc_modelError:v48 userInfo:?];

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
        v18 = [a3 gc_objectForKey:@"AccelerometerZExpression" ofClass:objc_opt_class() error:&v133];
        v19 = v133;
        v20 = v19;
        if (!v18 && v19)
        {
          if (!a4)
          {
            v22 = v19;
            goto LABEL_157;
          }

          v49 = MEMORY[0x1E696ABC0];
          v152[0] = *MEMORY[0x1E696A578];
          v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
          v153[0] = v50;
          v152[1] = *MEMORY[0x1E696A588];
          v51 = [v20 localizedFailureReason];
          v153[1] = v51;
          v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v153 forKeys:v152 count:2];
          *a4 = [(NSError *)v49 gc_modelError:v52 userInfo:?];

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
            v23 = [a3 gc_objectForKey:@"GyroXExpression" ofClass:objc_opt_class() error:&v131];
            v24 = v131;
            v25 = v24;
            if (!v23 && v24)
            {
              if (!a4)
              {
                v27 = v24;
                goto LABEL_159;
              }

              v53 = MEMORY[0x1E696ABC0];
              v148[0] = *MEMORY[0x1E696A578];
              v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
              v149[0] = v54;
              v148[1] = *MEMORY[0x1E696A588];
              v55 = [v25 localizedFailureReason];
              v149[1] = v55;
              v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v149 forKeys:v148 count:2];
              *a4 = [(NSError *)v53 gc_modelError:v56 userInfo:?];

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
                v28 = [a3 gc_objectForKey:@"GyroYExpression" ofClass:objc_opt_class() error:&v129];
                v29 = v129;
                v30 = v29;
                if (!v28 && v29)
                {
                  if (!a4)
                  {
                    v32 = v29;
                    goto LABEL_161;
                  }

                  v57 = MEMORY[0x1E696ABC0];
                  v144[0] = *MEMORY[0x1E696A578];
                  v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
                  v145[0] = v58;
                  v144[1] = *MEMORY[0x1E696A588];
                  v59 = [v30 localizedFailureReason];
                  v145[1] = v59;
                  v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v145 forKeys:v144 count:2];
                  *a4 = [(NSError *)v57 gc_modelError:v60 userInfo:?];

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
                    v33 = [a3 gc_objectForKey:@"GyroZExpression" ofClass:objc_opt_class() error:&v127];
                    v34 = v127;
                    v35 = v34;
                    if (!v33 && v34)
                    {
                      if (!a4)
                      {
                        v37 = v34;
                        goto LABEL_163;
                      }

                      v61 = MEMORY[0x1E696ABC0];
                      v140[0] = *MEMORY[0x1E696A578];
                      v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
                      v141[0] = v62;
                      v140[1] = *MEMORY[0x1E696A588];
                      v63 = [v35 localizedFailureReason];
                      v141[1] = v63;
                      v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v141 forKeys:v140 count:2];
                      *a4 = [(NSError *)v61 gc_modelError:v64 userInfo:?];

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
                        v38 = [v6 build];
                        goto LABEL_41;
                      }

                      if (!a4)
                      {
LABEL_163:

                        goto LABEL_164;
                      }

                      v124 = MEMORY[0x1E696ABC0];
                      v138[0] = *MEMORY[0x1E696A578];
                      v62 = [v37 localizedDescription];
                      v63 = v62;
                      if (!v62)
                      {
                        v63 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
                      }

                      v139[0] = v63;
                      v138[1] = *MEMORY[0x1E696A588];
                      v100 = [v37 localizedFailureReason];
                      v101 = v100;
                      if (!v100)
                      {
                        v100 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"GyroZExpression"];
                      }

                      v118 = v100;
                      v139[1] = v100;
                      v138[2] = *MEMORY[0x1E696AA08];
                      v102 = v37;
                      if (!v37)
                      {
                        v102 = [MEMORY[0x1E695DFB0] null];
                      }

                      v112 = v102;
                      v139[2] = v102;
                      v138[3] = @"GCFailingKeyPathErrorKey";
                      v103 = [v37 gc_failingKeyPath];
                      v104 = v103;
                      if (!v103)
                      {
                        v103 = MEMORY[0x1E695E0F0];
                      }

                      v105 = [v103 arrayByAddingObject:@"GyroZExpression"];
                      v139[3] = v105;
                      v106 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v139 forKeys:v138 count:4];
                      *a4 = [(NSError *)v124 gc_modelError:v106 userInfo:?];

                      if (!v37)
                      {
                      }

                      if (!v101)
                      {
                      }

                      if (v62)
                      {
LABEL_151:

                        goto LABEL_163;
                      }
                    }

                    goto LABEL_151;
                  }

                  if (!a4)
                  {
LABEL_161:

                    goto LABEL_164;
                  }

                  v123 = MEMORY[0x1E696ABC0];
                  v142[0] = *MEMORY[0x1E696A578];
                  v58 = [v32 localizedDescription];
                  v59 = v58;
                  if (!v58)
                  {
                    v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
                  }

                  v143[0] = v59;
                  v142[1] = *MEMORY[0x1E696A588];
                  v93 = [v32 localizedFailureReason];
                  v94 = v93;
                  if (!v93)
                  {
                    v93 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"GyroYExpression"];
                  }

                  v117 = v93;
                  v143[1] = v93;
                  v142[2] = *MEMORY[0x1E696AA08];
                  v95 = v32;
                  if (!v32)
                  {
                    v95 = [MEMORY[0x1E695DFB0] null];
                  }

                  v111 = v95;
                  v143[2] = v95;
                  v142[3] = @"GCFailingKeyPathErrorKey";
                  v96 = [v32 gc_failingKeyPath];
                  v97 = v96;
                  if (!v96)
                  {
                    v96 = MEMORY[0x1E695E0F0];
                  }

                  v98 = [v96 arrayByAddingObject:@"GyroYExpression"];
                  v143[3] = v98;
                  v99 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v143 forKeys:v142 count:4];
                  *a4 = [(NSError *)v123 gc_modelError:v99 userInfo:?];

                  if (!v32)
                  {
                  }

                  if (!v94)
                  {
                  }

                  if (v58)
                  {
LABEL_136:

                    goto LABEL_161;
                  }
                }

                goto LABEL_136;
              }

              if (!a4)
              {
LABEL_159:

                goto LABEL_164;
              }

              v122 = MEMORY[0x1E696ABC0];
              v146[0] = *MEMORY[0x1E696A578];
              v54 = [v27 localizedDescription];
              v55 = v54;
              if (!v54)
              {
                v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
              }

              v147[0] = v55;
              v146[1] = *MEMORY[0x1E696A588];
              v86 = [v27 localizedFailureReason];
              v87 = v86;
              if (!v86)
              {
                v86 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"GyroXExpression"];
              }

              v116 = v86;
              v147[1] = v86;
              v146[2] = *MEMORY[0x1E696AA08];
              v88 = v27;
              if (!v27)
              {
                v88 = [MEMORY[0x1E695DFB0] null];
              }

              v110 = v88;
              v147[2] = v88;
              v146[3] = @"GCFailingKeyPathErrorKey";
              v89 = [v27 gc_failingKeyPath];
              v90 = v89;
              if (!v89)
              {
                v89 = MEMORY[0x1E695E0F0];
              }

              v91 = [v89 arrayByAddingObject:@"GyroXExpression"];
              v147[3] = v91;
              v92 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v147 forKeys:v146 count:4];
              *a4 = [(NSError *)v122 gc_modelError:v92 userInfo:?];

              if (!v27)
              {
              }

              if (!v87)
              {
              }

              if (v54)
              {
LABEL_121:

                goto LABEL_159;
              }
            }

            goto LABEL_121;
          }

          if (!a4)
          {
LABEL_157:

            goto LABEL_164;
          }

          v121 = MEMORY[0x1E696ABC0];
          v150[0] = *MEMORY[0x1E696A578];
          v50 = [v22 localizedDescription];
          v51 = v50;
          if (!v50)
          {
            v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
          }

          v151[0] = v51;
          v150[1] = *MEMORY[0x1E696A588];
          v79 = [v22 localizedFailureReason];
          v80 = v79;
          if (!v79)
          {
            v79 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"AccelerometerZExpression"];
          }

          v115 = v79;
          v151[1] = v79;
          v150[2] = *MEMORY[0x1E696AA08];
          v81 = v22;
          if (!v22)
          {
            v81 = [MEMORY[0x1E695DFB0] null];
          }

          v109 = v81;
          v151[2] = v81;
          v150[3] = @"GCFailingKeyPathErrorKey";
          v82 = [v22 gc_failingKeyPath];
          v83 = v82;
          if (!v82)
          {
            v82 = MEMORY[0x1E695E0F0];
          }

          v84 = [v82 arrayByAddingObject:@"AccelerometerZExpression"];
          v151[3] = v84;
          v85 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v151 forKeys:v150 count:4];
          *a4 = [(NSError *)v121 gc_modelError:v85 userInfo:?];

          if (!v22)
          {
          }

          if (!v80)
          {
          }

          if (v50)
          {
LABEL_106:

            goto LABEL_157;
          }
        }

        goto LABEL_106;
      }

      if (!a4)
      {
LABEL_155:

        goto LABEL_164;
      }

      v120 = MEMORY[0x1E696ABC0];
      v154[0] = *MEMORY[0x1E696A578];
      v46 = [v17 localizedDescription];
      v47 = v46;
      if (!v46)
      {
        v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
      }

      v155[0] = v47;
      v154[1] = *MEMORY[0x1E696A588];
      v72 = [v17 localizedFailureReason];
      v73 = v72;
      if (!v72)
      {
        v72 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"AccelerometerYExpression"];
      }

      v114 = v72;
      v155[1] = v72;
      v154[2] = *MEMORY[0x1E696AA08];
      v74 = v17;
      if (!v17)
      {
        v74 = [MEMORY[0x1E695DFB0] null];
      }

      v108 = v74;
      v155[2] = v74;
      v154[3] = @"GCFailingKeyPathErrorKey";
      v75 = [v17 gc_failingKeyPath];
      v76 = v75;
      if (!v75)
      {
        v75 = MEMORY[0x1E695E0F0];
      }

      v77 = [v75 arrayByAddingObject:@"AccelerometerYExpression"];
      v155[3] = v77;
      v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v155 forKeys:v154 count:4];
      *a4 = [(NSError *)v120 gc_modelError:v78 userInfo:?];

      if (!v17)
      {
      }

      if (!v73)
      {
      }

      if (v46)
      {
LABEL_91:

        goto LABEL_155;
      }
    }

    goto LABEL_91;
  }

  if (a4)
  {
    v119 = MEMORY[0x1E696ABC0];
    v158[0] = *MEMORY[0x1E696A578];
    v42 = [v12 localizedDescription];
    v43 = v42;
    if (!v42)
    {
      v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
    }

    v159[0] = v43;
    v158[1] = *MEMORY[0x1E696A588];
    v65 = [v12 localizedFailureReason];
    v66 = v65;
    if (!v65)
    {
      v65 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"AccelerometerXExpression"];
    }

    v113 = v65;
    v159[1] = v65;
    v158[2] = *MEMORY[0x1E696AA08];
    v67 = v12;
    if (!v12)
    {
      v67 = [MEMORY[0x1E695DFB0] null];
    }

    v107 = v67;
    v159[2] = v67;
    v158[3] = @"GCFailingKeyPathErrorKey";
    v68 = [v12 gc_failingKeyPath];
    v69 = v68;
    if (!v68)
    {
      v68 = MEMORY[0x1E695E0F0];
    }

    v70 = [v68 arrayByAddingObject:@"AccelerometerXExpression"];
    v159[3] = v70;
    v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v159 forKeys:v158 count:4];
    *a4 = [(NSError *)v119 gc_modelError:v71 userInfo:?];

    if (!v12)
    {
    }

    if (!v66)
    {
    }

    if (v42)
    {
      goto LABEL_76;
    }

    goto LABEL_46;
  }

LABEL_153:

LABEL_164:
  v38 = 0;
LABEL_41:

  v39 = *MEMORY[0x1E69E9840];

  return v38;
}

@end