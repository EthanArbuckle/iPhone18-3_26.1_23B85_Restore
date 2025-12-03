@interface HKVerifiableHealthRecordsParser
- (id)parseDataSource:(id)source options:(unint64_t)options error:(id *)error;
@end

@implementation HKVerifiableHealthRecordsParser

- (id)parseDataSource:(id)source options:(unint64_t)options error:(id *)error
{
  sourceCopy = source;
  v8 = objc_alloc_init(HDHRSignedClinicalDataHandler);
  v38 = 0;
  v9 = [(HDHRSignedClinicalDataHandler *)v8 preprocessDataInSource:sourceCopy options:5 error:&v38];
  v10 = v38;
  v11 = v10;
  if (v9)
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__2;
    v36 = __Block_byref_object_dispose__2;
    v37 = 0;
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x3032000000;
    v30[3] = __Block_byref_object_copy__2;
    v30[4] = __Block_byref_object_dispose__2;
    v31 = 0;
    v12 = dispatch_group_create();
    dispatch_group_enter(v12);
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __65__HKVerifiableHealthRecordsParser_parseDataSource_options_error___block_invoke;
    v26 = &unk_2796E2BB8;
    v28 = &v32;
    v29 = v30;
    v13 = v12;
    v27 = v13;
    [(HDHRSignedClinicalDataHandler *)v8 processContextCollection:v9 completion:&v23];
    dispatch_group_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
    v14 = v33[5];
    if (v14)
    {
      items = [v14 items];
      v16 = [items hk_map:&__block_literal_global_2];

      v17 = [objc_alloc(MEMORY[0x277D124B0]) initWithOptions:options localizedTypeDisplayNames:v16];
    }

    else
    {
      mappedError = [v11 mappedError];
      v16 = mappedError;
      if (mappedError)
      {
        if (error)
        {
          v21 = mappedError;
          *error = v16;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v17 = 0;
    }

    _Block_object_dispose(v30, 8);
    _Block_object_dispose(&v32, 8);
  }

  else
  {
    mappedError2 = [v10 mappedError];
    if (mappedError2)
    {
      if (error)
      {
        v19 = mappedError2;
        *error = mappedError2;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v17 = 0;
  }

  return v17;
}

void __65__HKVerifiableHealthRecordsParser_parseDataSource_options_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

id __65__HKVerifiableHealthRecordsParser_parseDataSource_options_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 mainRecord];
  v3 = [v2 recordTypeDisplayName];

  return v3;
}

@end