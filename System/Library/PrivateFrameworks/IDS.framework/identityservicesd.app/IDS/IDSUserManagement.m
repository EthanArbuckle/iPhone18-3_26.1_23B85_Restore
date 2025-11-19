@interface IDSUserManagement
+ (BOOL)isThreadDataSeparated;
@end

@implementation IDSUserManagement

+ (BOOL)isThreadDataSeparated
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v2 = qword_100CBF590;
  v12 = qword_100CBF590;
  if (!qword_100CBF590)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1006D8F10;
    v8[3] = &unk_100BD7928;
    v8[4] = &v9;
    sub_1006D8F10(v8);
    v2 = v10[3];
  }

  v3 = v2;
  _Block_object_dispose(&v9, 8);
  v4 = [v2 currentPersona];
  v5 = [v4 isDataSeparatedPersona];
  if (v5 && os_variant_allows_internal_security_policies())
  {
    v6 = +[IMIDSLog daemon];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100933148(v4, v6);
    }
  }

  return v5;
}

@end