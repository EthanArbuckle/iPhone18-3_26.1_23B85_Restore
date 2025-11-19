id _DBGDictionaryDescribesDebugHierarchyObjectReference(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"propertyLogicalType"];
  v2 = [v1 isEqualToString:@"DebugHierarchyLogicalPropertyTypePointer"];

  return v2;
}

id DebugHierarchySnapshotModelOSLog()
{
  if (DebugHierarchySnapshotModelOSLog___dvt_lazy_init_predicate != -1)
  {
    DebugHierarchySnapshotModelOSLog_cold_1();
  }

  v1 = DebugHierarchySnapshotModelOSLog___dvt_lazy_init_variable;

  return v1;
}

void *DBGValueClassForPropertyWith(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (![v3 length])
  {
    goto LABEL_56;
  }

  if ([v3 isEqualToString:@"DebugHierarchyLogicalPropertyTypeCustom"] || objc_msgSend(v3, "isEqualToString:", @"DebugHierarchyLogicalPropertyTypeClass") || objc_msgSend(v3, "isEqualToString:", @"DebugHierarchyLogicalPropertyTypeObjectInfo") || objc_msgSend(v3, "isEqualToString:", @"DebugHierarchyLogicalPropertyTypePointer") || objc_msgSend(v3, "isEqualToString:", @"DebugHierarchyLogicalPropertyTypeEnum") || objc_msgSend(v3, "isEqualToString:", @"DebugHierarchyLogicalPropertyTypeData") || objc_msgSend(v3, "isEqualToString:", @"DebugHierarchyLogicalPropertyTypeBool"))
  {
    goto LABEL_9;
  }

  if (![v3 isEqualToString:@"DebugHierarchyLogicalPropertyTypeNumber"])
  {
    if ([v3 isEqualToString:@"DebugHierarchyLogicalPropertyTypeString"] || objc_msgSend(v3, "isEqualToString:", @"DebugHierarchyLogicalPropertyTypeAttributedString") || objc_msgSend(v3, "isEqualToString:", @"DebugHierarchyLogicalPropertyTypeColor") || objc_msgSend(v3, "isEqualToString:", @"DebugHierarchyLogicalPropertyTypeImage") || objc_msgSend(v3, "isEqualToString:", @"DebugHierarchyLogicalPropertyTypeFont") || objc_msgSend(v3, "isEqualToString:", @"DebugHierarchyLogicalPropertyTypePoint") || objc_msgSend(v3, "isEqualToString:", @"DebugHierarchyLogicalPropertyTypeSize") || objc_msgSend(v3, "isEqualToString:", @"DebugHierarchyLogicalPropertyTypeRect") || objc_msgSend(v3, "isEqualToString:", @"DebugHierarchyLogicalPropertyTypeOffset") || objc_msgSend(v3, "isEqualToString:", @"DebugHierarchyLogicalPropertyTypeInsets") || objc_msgSend(v3, "isEqualToString:", @"DebugHierarchyLogicalPropertyTypeVector2") || objc_msgSend(v3, "isEqualToString:", @"DebugHierarchyLogicalPropertyTypeVector3") || objc_msgSend(v3, "isEqualToString:", @"DebugHierarchyLogicalPropertyTypeVector4") || objc_msgSend(v3, "isEqualToString:", @"DebugHierarchyLogicalPropertyTypeMatrix2") || objc_msgSend(v3, "isEqualToString:", @"DebugHierarchyLogicalPropertyTypeMatrix3") || objc_msgSend(v3, "isEqualToString:", @"DebugHierarchyLogicalPropertyTypeMatrix4"))
    {
      goto LABEL_9;
    }

LABEL_56:
    v5 = 0;
    goto LABEL_57;
  }

  if (![v4 isEqualToString:@"CGf"] && !objc_msgSend(v4, "isEqualToString:", @"f") && !objc_msgSend(v4, "isEqualToString:", @"d") && !objc_msgSend(v4, "isEqualToString:", @"integer") && !objc_msgSend(v4, "isEqualToString:", @"uinteger") && !objc_msgSend(v4, "isEqualToString:", @"i") && !objc_msgSend(v4, "isEqualToString:", @"ui") && !objc_msgSend(v4, "isEqualToString:", @"l") && !objc_msgSend(v4, "isEqualToString:", @"ul") && !objc_msgSend(v4, "isEqualToString:", @"ll") && !objc_msgSend(v4, "isEqualToString:", @"ull"))
  {
    NSLog(&cfstr_SErrorUnsuppor.isa, "Class<DBGValue> DBGValueClassForPropertyWith(NSString *__strong, NSString *__strong)", v4);
    goto LABEL_56;
  }

LABEL_9:
  v5 = objc_opt_class();
LABEL_57:
  v6 = v5;

  return v5;
}

void sub_9E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}