@interface LBFUtils
+ (BOOL)IsEmptyTrialIdentifiers:(id)a3;
+ (BOOL)IsEqualNumberOrNil:(id)a3 n2:(id)a4;
+ (BOOL)IsEqualStringOrNil:(id)a3 s2:(id)a4;
+ (BOOL)switchToMobile;
+ (id)dateToGMTDate:(id)a3;
+ (id)dateToTimestampStringInMSec:(id)a3;
@end

@implementation LBFUtils

+ (BOOL)switchToMobile
{
  if (getuid())
  {
    return 1;
  }

  puts("Dropping root privileges to mobile");
  v3 = getpwnam("mobile");
  if (v3)
  {
    pw_uid = v3->pw_uid;
    if (pw_uid)
    {
      if (setuid(pw_uid))
      {
        v5 = "Error: could not set uid";
      }

      else
      {
        if (getuid())
        {
          return 1;
        }

        v5 = "Error: failed to setuid to drop privileges. Exiting.";
      }
    }

    else
    {
      v5 = "Error: got pwInfo for uid=0. Exiting.";
    }
  }

  else
  {
    v5 = "Error: failed to get pwInfo Exiting.";
  }

  puts(v5);
  return 0;
}

+ (id)dateToGMTDate:(id)a3
{
  v3 = MEMORY[0x277CBEBB0];
  v4 = a3;
  v9 = objc_msgSend_defaultTimeZone(v3, v5, v6, v7, v8);
  objc_msgSend_secondsFromGMT(v9, v10, v11, v12, v13);

  objc_msgSend_timeIntervalSinceReferenceDate(v4, v14, v15, v16, v17);
  v21 = MEMORY[0x277CBEAA8];

  return MEMORY[0x2821F9670](v21, sel_dateWithTimeIntervalSinceReferenceDate_, v18, v19, v20);
}

+ (id)dateToTimestampStringInMSec:(id)a3
{
  v5 = MEMORY[0x277CCACA8];
  objc_msgSend_timeIntervalSince1970(a3, a2, a3, v3, v4);
  return objc_msgSend_stringWithFormat_(v5, v7, @"%llu", v8, v9, (v6 * 1000.0));
}

+ (BOOL)IsEmptyTrialIdentifiers:(id)a3
{
  v3 = a3;
  v8 = objc_msgSend_bmltIdentifiers(v3, v4, v5, v6, v7);
  v17 = objc_msgSend_trialDeploymentID(v8, v9, v10, v11, v12);
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v19 = objc_msgSend_bmltIdentifiers(v3, v13, v14, v15, v16);
    v28 = objc_msgSend_trialTaskID(v19, v20, v21, v22, v23);
    if (v28)
    {
      v18 = 0;
    }

    else
    {
      v29 = objc_msgSend_experimentIdentifiers(v3, v24, v25, v26, v27);
      v38 = objc_msgSend_trialExperimentID(v29, v30, v31, v32, v33);
      if (v38)
      {
        v18 = 0;
      }

      else
      {
        v39 = objc_msgSend_experimentIdentifiers(v3, v34, v35, v36, v37);
        v48 = objc_msgSend_trialDeploymentID(v39, v40, v41, v42, v43);
        if (v48)
        {
          v18 = 0;
        }

        else
        {
          v55 = objc_msgSend_experimentIdentifiers(v3, v44, v45, v46, v47);
          v53 = objc_msgSend_trialTreatmentID(v55, v49, v50, v51, v52);
          v18 = v53 == 0;
        }
      }
    }
  }

  return v18;
}

+ (BOOL)IsEqualStringOrNil:(id)a3 s2:(id)a4
{
  v5 = a3;
  v6 = a4;
  v10 = v6;
  if (!v5 || !v6)
  {
    if (v5 | v6)
    {
      goto LABEL_4;
    }

LABEL_6:
    v11 = 1;
    goto LABEL_7;
  }

  if (objc_msgSend_isEqualToString_(v5, v7, v6, v8, v9))
  {
    goto LABEL_6;
  }

LABEL_4:
  v11 = 0;
LABEL_7:

  return v11;
}

+ (BOOL)IsEqualNumberOrNil:(id)a3 n2:(id)a4
{
  v5 = a3;
  v6 = a4;
  v10 = v6;
  if (!v5 || !v6)
  {
    if (v5 | v6)
    {
      goto LABEL_4;
    }

LABEL_6:
    v11 = 1;
    goto LABEL_7;
  }

  if (objc_msgSend_isEqualToNumber_(v5, v7, v6, v8, v9))
  {
    goto LABEL_6;
  }

LABEL_4:
  v11 = 0;
LABEL_7:

  return v11;
}

@end