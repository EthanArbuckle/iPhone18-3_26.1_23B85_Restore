void sub_CC4(id a1)
{
  qword_C6E0 = [NSSet setWithArray:&off_88F8];

  _objc_release_x1();
}

id sub_1450()
{
  v0 = qword_C6D8;
  if (!qword_C6D8)
  {
    v1 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.ondemandd.devtools" options:4096];
    v2 = qword_C6D8;
    qword_C6D8 = v1;

    v3 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ODRDeveloperToolsProtocol_New];
    v4 = objc_opt_class();
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [NSSet setWithObjects:v4, v5, v6, v7, v8, v9, objc_opt_class(), 0];
    [v3 setClasses:v10 forSelector:"tagStatusForBundle:replyBlock:" argumentIndex:0 ofReply:1];

    [qword_C6D8 setRemoteObjectInterface:v3];
    [qword_C6D8 resume];
    v0 = qword_C6D8;
  }

  return v0;
}

void sub_15DC(id a1)
{
  v1 = qword_C6D8;
  qword_C6D8 = 0;
}

uint64_t sub_15EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1604(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_16C0;
  v6[3] = &unk_82B8;
  v7 = v2;
  v5 = *(a1 + 48);
  v4 = v5;
  v8 = v5;
  [v3 tagStatusForBundle:v7 replyBlock:v6];
}

void sub_16C0(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = +[NSMutableArray array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v15 + 1) + 8 * v12) mutableCopy];
          [v13 setObject:a1[4] forKeyedSubscript:@"ODRTag_BundleIDKey"];
          [v7 addObject:v13];

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    [*(*(a1[6] + 8) + 40) setObject:v7 forKeyedSubscript:@"process.resources[]"];
  }

  v14 = *(*(a1[6] + 8) + 40);
  (*(a1[5] + 16))();
}

void sub_1AC8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = NSLocalizedDescriptionKey;
  v5 = @"Resource status collection timeout.";
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  v3 = [NSError errorWithDomain:@"com.apple.dtmobileis.resources" code:-2 userInfo:v2];
  [v1 invokeCompletionWithReturnValue:0 error:v3];
}

void sub_1B9C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  [v5 setObject:a2 forKeyedSubscript:v6];
  [*(a1 + 48) invokeCompletionWithReturnValue:*(a1 + 32) error:v7];
}

void sub_1E84(id a1)
{
  v1 = qword_C6D8;
  qword_C6D8 = 0;
}

void sub_202C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSString stringWithFormat:@"Resource purge for BundleID '%@' timedout.", *(a1 + 40), NSLocalizedDescriptionKey];
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v4 = [NSError errorWithDomain:@"com.apple.dtmobileis.assetcontrol" code:-3 userInfo:v3];
  [v1 invokeCompletionWithReturnValue:0 error:v4];
}

void sub_22BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSString stringWithFormat:@"Resource purge for AssetID '%@' timedout.", *(a1 + 40), NSLocalizedDescriptionKey];
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v4 = [NSError errorWithDomain:@"com.apple.dtmobileis.assetcontrol" code:-4 userInfo:v3];
  [v1 invokeCompletionWithReturnValue:0 error:v4];
}

void sub_2544(id a1)
{
  v1 = qword_C6D8;
  qword_C6D8 = 0;
}

void sub_2554(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = NSLocalizedDescriptionKey;
  v5 = @"Resource: Get bandwidth value timedout.";
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  v3 = [NSError errorWithDomain:@"com.apple.dtmobileis.resources" code:-2 userInfo:v2];
  [v1 invokeCompletionWithReturnValue:0 error:v3];
}

void sub_2628(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [NSNumber numberWithUnsignedInteger:a2];
  [v4 invokeCompletionWithReturnValue:v6 error:v5];
}

void sub_285C(id a1)
{
  v1 = qword_C6D8;
  qword_C6D8 = 0;
}

void sub_286C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSString stringWithFormat:@"Resource: Set bandwidth to '%@' timedout.", *(a1 + 40), NSLocalizedDescriptionKey];
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v4 = [NSError errorWithDomain:@"com.apple.dtmobileis.resources" code:-2 userInfo:v3];
  [v1 invokeCompletionWithReturnValue:0 error:v4];
}

void sub_2960(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [NSNumber numberWithUnsignedInteger:a2];
  [v4 invokeCompletionWithReturnValue:v6 error:v5];
}