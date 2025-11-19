@interface IMPowerAssertion
- (IMPowerAssertion)initWithIdentifier:(id)a3 timeout:(double)a4;
- (IMPowerAssertion)initWithIdentifier:(id)a3 timeoutSec:(double)a4 properties:(id)a5;
- (void)dealloc;
@end

@implementation IMPowerAssertion

- (void)dealloc
{
  IMLogBacktrace(@"Power");
  if (self->_assertion)
  {
    if (qword_1EAED8A40 != -1)
    {
      sub_1959D660C();
    }

    off_1EAED8A48(self->_assertion);
  }

  v3.receiver = self;
  v3.super_class = IMPowerAssertion;
  [(IMPowerAssertion *)&v3 dealloc];
}

- (IMPowerAssertion)initWithIdentifier:(id)a3 timeout:(double)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = IMPowerAssertion;
  v7 = [(IMPowerAssertion *)&v14 init];
  if (v7)
  {
    if (a4 == 0.0)
    {
      if (qword_1EAED9488 != -1)
      {
        sub_1959D65BC();
      }

      if (off_1EAED9480(@"PreventUserIdleSystemSleep", 255, v6, &v7->_assertion))
      {
LABEL_6:
        v7->_assertion = 0;

        v7 = 0;
        goto LABEL_11;
      }
    }

    else
    {
      if (qword_1EAED9498 != -1)
      {
        sub_1959D6594();
      }

      if (off_1EAED9490(@"PreventUserIdleSystemSleep", v6, v6, 0, 0, @"TimeoutActionTurnOff", &v7->_assertion, a4))
      {
        goto LABEL_6;
      }
    }

    v10 = objc_msgSend_copy(v6, v8, v9);
    identifier = v7->_identifier;
    v7->_identifier = v10;

    v12 = objc_autoreleasePoolPush();
    IMLogBacktrace(@"Power");
    objc_autoreleasePoolPop(v12);
  }

LABEL_11:

  return v7;
}

- (IMPowerAssertion)initWithIdentifier:(id)a3 timeoutSec:(double)a4 properties:(id)a5
{
  v8 = a3;
  v9 = a5;
  v44.receiver = self;
  v44.super_class = IMPowerAssertion;
  v12 = [(IMPowerAssertion *)&v44 init];
  if (!v12)
  {
    goto LABEL_15;
  }

  v13 = objc_msgSend_copy(v8, v10, v11);
  identifier = v12->_identifier;
  v12->_identifier = v13;

  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  objc_msgSend_setValue_forKey_(v15, v16, @"PreventUserIdleSystemSleep", @"AssertType");
  objc_msgSend_setValue_forKey_(v15, v17, v8, @"AssertName");
  v20 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v18, v19, a4);
  objc_msgSend_setValue_forKey_(v15, v21, v20, @"TimeoutSeconds");

  v23 = objc_msgSend_objectForKeyedSubscript_(v9, v22, @"IMPowerAssertionPropertyPIDKey");

  if (v23)
  {
    v25 = objc_msgSend_objectForKeyedSubscript_(v9, v24, @"IMPowerAssertionPropertyPIDKey");
    objc_msgSend_setValue_forKey_(v15, v26, v25, @"AssertPID");
  }

  v27 = objc_msgSend_objectForKeyedSubscript_(v9, v24, @"IMPowerAssertionPropertyOnBehalfOfPIDKey");

  if (v27)
  {
    v29 = objc_msgSend_objectForKeyedSubscript_(v9, v28, @"IMPowerAssertionPropertyOnBehalfOfPIDKey");
    objc_msgSend_setValue_forKey_(v15, v30, v29, @"AssertionOnBehalfOfPID");
  }

  v31 = objc_msgSend_objectForKeyedSubscript_(v9, v28, @"IMPowerAssertionPropertyFrameworkIDKey");

  if (v31)
  {
    v33 = objc_msgSend_objectForKeyedSubscript_(v9, v32, @"IMPowerAssertionPropertyFrameworkIDKey");
    objc_msgSend_setValue_forKey_(v15, v34, v33, @"FrameworkBundleID");
  }

  v35 = objc_msgSend_objectForKeyedSubscript_(v9, v32, @"IMPowerAssertionPropertyOnBehalfOfPIDReasonKey");

  if (v35)
  {
    v38 = objc_msgSend_objectForKeyedSubscript_(v9, v36, @"IMPowerAssertionPropertyOnBehalfOfPIDReasonKey");
    objc_msgSend_setValue_forKey_(v15, v39, v38, @"AssertionOnBehalfOfPIDReason");
  }

  v40 = objc_msgSend_copy(v15, v36, v37);
  properties = v12->_properties;
  v12->_properties = v40;

  if (qword_1EAED94A8 != -1)
  {
    sub_1959D65E4();
  }

  if (!off_1EAED94A0(v12->_properties, &v12->_assertion))
  {

LABEL_15:
    v42 = v12;
    goto LABEL_16;
  }

  v12->_assertion = 0;

  v42 = 0;
LABEL_16:

  return v42;
}

@end