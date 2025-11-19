@interface _DPPiRapporEncoderResult
+ (id)encoderResultWithPhi0:(id)a3 otherPhi:(id)a4;
- (_DPPiRapporEncoderResult)initWithPhi0:(id)a3 otherPhi:(id)a4;
@end

@implementation _DPPiRapporEncoderResult

- (_DPPiRapporEncoderResult)initWithPhi0:(id)a3 otherPhi:(id)a4
{
  v7 = a3;
  v8 = a4;
  v34.receiver = self;
  v34.super_class = _DPPiRapporEncoderResult;
  v9 = [(_DPPiRapporEncoderResult *)&v34 init];
  if (!v9)
  {
    goto LABEL_17;
  }

  if (!v7 || ![v7 length])
  {
    goto LABEL_8;
  }

  if (([v7 length] & 3) == 0)
  {
    objc_storeStrong(&v9->_phi0, a3);
    v9->_numberOfEncodedIndices = [v7 length] >> 2;
    if (!v8)
    {
      goto LABEL_8;
    }

    if (([v8 length] & 3) != 0)
    {
      v10 = +[_DPLog framework];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(_DPPiRapporEncoderResult *)v10 initWithPhi0:v19 otherPhi:v20, v21, v22, v23, v24, v25];
      }

      goto LABEL_7;
    }

    if (([v8 length] >> 2) % v9->_numberOfEncodedIndices)
    {
      v10 = +[_DPLog framework];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(_DPPiRapporEncoderResult *)v10 initWithPhi0:v26 otherPhi:v27, v28, v29, v30, v31, v32];
      }

      goto LABEL_7;
    }

    objc_storeStrong(&v9->_otherPhi, a4);
    v9->_numberOfOtherPhi = ([v8 length] >> 2) / v9->_numberOfEncodedIndices;
LABEL_17:
    v18 = v9;
    goto LABEL_18;
  }

  v10 = +[_DPLog framework];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [(_DPPiRapporEncoderResult *)v10 initWithPhi0:v11 otherPhi:v12, v13, v14, v15, v16, v17];
  }

LABEL_7:

LABEL_8:
  v18 = 0;
LABEL_18:

  return v18;
}

+ (id)encoderResultWithPhi0:(id)a3 otherPhi:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[_DPPiRapporEncoderResult alloc] initWithPhi0:v6 otherPhi:v5];

  return v7;
}

@end