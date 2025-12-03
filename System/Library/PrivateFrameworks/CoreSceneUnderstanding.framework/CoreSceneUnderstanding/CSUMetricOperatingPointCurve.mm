@interface CSUMetricOperatingPointCurve
- (CSUMetricOperatingPointCurve)initWithOperatingPointsData:(id)data metricPattern:(int)pattern error:(id *)error;
- (void)enumerateUsingBlock:(id)block;
@end

@implementation CSUMetricOperatingPointCurve

- (CSUMetricOperatingPointCurve)initWithOperatingPointsData:(id)data metricPattern:(int)pattern error:(id *)error
{
  dataCopy = data;
  v50.receiver = self;
  v50.super_class = CSUMetricOperatingPointCurve;
  v13 = [(CSUMetricOperatingPointCurve *)&v50 init];
  if (!v13)
  {
    if (error)
    {
      v32 = objc_msgSend_errorWithCode_message_(CSUError, v9, 4, @"Failed to allocate memory", v12);
LABEL_7:
      v33 = 0;
      *error = v32;
      goto LABEL_19;
    }

LABEL_18:
    v33 = 0;
    goto LABEL_19;
  }

  v14 = objc_msgSend_copy(dataCopy, v9, v10, v11, v12);
  operatingPoints = v13->_operatingPoints;
  v13->_operatingPoints = v14;

  v13->_metricPattern = pattern;
  if ((objc_msgSend_length(v13->_operatingPoints, v16, v17, v18, v19) & 3) != 0)
  {
    if (error)
    {
      v24 = MEMORY[0x1E696AEC0];
      v25 = objc_msgSend_length(v13->_operatingPoints, v20, v21, v22, v23);
      v29 = objc_msgSend_stringWithFormat_(v24, v26, @"Invalid byte buffer length %lu for metric-operating curve initialization from operating points", v27, v28, v25);
      *error = objc_msgSend_errorWithCode_message_(CSUError, v30, 6, v29, v31);
    }

    goto LABEL_18;
  }

  v34 = objc_msgSend_length(v13->_operatingPoints, v20, v21, v22, v23);
  metricPattern = v13->_metricPattern;
  if (!metricPattern)
  {
    v40 = 9;
    v41 = v34 >> 2;
    if (v34 >> 2 == 9)
    {
      goto LABEL_11;
    }

LABEL_14:
    if (error)
    {
      v44 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v35, @"Invalid number %lu of operating points for metric-operating point curve with %lu expected points", v37, v38, v41, v40);
      *error = objc_msgSend_errorWithCode_message_(CSUError, v45, 6, v44, v46);
    }

    goto LABEL_18;
  }

  if (metricPattern != 1)
  {
    if (error)
    {
      v32 = objc_msgSend_errorWithCode_message_(CSUError, v35, 2, @"Unhandled metric pattern in initialization of metric-operating point curve", v38);
      goto LABEL_7;
    }

    goto LABEL_18;
  }

  v40 = 3;
  v41 = v34 >> 2;
  if (v34 >> 2 != 3)
  {
    goto LABEL_14;
  }

LABEL_11:
  v42 = v34;
  v43 = objc_msgSend_bytes(v13->_operatingPoints, v35, v36, v37, v38);
  v13->_nanCount = 0;
  if (v42 >= 4)
  {
    v48 = 4 * v41;
    do
    {
      v49 = *v43++;
      v48 -= 4;
    }

    while (v48);
  }

  v33 = v13;
LABEL_19:

  return v33;
}

- (void)enumerateUsingBlock:(id)block
{
  blockCopy = block;
  v9 = objc_msgSend_bytes(self->_operatingPoints, v5, v6, v7, v8);
  objc_msgSend_length(self->_operatingPoints, v10, v11, v12, v13);
  metricPattern = self->_metricPattern;
  if (!metricPattern)
  {
    v21 = 0;
    blockCopy[2](blockCopy, &v21, 0.1, *v9);
    if ((v21 & 1) == 0)
    {
      blockCopy[2](blockCopy, &v21, 0.2, v9[1]);
      if ((v21 & 1) == 0)
      {
        blockCopy[2](blockCopy, &v21, 0.3, v9[2]);
        if ((v21 & 1) == 0)
        {
          blockCopy[2](blockCopy, &v21, 0.4, v9[3]);
          if ((v21 & 1) == 0)
          {
            blockCopy[2](blockCopy, &v21, 0.5, v9[4]);
            if ((v21 & 1) == 0)
            {
              blockCopy[2](blockCopy, &v21, 0.6, v9[5]);
              if ((v21 & 1) == 0)
              {
                blockCopy[2](blockCopy, &v21, 0.7, v9[6]);
                if ((v21 & 1) == 0)
                {
                  blockCopy[2](blockCopy, &v21, 0.8, v9[7]);
                  if ((v21 & 1) == 0)
                  {
                    blockCopy[2](blockCopy, &v21, 0.9, v9[8]);
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_6;
  }

  if (metricPattern == 1)
  {
    v22 = 0;
    blockCopy[2](blockCopy, &v22, 0.5, *v9);
    if ((v22 & 1) == 0)
    {
      blockCopy[2](blockCopy, &v22, 1.0, v9[1]);
      if ((v22 & 1) == 0)
      {
        blockCopy[2](blockCopy, &v22, 2.0, v9[2]);
      }
    }

LABEL_6:

    return;
  }

  v17 = objc_msgSend_errorWithCode_message_(CSUError, v14, 2, @"Unhandled metric pattern", v15);
  objc_msgSend_logInternalError_(CSUError, v18, v17, v19, v20);
}

@end