@interface KVAssistantServicesBridge
+ (BOOL)isASRSupported;
+ (BOOL)isSiriMUXSupported;
+ (BOOL)isSiriUODSupported;
@end

@implementation KVAssistantServicesBridge

+ (BOOL)isASRSupported
{
  if (sub_2559C9D60())
  {
    return 1;
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v3 = off_27F7DA3F0;
  v9 = off_27F7DA3F0;
  if (!off_27F7DA3F0)
  {
    v4 = sub_2559C9EB4();
    v7[3] = dlsym(v4, "AFOfflineDictationCapable");
    off_27F7DA3F0 = v7[3];
    v3 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v3)
  {
    dlerror();
    v5 = abort_report_np();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  return v3();
}

+ (BOOL)isSiriMUXSupported
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = off_27F7DA3E8;
  v9 = off_27F7DA3E8;
  if (!off_27F7DA3E8)
  {
    v3 = sub_2559C9EB4();
    v7[3] = dlsym(v3, "AFDeviceSupportsSiriMUX");
    off_27F7DA3E8 = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    dlerror();
    v5 = abort_report_np();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  return v2();
}

+ (BOOL)isSiriUODSupported
{
  if (sub_2559C9D60())
  {
    return 1;
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v3 = off_27F7DA3E0;
  v9 = off_27F7DA3E0;
  if (!off_27F7DA3E0)
  {
    v4 = sub_2559C9EB4();
    v7[3] = dlsym(v4, "AFShouldRunAsrOnServerForUOD");
    off_27F7DA3E0 = v7[3];
    v3 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v3)
  {
    dlerror();
    v5 = abort_report_np();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  return v3();
}

@end