@interface _DPPiRapporEncoderResult
+ (id)encoderResultWithPhi0:(id)phi0 otherPhi:(id)phi;
- (_DPPiRapporEncoderResult)initWithPhi0:(id)phi0 otherPhi:(id)phi;
@end

@implementation _DPPiRapporEncoderResult

- (_DPPiRapporEncoderResult)initWithPhi0:(id)phi0 otherPhi:(id)phi
{
  phi0Copy = phi0;
  phiCopy = phi;
  v34.receiver = self;
  v34.super_class = _DPPiRapporEncoderResult;
  v9 = [(_DPPiRapporEncoderResult *)&v34 init];
  if (!v9)
  {
    goto LABEL_17;
  }

  if (!phi0Copy || ![phi0Copy length])
  {
    goto LABEL_8;
  }

  if (([phi0Copy length] & 3) == 0)
  {
    objc_storeStrong(&v9->_phi0, phi0);
    v9->_numberOfEncodedIndices = [phi0Copy length] >> 2;
    if (!phiCopy)
    {
      goto LABEL_8;
    }

    if (([phiCopy length] & 3) != 0)
    {
      v10 = +[_DPLog framework];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(_DPPiRapporEncoderResult *)v10 initWithPhi0:v19 otherPhi:v20, v21, v22, v23, v24, v25];
      }

      goto LABEL_7;
    }

    if (([phiCopy length] >> 2) % v9->_numberOfEncodedIndices)
    {
      v10 = +[_DPLog framework];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(_DPPiRapporEncoderResult *)v10 initWithPhi0:v26 otherPhi:v27, v28, v29, v30, v31, v32];
      }

      goto LABEL_7;
    }

    objc_storeStrong(&v9->_otherPhi, phi);
    v9->_numberOfOtherPhi = ([phiCopy length] >> 2) / v9->_numberOfEncodedIndices;
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

+ (id)encoderResultWithPhi0:(id)phi0 otherPhi:(id)phi
{
  phiCopy = phi;
  phi0Copy = phi0;
  v7 = [[_DPPiRapporEncoderResult alloc] initWithPhi0:phi0Copy otherPhi:phiCopy];

  return v7;
}

@end