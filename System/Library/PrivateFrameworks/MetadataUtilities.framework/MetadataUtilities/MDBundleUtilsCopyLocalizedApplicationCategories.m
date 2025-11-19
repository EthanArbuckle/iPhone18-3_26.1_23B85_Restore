@interface MDBundleUtilsCopyLocalizedApplicationCategories
@end

@implementation MDBundleUtilsCopyLocalizedApplicationCategories

double ___MDBundleUtilsCopyLocalizedApplicationCategories_block_invoke()
{
  v26 = *MEMORY[0x1E69E9840];
  v0 = si_tracing_current_span();
  v1 = *(v0 + 16);
  v23 = *v0;
  v24 = v1;
  v25 = *(v0 + 32);
  v2 = si_tracing_calc_traceid();
  spanid = si_tracing_calc_next_spanid();
  *v0 = v2;
  *(v0 + 8) = spanid;
  *(v0 + 16) = 0;
  *(v0 + 24) = -1;
  *(v0 + 28) = 102;
  *(v0 + 32) = "locAppCategories";
  si_tracing_log_span_begin();
  v4 = copyAppCategoryMap();
  _MDBundleUtilsCopyLocalizedApplicationCategories_sLocalizedApplicationCategoriesMap = v4;
  if (v4)
  {
    Count = CFDictionaryGetCount(v4);
    v9 = _MDBundleUtilsCopyLocalizedApplicationCategories_sLocalizedApplicationCategoriesMap;
    if (_MDBundleUtilsCopyLocalizedApplicationCategories_sLocalizedApplicationCategoriesMap)
    {
      v10 = Count;
      MEMORY[0x1EEE9AC00](v8, Count, 8 * Count, v6, v7);
      v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v12, v11);
      CFDictionaryGetKeysAndValues(v9, v12, 0);
      if (getCoreTypesBundleURL_onceToken != -1)
      {
        copyAppCategoryMap_cold_1();
      }

      v13 = gCoreTypesBundleLocalizations;
      if (gCoreTypesBundleLocalizations && CFArrayGetCount(gCoreTypesBundleLocalizations))
      {
        os_unfair_lock_lock(&coreTypesLocalizedPropertiesCopy_sCoreTypesLock);
        if (getCoreTypesBundleURL_onceToken != -1)
        {
          copyAppCategoryMap_cold_1();
        }

        v14 = localizedPropertyCopy(v12, v10, gCoreTypesLocTableURL, 0, v13, 0);
        os_unfair_lock_unlock(&coreTypesLocalizedPropertiesCopy_sCoreTypesLock);
      }

      else
      {
        v14 = 0;
      }

      _MDBundleUtilsCopyLocalizedApplicationCategories_sLocalizedApplicationCategories = v14;
    }
  }

  v15 = *(v0 + 8);
  v16 = *(v0 + 16);
  v17 = *(v0 + 24);
  v18 = *(v0 + 28);
  v19 = *(v0 + 32);
  si_tracing_log_span_end(*v0);
  result = *&v23;
  v21 = v24;
  *v0 = v23;
  *(v0 + 16) = v21;
  *(v0 + 32) = v25;
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

@end