@interface GESSAlgSplitMeshByComponentsExtended
- (BOOL)run:(id)run output:(id)output;
@end

@implementation GESSAlgSplitMeshByComponentsExtended

- (BOOL)run:(id)run output:(id)output
{
  runCopy = run;
  outputCopy = output;
  if (objc_msgSend_valid(runCopy, v8, v9, v10))
  {
    objc_msgSend_removeAllObjects(outputCopy, v11, v12, v13);
    if (objc_msgSend_meshType(runCopy, v14, v15, v16) == 1)
    {
      v20 = objc_msgSend_meshImpl(runCopy, v17, v18, v19);
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v24 = objc_msgSend_maxSplitCount(self->_options, v21, v22, v23);
      sub_24BE1C648(v20, &v37, v24);
      v34 = 0;
      v35 = 0;
      v36 = 0;
      if (v37 != v38)
      {
        sub_24BD51FA4();
      }

      sub_24BD51FA4();
    }

    if (objc_msgSend_meshType(runCopy, v17, v18, v19) == 11)
    {
      v28 = objc_msgSend_meshImpl(runCopy, v25, v26, v27);
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v32 = objc_msgSend_maxSplitCount(self->_options, v29, v30, v31);
      sub_24BE1CBC0(v28, &v37, v32);
      v34 = 0;
      v35 = 0;
      v36 = 0;
      if (v37 != v38)
      {
        sub_24BD2A7F0();
      }

      sub_24BD2A7F0();
    }
  }

  return 0;
}

@end