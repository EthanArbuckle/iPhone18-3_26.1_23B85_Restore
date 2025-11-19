@interface DUFoundInEvent
- (id)requestEventExtractionWithSerializedDocument:(id)a3 documentType:(int64_t)a4 options:(id)a5 error:(id *)a6;
- (void)foundInEventResultWithSerializedDocument:(id)a3 documentType:(int64_t)a4 completion:(id)a5;
@end

@implementation DUFoundInEvent

- (id)requestEventExtractionWithSerializedDocument:(id)a3 documentType:(int64_t)a4 options:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a5;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_249D1DD4C;
  v27 = sub_249D1DD5C;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_249D1DD4C;
  v21 = sub_249D1DD5C;
  v22 = 0;
  v11 = +[DUXPCClient sharedInstance];
  v12 = getpid();
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_249D1DD64;
  v16[3] = &unk_278FB5128;
  v16[4] = &v17;
  v16[5] = &v23;
  [v11 synchronousEventExtractionWithSerializedDocument:v9 documentType:a4 pid:v12 completion:v16];

  if (a6)
  {
    v13 = v18[5];
    if (v13)
    {
      *a6 = v13;
    }
  }

  v14 = v24[5];
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);

  return v14;
}

- (void)foundInEventResultWithSerializedDocument:(id)a3 documentType:(int64_t)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = +[DUXPCClient sharedInstance];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_249D1DF44;
  v11[3] = &unk_278FB5100;
  v12 = v7;
  v10 = v7;
  [v9 foundInEventResultWithSerializedDocument:v8 documentType:a4 completion:v11];
}

@end