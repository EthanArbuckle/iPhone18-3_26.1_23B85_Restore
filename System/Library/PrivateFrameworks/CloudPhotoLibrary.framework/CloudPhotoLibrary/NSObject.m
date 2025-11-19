@interface NSObject
@end

@implementation NSObject

void __52__NSObject_CPLCodingProxy___cplPropertyAttributeMap__block_invoke_2(uint64_t a1)
{
  v2 = [_cplPropertyAttributeMap_propertyMapPerClass objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [*(a1 + 40) _addPropertyAttributeMapToPropertyMapLocked:*(*(*(a1 + 32) + 8) + 40)];
    v8 = _cplPropertyAttributeMap_propertyMapPerClass;
    v9 = *(a1 + 40);
    v10 = *(*(*(a1 + 32) + 8) + 40);

    [v8 setObject:v10 forKey:v9];
  }
}

void __77__NSObject_CPLCodingProxy___cplCopyProperties_fromOtherObject_withCopyBlock___block_invoke(void *a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = a1[6];
  if (v8 && ((*(v8 + 16))(v8, a1[4], a1[5], v5, [v6 propertySetter], objc_msgSend(v6, "propertyGetter")) & 1) != 0)
  {
    goto LABEL_56;
  }

  v9 = __tolower([v7 propertyType]);
  if (v9 <= 101)
  {
    if (v9 > 97)
    {
      if (v9 == 98 || v9 == 99)
      {
        v19 = ([v7 propertyGetterIMP])(a1[5], objc_msgSend(v7, "propertyGetter"));
        if ([v7 isReadOnly])
        {
          goto LABEL_56;
        }

        v20 = [v7 propertySetter];
        if (v20)
        {
          goto LABEL_37;
        }

        v21 = [v7 ivarAddrForObject:a1[4]];
        if (v21)
        {
          *v21 = v19;
        }
      }

      else
      {
        if (v9 != 100)
        {
          goto LABEL_48;
        }

        v10 = ([v7 propertyGetterIMP])(a1[5], objc_msgSend(v7, "propertyGetter"));
        if (([v7 isReadOnly] & 1) == 0)
        {
          v11 = [v7 propertySetter];
          if (v11)
          {
            ([v7 propertySetterIMP])(a1[4], v11, v10);
          }

          else
          {
            v37 = [v7 ivarAddrForObject:a1[4]];
            if (v37)
            {
              *v37 = v10;
            }
          }
        }
      }

      goto LABEL_56;
    }

    if (v9 == 35)
    {
      v19 = ([v7 propertyGetterIMP])(a1[5], objc_msgSend(v7, "propertyGetter"));
      v20 = [v7 propertySetter];
      if (!v20)
      {
        [v7 setIvarValue:v19 forObject:a1[4]];
        goto LABEL_56;
      }

      goto LABEL_37;
    }

    if (v9 != 64)
    {
      goto LABEL_48;
    }

    v12 = ([v7 propertyGetterIMP])(a1[5], objc_msgSend(v7, "propertyGetter"));
    v17 = [v12 cplDeepCopy];
    v18 = [v7 propertySetter];
    if (v18)
    {
      ([v7 propertySetterIMP])(a1[4], v18, v17);
    }

    else
    {
      [v7 setIvarValue:v17 forObject:a1[4]];
    }

    goto LABEL_55;
  }

  if (v9 > 112)
  {
    if (v9 == 113)
    {
      goto LABEL_32;
    }

    if (v9 == 115)
    {
      v19 = ([v7 propertyGetterIMP])(a1[5], objc_msgSend(v7, "propertyGetter"));
      if ([v7 isReadOnly])
      {
        goto LABEL_56;
      }

      v20 = [v7 propertySetter];
      if (v20)
      {
        goto LABEL_37;
      }

      v36 = [v7 ivarAddrForObject:a1[4]];
      if (v36)
      {
        *v36 = v19;
      }

      goto LABEL_56;
    }

    if (v9 != 123)
    {
      goto LABEL_48;
    }

    v12 = [v7 structName];
    if (([v12 isEqualToString:@"CGSize"] & 1) == 0 && !objc_msgSend(v12, "isEqualToString:", @"NSSize"))
    {
      if (([v12 isEqualToString:@"CGRect"] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"NSRect"))
      {
        v28 = ([v7 propertyGetterIMP])(a1[5], objc_msgSend(v7, "propertyGetter"));
        v30 = v29;
        v32 = v31;
        v34 = v33;
        if (([v7 isReadOnly] & 1) == 0)
        {
          v35 = [v7 propertySetter];
          if (v35)
          {
            ([v7 propertySetterIMP])(a1[4], v35, v28, v30, v32, v34);
          }

          else
          {
            v41 = [v7 ivarAddrForObject:a1[4]];
            if (v41)
            {
              *v41 = v28;
              v41[1] = v30;
              v41[2] = v32;
              v41[3] = v34;
            }
          }
        }

        goto LABEL_55;
      }

      if (([v12 isEqualToString:@"CGPoint"] & 1) == 0 && !objc_msgSend(v12, "isEqualToString:", @"NSPoint"))
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v40 = __CPLCodingOSLogDomain();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v42 = 138412546;
            v43 = v5;
            v44 = 2112;
            v45 = v12;
            _os_log_impl(&dword_1DC05A000, v40, OS_LOG_TYPE_ERROR, "Ignoring unknown struct for %@: %@", &v42, 0x16u);
          }
        }

        goto LABEL_55;
      }
    }

    v13 = ([v7 propertyGetterIMP])(a1[5], objc_msgSend(v7, "propertyGetter"));
    v15 = v14;
    if (([v7 isReadOnly] & 1) == 0)
    {
      v16 = [v7 propertySetter];
      if (v16)
      {
        ([v7 propertySetterIMP])(a1[4], v16, v13, v15);
      }

      else
      {
        v39 = [v7 ivarAddrForObject:a1[4]];
        if (v39)
        {
          *v39 = v13;
          v39[1] = v15;
        }
      }
    }

LABEL_55:

    goto LABEL_56;
  }

  switch(v9)
  {
    case 'f':
      v24 = ([v7 propertyGetterIMP])(a1[5], objc_msgSend(v7, "propertyGetter"));
      if (([v7 isReadOnly] & 1) == 0)
      {
        v25 = [v7 propertySetter];
        if (v25)
        {
          ([v7 propertySetterIMP])(a1[4], v25, v24);
        }

        else
        {
          v38 = [v7 ivarAddrForObject:a1[4]];
          if (v38)
          {
            *v38 = v24;
          }
        }
      }

      break;
    case 'i':
      v19 = ([v7 propertyGetterIMP])(a1[5], objc_msgSend(v7, "propertyGetter"));
      if ([v7 isReadOnly])
      {
        break;
      }

      v20 = [v7 propertySetter];
      if (v20)
      {
        goto LABEL_37;
      }

      v23 = [v7 ivarAddrForObject:a1[4]];
      if (v23)
      {
        *v23 = v19;
      }

      break;
    case 'l':
LABEL_32:
      v19 = ([v7 propertyGetterIMP])(a1[5], objc_msgSend(v7, "propertyGetter"));
      if ([v7 isReadOnly])
      {
        break;
      }

      v20 = [v7 propertySetter];
      if (!v20)
      {
        v22 = [v7 ivarAddrForObject:a1[4]];
        if (v22)
        {
          *v22 = v19;
        }

        break;
      }

LABEL_37:
      ([v7 propertySetterIMP])(a1[4], v20, v19);
      break;
    default:
LABEL_48:
      if ((_CPLSilentLogging & 1) == 0)
      {
        v26 = __CPLCodingOSLogDomain();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v42 = 138412546;
          v43 = v5;
          v44 = 1024;
          LODWORD(v45) = [v7 propertyType];
          _os_log_impl(&dword_1DC05A000, v26, OS_LOG_TYPE_ERROR, "Ignoring unknown property type for %@: %c", &v42, 0x12u);
        }
      }

      break;
  }

LABEL_56:

  v27 = *MEMORY[0x1E69E9840];
}

void __77__NSObject_CPLCodingProxy___cplCopyProperties_fromOtherObject_withCopyBlock___block_invoke_2(void *a1, void *a2, uint64_t a3)
{
  if (a1[4] != a2)
  {
    v6 = a1[5];
    v5 = a1[6];
    v7 = a2;
    v8 = [v6 objectAtIndex:a3];
    (*(v5 + 16))(v5, v8, v7);
  }
}

void __47__NSObject_CPLCodingProxy__cplClearProperties___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = __tolower([v6 propertyType]);
  if (v7 <= 101)
  {
    if (v7 <= 97)
    {
      if (v7 != 35 && v7 != 64)
      {
LABEL_42:
        if ((_CPLSilentLogging & 1) == 0)
        {
          v15 = __CPLCodingOSLogDomain();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v31 = 138412546;
            v32 = v5;
            v33 = 1024;
            LODWORD(v34) = [v6 propertyType];
            _os_log_impl(&dword_1DC05A000, v15, OS_LOG_TYPE_ERROR, "Ignoring unknown property type for %@: %c", &v31, 0x12u);
          }
        }

        goto LABEL_72;
      }

      v13 = [v6 propertySetter];
      if (!v13)
      {
        [v6 setIvarValue:0 forObject:*(a1 + 32)];
        goto LABEL_72;
      }
    }

    else
    {
      if (v7 != 98 && v7 != 99)
      {
        if (v7 != 100)
        {
          goto LABEL_42;
        }

        if ([v6 isReadOnly])
        {
          goto LABEL_72;
        }

        v8 = [v6 propertySetter];
        if (!v8)
        {
LABEL_46:
          v16 = [v6 ivarAddrForObject:*(a1 + 32)];
          if (v16)
          {
            *v16 = 0;
          }

          goto LABEL_72;
        }

        goto LABEL_13;
      }

      if ([v6 isReadOnly])
      {
        goto LABEL_72;
      }

      v13 = [v6 propertySetter];
      if (!v13)
      {
        v14 = [v6 ivarAddrForObject:*(a1 + 32)];
        if (v14)
        {
          *v14 = 0;
        }

        goto LABEL_72;
      }
    }

LABEL_32:
    ([v6 propertySetterIMP])(*(a1 + 32), v13, 0);
    goto LABEL_72;
  }

  if (v7 <= 112)
  {
    if (v7 != 102)
    {
      if (v7 != 105)
      {
        if (v7 != 108)
        {
          goto LABEL_42;
        }

LABEL_30:
        if ([v6 isReadOnly])
        {
          goto LABEL_72;
        }

        v13 = [v6 propertySetter];
        if (v13)
        {
          goto LABEL_32;
        }

        goto LABEL_46;
      }

      if ([v6 isReadOnly])
      {
        goto LABEL_72;
      }

      v13 = [v6 propertySetter];
      if (v13)
      {
        goto LABEL_32;
      }

      goto LABEL_48;
    }

    if ([v6 isReadOnly])
    {
      goto LABEL_72;
    }

    v8 = [v6 propertySetter];
    if (!v8)
    {
LABEL_48:
      v17 = [v6 ivarAddrForObject:*(a1 + 32)];
      if (v17)
      {
        *v17 = 0;
      }

      goto LABEL_72;
    }

LABEL_13:
    ([v6 propertySetterIMP])(*(a1 + 32), v8, 0.0);
    goto LABEL_72;
  }

  if (v7 == 113)
  {
    goto LABEL_30;
  }

  if (v7 != 115)
  {
    if (v7 != 123)
    {
      goto LABEL_42;
    }

    v9 = [v6 structName];
    if (([v9 isEqualToString:@"CGSize"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"NSSize"))
    {
      if (([v6 isReadOnly] & 1) == 0)
      {
        v10 = [v6 propertySetter];
        if (v10)
        {
          v11 = v10;
          v12 = [v6 propertySetterIMP];
          v12(*(a1 + 32), v11, *MEMORY[0x1E696AA88], *(MEMORY[0x1E696AA88] + 8));
          goto LABEL_71;
        }

        v22 = [v6 ivarAddrForObject:*(a1 + 32)];
        if (!v22)
        {
          goto LABEL_71;
        }

        v23 = MEMORY[0x1E696AA88];
LABEL_59:
        *v22 = *v23;
      }
    }

    else
    {
      if (([v9 isEqualToString:@"CGRect"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"NSRect"))
      {
        if (([v6 isReadOnly] & 1) == 0)
        {
          v18 = [v6 propertySetter];
          if (v18)
          {
            v19 = v18;
            v20 = [v6 propertySetterIMP];
            v20(*(a1 + 32), v19, *MEMORY[0x1E696AA80], *(MEMORY[0x1E696AA80] + 8), *(MEMORY[0x1E696AA80] + 16), *(MEMORY[0x1E696AA80] + 24));
          }

          else
          {
            v27 = [v6 ivarAddrForObject:*(a1 + 32)];
            if (v27)
            {
              v28 = *(MEMORY[0x1E696AA80] + 16);
              *v27 = *MEMORY[0x1E696AA80];
              v27[1] = v28;
            }
          }
        }

        goto LABEL_71;
      }

      if (([v9 isEqualToString:@"CGPoint"] & 1) == 0 && !objc_msgSend(v9, "isEqualToString:", @"NSPoint"))
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v29 = __CPLCodingOSLogDomain();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v31 = 138412546;
            v32 = v5;
            v33 = 2112;
            v34 = v9;
            _os_log_impl(&dword_1DC05A000, v29, OS_LOG_TYPE_ERROR, "Ignoring unknown struct for %@: %@", &v31, 0x16u);
          }
        }

        goto LABEL_71;
      }

      if (([v6 isReadOnly] & 1) == 0)
      {
        v24 = [v6 propertySetter];
        if (v24)
        {
          v25 = v24;
          v26 = [v6 propertySetterIMP];
          v26(*(a1 + 32), v25, *MEMORY[0x1E696AA78], *(MEMORY[0x1E696AA78] + 8));
          goto LABEL_71;
        }

        v22 = [v6 ivarAddrForObject:*(a1 + 32)];
        if (!v22)
        {
          goto LABEL_71;
        }

        v23 = MEMORY[0x1E696AA78];
        goto LABEL_59;
      }
    }

LABEL_71:

    goto LABEL_72;
  }

  if ([v6 isReadOnly])
  {
    goto LABEL_72;
  }

  v13 = [v6 propertySetter];
  if (v13)
  {
    goto LABEL_32;
  }

  v21 = [v6 ivarAddrForObject:*(a1 + 32)];
  if (v21)
  {
    *v21 = 0;
  }

LABEL_72:

  v30 = *MEMORY[0x1E69E9840];
}

void __47__NSObject_CPLCodingProxy__cplClearProperties___block_invoke_2(void *a1, void *a2, uint64_t a3)
{
  if (a1[4] != a2)
  {
    v6 = a1[5];
    v5 = a1[6];
    v7 = a2;
    v8 = [v6 objectAtIndex:a3];
    (*(v5 + 16))(v5, v8, v7);
  }
}

void __35__NSObject_CPLCodingProxy__cplHash__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (([*(a1 + 48) cplShouldIgnorePropertyForEquality:v5] & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = __tolower([v6 propertyType]);
    if (v8 <= 101)
    {
      if (v8 <= 97)
      {
        if (v8 != 35)
        {
          if (v8 != 64)
          {
            goto LABEL_28;
          }

          v14 = ([v6 propertyGetterIMP])(*(a1 + 32), objc_msgSend(v6, "propertyGetter"));
          v15 = *(*(*(a1 + 40) + 8) + 24);
          *(*(*(a1 + 40) + 8) + 24) = [v14 cplSpecialHash] ^ v15;
        }

        goto LABEL_26;
      }

      if (v8 == 98)
      {
        v18 = ([v6 propertyGetterIMP])(*(a1 + 32), objc_msgSend(v6, "propertyGetter"));
        v10 = *(*(a1 + 40) + 8);
        v11 = *(v10 + 24);
        v12 = v18;
        goto LABEL_24;
      }

      if (v8 != 99)
      {
        if (v8 != 100)
        {
          goto LABEL_28;
        }

        v9 = ([v6 propertyGetterIMP])(*(a1 + 32), objc_msgSend(v6, "propertyGetter"));
        v10 = *(*(a1 + 40) + 8);
        v11 = *(v10 + 24);
        v12 = (v9 * 1000.0);
        goto LABEL_24;
      }
    }

    else
    {
      if (v8 <= 112)
      {
        if (v8 == 102)
        {
          v19 = ([v6 propertyGetterIMP])(*(a1 + 32), objc_msgSend(v6, "propertyGetter"));
          v10 = *(*(a1 + 40) + 8);
          v11 = *(v10 + 24);
          v12 = (v19 * 1000.0);
          goto LABEL_24;
        }

        if (v8 != 105)
        {
          if (v8 != 108)
          {
            goto LABEL_28;
          }

          goto LABEL_21;
        }

        goto LABEL_17;
      }

      if (v8 == 113)
      {
LABEL_21:
        v16 = ([v6 propertyGetterIMP])(*(a1 + 32), objc_msgSend(v6, "propertyGetter"));
        v10 = *(*(a1 + 40) + 8);
        v17 = *(v10 + 24) ^ v16;
LABEL_25:
        *(v10 + 24) = v17;
        goto LABEL_26;
      }

      if (v8 != 115)
      {
        if (v8 != 123)
        {
LABEL_28:
          if ((_CPLSilentLogging & 1) == 0)
          {
            v21 = __CPLCodingOSLogDomain();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              v22 = 138412546;
              v23 = v5;
              v24 = 1024;
              v25 = [v6 propertyType];
              _os_log_impl(&dword_1DC05A000, v21, OS_LOG_TYPE_ERROR, "Ignoring unknown property type for %@: %c", &v22, 0x12u);
            }
          }
        }

LABEL_26:
        objc_autoreleasePoolPop(v7);
        goto LABEL_27;
      }
    }

LABEL_17:
    v13 = ([v6 propertyGetterIMP])(*(a1 + 32), objc_msgSend(v6, "propertyGetter"));
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 24);
    v12 = v13;
LABEL_24:
    v17 = v11 ^ v12;
    goto LABEL_25;
  }

LABEL_27:

  v20 = *MEMORY[0x1E69E9840];
}

void __95__NSObject_CPLCodingProxy__cplProperties_areEqualToPropertiesOf_diffTracker_withEqualityBlock___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v48 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  if (v9 && ![v9 containsObject:v7] || (objc_msgSend(*(a1 + 80), "cplShouldIgnorePropertyForEquality:", v7) & 1) != 0)
  {
    goto LABEL_37;
  }

  v10 = *(a1 + 64);
  if (v10)
  {
    v11 = (*(v10 + 16))(v10, *(a1 + 40), *(a1 + 48), v7, [v8 propertyGetter]);
    if (v11 == 1)
    {
      goto LABEL_36;
    }

    if (v11)
    {
      goto LABEL_37;
    }
  }

  v12 = __tolower([v8 propertyType]);
  if (v12 <= 101)
  {
    if (v12 > 97)
    {
      if (v12 != 98 && v12 != 99)
      {
        if (v12 != 100)
        {
          goto LABEL_40;
        }

        v13 = ([v8 propertyGetterIMP])(*(a1 + 40), objc_msgSend(v8, "propertyGetter"));
        if (v13 == ([v8 propertyGetterIMP])(*(a1 + 48), objc_msgSend(v8, "propertyGetter")))
        {
          goto LABEL_37;
        }

LABEL_36:
        *(*(*(a1 + 72) + 8) + 24) = 0;
        [*(a1 + 56) noteObjectsDifferOnProperty:v7];
        *a4 = *(a1 + 88);
        goto LABEL_37;
      }

      goto LABEL_27;
    }

    if (v12 != 35)
    {
      if (v12 != 64)
      {
        goto LABEL_40;
      }

      v14 = ([v8 propertyGetterIMP])(*(a1 + 40), objc_msgSend(v8, "propertyGetter"));
      v22 = ([v8 propertyGetterIMP])(*(a1 + 48), objc_msgSend(v8, "propertyGetter"));
      v23 = v22;
      if (v14 != v22)
      {
        if (v22)
        {
          v24 = [v14 cplSpecialIsEqual:v22];

          if (v24)
          {
            goto LABEL_37;
          }
        }

        else
        {
        }

        goto LABEL_36;
      }

      goto LABEL_45;
    }

LABEL_35:
    v25 = ([v8 propertyGetterIMP])(*(a1 + 40), objc_msgSend(v8, "propertyGetter"));
    if (v25 == ([v8 propertyGetterIMP])(*(a1 + 48), objc_msgSend(v8, "propertyGetter")))
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (v12 > 112)
  {
    if (v12 != 113)
    {
      if (v12 != 115)
      {
        if (v12 != 123)
        {
          goto LABEL_40;
        }

        v14 = [v8 structName];
        if (([v14 isEqualToString:@"CGSize"] & 1) != 0 || objc_msgSend(v14, "isEqualToString:", @"NSSize"))
        {
          v15 = ([v8 propertyGetterIMP])(*(a1 + 40), objc_msgSend(v8, "propertyGetter"));
          v17 = v16;
          v51.width = ([v8 propertyGetterIMP])(*(a1 + 48), objc_msgSend(v8, "propertyGetter"));
          v51.height = v18;
          v49.width = v15;
          v49.height = v17;
          v19 = NSEqualSizes(v49, v51);
          goto LABEL_25;
        }

        if (([v14 isEqualToString:@"CGRect"] & 1) != 0 || objc_msgSend(v14, "isEqualToString:", @"NSRect"))
        {
          v29 = ([v8 propertyGetterIMP])(*(a1 + 40), objc_msgSend(v8, "propertyGetter"));
          v31 = v30;
          v33 = v32;
          v35 = v34;
          v54.origin.x = ([v8 propertyGetterIMP])(*(a1 + 48), objc_msgSend(v8, "propertyGetter"));
          v54.origin.y = v36;
          v54.size.width = v37;
          v54.size.height = v38;
          v53.origin.x = v29;
          v53.origin.y = v31;
          v53.size.width = v33;
          v53.size.height = v35;
          v19 = NSEqualRects(v53, v54);
          goto LABEL_25;
        }

        if ([v14 isEqualToString:@"CGPoint"] & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"NSPoint"))
        {
          v39 = ([v8 propertyGetterIMP])(*(a1 + 40), objc_msgSend(v8, "propertyGetter"));
          v41 = v40;
          v52.x = ([v8 propertyGetterIMP])(*(a1 + 48), objc_msgSend(v8, "propertyGetter"));
          v52.y = v42;
          v50.x = v39;
          v50.y = v41;
          v19 = NSEqualPoints(v50, v52);
LABEL_25:
          v20 = v19;

          if (v20)
          {
            goto LABEL_37;
          }

          goto LABEL_36;
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v43 = __CPLCodingOSLogDomain();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            v44 = 138412546;
            v45 = v7;
            v46 = 2112;
            v47 = v14;
            _os_log_impl(&dword_1DC05A000, v43, OS_LOG_TYPE_ERROR, "Ignoring unknown struct for %@: %@", &v44, 0x16u);
          }
        }

LABEL_45:

        goto LABEL_37;
      }

LABEL_27:
      v21 = ([v8 propertyGetterIMP])(*(a1 + 40), objc_msgSend(v8, "propertyGetter"));
      if (v21 == ([v8 propertyGetterIMP])(*(a1 + 48), objc_msgSend(v8, "propertyGetter")))
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    goto LABEL_35;
  }

  switch(v12)
  {
    case 'f':
      v27 = ([v8 propertyGetterIMP])(*(a1 + 40), objc_msgSend(v8, "propertyGetter"));
      if (v27 == ([v8 propertyGetterIMP])(*(a1 + 48), objc_msgSend(v8, "propertyGetter")))
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    case 'i':
      goto LABEL_27;
    case 'l':
      goto LABEL_35;
  }

LABEL_40:
  if ((_CPLSilentLogging & 1) == 0)
  {
    v28 = __CPLCodingOSLogDomain();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v44 = 138412546;
      v45 = v7;
      v46 = 1024;
      LODWORD(v47) = [v8 propertyType];
      _os_log_impl(&dword_1DC05A000, v28, OS_LOG_TYPE_ERROR, "Ignoring unknown property type for %@: %c", &v44, 0x12u);
    }
  }

LABEL_37:

  v26 = *MEMORY[0x1E69E9840];
}

void __57__NSObject_CPLCodingProxy__cplDecodePropertiesFromCoder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = __tolower([v6 propertyType]);
  if (v8 > 101)
  {
    if (v8 <= 112)
    {
      if (v8 == 102)
      {
        [*(a1 + 32) decodeFloatForKey:v5];
        v31 = v30;
        if (([v6 isReadOnly] & 1) == 0)
        {
          v32 = [v6 propertySetter];
          if (v32)
          {
            ([v6 propertySetterIMP])(*(a1 + 40), v32, v31);
          }

          else
          {
            v50 = [v6 ivarAddrForObject:*(a1 + 40)];
            if (v50)
            {
              *v50 = v31;
            }
          }
        }

        goto LABEL_65;
      }

      if (v8 == 105)
      {
        v20 = [*(a1 + 32) decodeInt32ForKey:v5];
        if ([v6 isReadOnly])
        {
          goto LABEL_65;
        }

        v21 = [v6 propertySetter];
        if (v21)
        {
          goto LABEL_29;
        }

        v27 = [v6 ivarAddrForObject:*(a1 + 40)];
        if (v27)
        {
          *v27 = v20;
        }

        goto LABEL_65;
      }

      if (v8 != 108)
      {
LABEL_54:
        if ((_CPLSilentLogging & 1) == 0)
        {
          v33 = __CPLCodingOSLogDomain();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            v54 = 138412546;
            v55 = v5;
            v56 = 1024;
            LODWORD(v57) = [v6 propertyType];
            _os_log_impl(&dword_1DC05A000, v33, OS_LOG_TYPE_ERROR, "Ignoring unknown property type for %@: %c", &v54, 0x12u);
          }
        }

        goto LABEL_65;
      }

      goto LABEL_27;
    }

    if (v8 == 113)
    {
LABEL_27:
      v20 = [*(a1 + 32) decodeInt64ForKey:v5];
      if ([v6 isReadOnly])
      {
        goto LABEL_65;
      }

      v21 = [v6 propertySetter];
      if (v21)
      {
LABEL_29:
        ([v6 propertySetterIMP])(*(a1 + 40), v21, v20);
        goto LABEL_65;
      }

      v38 = [v6 ivarAddrForObject:*(a1 + 40)];
      if (v38)
      {
        *v38 = v20;
      }

      goto LABEL_65;
    }

    if (v8 == 115)
    {
      v28 = [*(a1 + 32) decodeInt32ForKey:v5];
      if (([v6 isReadOnly] & 1) == 0)
      {
        v29 = [v6 propertySetter];
        if (v29)
        {
          ([v6 propertySetterIMP])(*(a1 + 40), v29, v28);
        }

        else
        {
          v48 = [v6 ivarAddrForObject:*(a1 + 40)];
          if (v48)
          {
            *v48 = v28;
          }
        }
      }

      goto LABEL_65;
    }

    if (v8 != 123)
    {
      goto LABEL_54;
    }

    v12 = [v6 structName];
    if (([v12 isEqualToString:@"CGSize"] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"NSSize"))
    {
      [*(a1 + 32) decodeSizeForKey:v5];
    }

    else
    {
      if (([v12 isEqualToString:@"CGRect"] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"NSRect"))
      {
        [*(a1 + 32) decodeRectForKey:v5];
        v40 = v39;
        v42 = v41;
        v44 = v43;
        v46 = v45;
        if (([v6 isReadOnly] & 1) == 0)
        {
          v47 = [v6 propertySetter];
          if (v47)
          {
            ([v6 propertySetterIMP])(*(a1 + 40), v47, v40, v42, v44, v46);
          }

          else
          {
            v52 = [v6 ivarAddrForObject:*(a1 + 40)];
            if (v52)
            {
              *v52 = v40;
              v52[1] = v42;
              v52[2] = v44;
              v52[3] = v46;
            }
          }
        }

        goto LABEL_59;
      }

      if (([v12 isEqualToString:@"CGPoint"] & 1) == 0 && !objc_msgSend(v12, "isEqualToString:", @"NSPoint"))
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v53 = __CPLCodingOSLogDomain();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            v54 = 138412546;
            v55 = v5;
            v56 = 2112;
            v57 = v12;
            _os_log_impl(&dword_1DC05A000, v53, OS_LOG_TYPE_ERROR, "Ignoring unknown struct for %@: %@", &v54, 0x16u);
          }
        }

        goto LABEL_59;
      }

      [*(a1 + 32) decodePointForKey:v5];
    }

    v15 = v13;
    v16 = v14;
    if (([v6 isReadOnly] & 1) == 0)
    {
      v17 = [v6 propertySetter];
      if (v17)
      {
        ([v6 propertySetterIMP])(*(a1 + 40), v17, v15, v16);
      }

      else
      {
        v51 = [v6 ivarAddrForObject:*(a1 + 40)];
        if (v51)
        {
          *v51 = v15;
          v51[1] = v16;
        }
      }
    }

LABEL_59:

    goto LABEL_65;
  }

  if (v8 <= 97)
  {
    if (v8 != 35)
    {
      if (v8 == 64)
      {
        v18 = [v6 propertyClasses];
        v19 = *(a1 + 32);
        if (v18)
        {
          [v19 decodeObjectOfClasses:v18 forKey:v5];
        }

        else
        {
          [v19 decodeObjectForKey:v5];
        }
        v34 = ;
        v35 = [v6 propertySetter];
        if (v35)
        {
          ([v6 propertySetterIMP])(*(a1 + 40), v35, v34);
        }

        else
        {
          [v6 setIvarValue:v34 forObject:*(a1 + 40)];
        }

        goto LABEL_65;
      }

      goto LABEL_54;
    }

    v22 = [*(a1 + 32) decodeObjectForKey:v5];
    v12 = v22;
    if (v22)
    {
      v23 = NSClassFromString(v22);
      if (v23)
      {
        goto LABEL_37;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v24 = __CPLCodingOSLogDomain();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v54 = 138412546;
          v55 = v12;
          v56 = 2112;
          v57 = v5;
          _os_log_impl(&dword_1DC05A000, v24, OS_LOG_TYPE_ERROR, "Unable to find class %@ for %@", &v54, 0x16u);
        }
      }
    }

    v23 = 0;
LABEL_37:
    v25 = [v6 propertySetter];
    if (v25)
    {
      ([v6 propertySetterIMP])(*(a1 + 40), v25, v23);
    }

    else
    {
      [v6 setIvarValue:v23 forObject:*(a1 + 40)];
    }

    goto LABEL_59;
  }

  switch(v8)
  {
    case 'b':
      v26 = [*(a1 + 32) cplDecodeBoolForKey:v5];
      break;
    case 'c':
      v26 = [*(a1 + 32) cplDecodeCharForKey:v5];
      break;
    case 'd':
      [*(a1 + 32) decodeDoubleForKey:v5];
      v10 = v9;
      if (([v6 isReadOnly] & 1) == 0)
      {
        v11 = [v6 propertySetter];
        if (v11)
        {
          ([v6 propertySetterIMP])(*(a1 + 40), v11, v10);
        }

        else
        {
          v49 = [v6 ivarAddrForObject:*(a1 + 40)];
          if (v49)
          {
            *v49 = v10;
          }
        }
      }

      goto LABEL_65;
    default:
      goto LABEL_54;
  }

  v20 = v26;
  if ([v6 isReadOnly])
  {
    goto LABEL_65;
  }

  v21 = [v6 propertySetter];
  if (v21)
  {
    goto LABEL_29;
  }

  v37 = [v6 ivarAddrForObject:*(a1 + 40)];
  if (v37)
  {
    *v37 = v20;
  }

LABEL_65:
  objc_autoreleasePoolPop(v7);

  v36 = *MEMORY[0x1E69E9840];
}

void __57__NSObject_CPLCodingProxy__cplEncodePropertiesWithCoder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = __tolower([v6 propertyType]);
  if (v8 > 101)
  {
    if (v8 <= 112)
    {
      if (v8 == 102)
      {
        ([v6 propertyGetterIMP])(*(a1 + 32), objc_msgSend(v6, "propertyGetter"));
        [*(a1 + 40) encodeFloat:v5 forKey:?];
        goto LABEL_34;
      }

      if (v8 != 105)
      {
        if (v8 != 108)
        {
          goto LABEL_30;
        }

LABEL_23:
        [*(a1 + 40) encodeInt64:(objc_msgSend(v6 forKey:{"propertyGetterIMP"))(*(a1 + 32), objc_msgSend(v6, "propertyGetter")), v5}];
        goto LABEL_34;
      }

      goto LABEL_22;
    }

    if (v8 == 113)
    {
      goto LABEL_23;
    }

    if (v8 == 115)
    {
LABEL_22:
      [*(a1 + 40) encodeInt32:(objc_msgSend(v6 forKey:{"propertyGetterIMP"))(*(a1 + 32), objc_msgSend(v6, "propertyGetter")), v5}];
      goto LABEL_34;
    }

    if (v8 != 123)
    {
      goto LABEL_30;
    }

    v9 = [v6 structName];
    if (([v9 isEqualToString:@"CGSize"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"NSSize"))
    {
      ([v6 propertyGetterIMP])(*(a1 + 32), objc_msgSend(v6, "propertyGetter"));
      [*(a1 + 40) encodeSize:v5 forKey:?];
    }

    else if (([v9 isEqualToString:@"CGRect"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"NSRect"))
    {
      ([v6 propertyGetterIMP])(*(a1 + 32), objc_msgSend(v6, "propertyGetter"));
      [*(a1 + 40) encodeRect:v5 forKey:?];
    }

    else if (([v9 isEqualToString:@"CGPoint"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"NSPoint"))
    {
      ([v6 propertyGetterIMP])(*(a1 + 32), objc_msgSend(v6, "propertyGetter"));
      [*(a1 + 40) encodePoint:v5 forKey:?];
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v15 = __CPLCodingOSLogDomain();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = 138412546;
        v17 = v5;
        v18 = 2112;
        v19 = v9;
        _os_log_impl(&dword_1DC05A000, v15, OS_LOG_TYPE_ERROR, "Ignoring unknown struct for %@: %@", &v16, 0x16u);
      }
    }

LABEL_26:

    goto LABEL_34;
  }

  if (v8 <= 97)
  {
    if (v8 == 35)
    {
      v11 = ([v6 propertyGetterIMP])(*(a1 + 32), objc_msgSend(v6, "propertyGetter"));
      v12 = *(a1 + 40);
      v9 = NSStringFromClass(v11);
      v10 = v12;
    }

    else
    {
      if (v8 != 64)
      {
        goto LABEL_30;
      }

      v9 = ([v6 propertyGetterIMP])(*(a1 + 32), objc_msgSend(v6, "propertyGetter"));
      if (![v9 conformsToProtocol:&unk_1F57F2DC8])
      {
        goto LABEL_26;
      }

      v10 = *(a1 + 40);
    }

    [v10 encodeObject:v9 forKey:v5];
    goto LABEL_26;
  }

  switch(v8)
  {
    case 'b':
      [*(a1 + 40) encodeBool:(objc_msgSend(v6 forKey:{"propertyGetterIMP"))(*(a1 + 32), objc_msgSend(v6, "propertyGetter")), v5}];
      goto LABEL_34;
    case 'c':
      [*(a1 + 40) encodeInt:(objc_msgSend(v6 forKey:{"propertyGetterIMP"))(*(a1 + 32), objc_msgSend(v6, "propertyGetter")), v5}];
      goto LABEL_34;
    case 'd':
      ([v6 propertyGetterIMP])(*(a1 + 32), objc_msgSend(v6, "propertyGetter"));
      [*(a1 + 40) encodeDouble:v5 forKey:?];
      goto LABEL_34;
  }

LABEL_30:
  if ((_CPLSilentLogging & 1) == 0)
  {
    v13 = __CPLCodingOSLogDomain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412546;
      v17 = v5;
      v18 = 1024;
      LODWORD(v19) = [v6 propertyType];
      _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_ERROR, "Ignoring unknown property type for %@: %c", &v16, 0x12u);
    }
  }

LABEL_34:
  objc_autoreleasePoolPop(v7);

  v14 = *MEMORY[0x1E69E9840];
}

void __47__NSObject_CPLCodingProxy__cplAllPropertyNames__block_invoke_2(uint64_t a1)
{
  v2 = [cplAllPropertyNames_propertyNamesPerClass objectForKey:*(*(*(a1 + 40) + 8) + 24)];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v10 = [*(a1 + 48) _cplPropertyAttributeMap];
    v5 = objc_alloc(MEMORY[0x1E695DFD8]);
    v6 = [v10 allKeys];
    v7 = [v5 initWithArray:v6];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    [cplAllPropertyNames_propertyNamesPerClass setObject:*(*(*(a1 + 32) + 8) + 40) forKey:*(*(*(a1 + 40) + 8) + 24)];
  }
}

uint64_t __47__NSObject_CPLCodingProxy__cplAllPropertyNames__block_invoke()
{
  v0 = dispatch_queue_create("cpl.record.coding.properties", 0);
  v1 = cplAllPropertyNames_lock;
  cplAllPropertyNames_lock = v0;

  v2 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v3 = cplAllPropertyNames_propertyNamesPerClass;
  cplAllPropertyNames_propertyNamesPerClass = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

uint64_t __52__NSObject_CPLCodingProxy___cplPropertyAttributeMap__block_invoke()
{
  v0 = dispatch_queue_create("cpl.record.coding", 0);
  v1 = _cplPropertyAttributeMap_lock;
  _cplPropertyAttributeMap_lock = v0;

  v2 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v3 = _cplPropertyAttributeMap_propertyMapPerClass;
  _cplPropertyAttributeMap_propertyMapPerClass = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

uint64_t __61__NSObject_CPLCodingProxy__cplShouldIgnorePropertyForCoding___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"description", @"debugDescription", @"hash", @"superclass", 0}];
  v1 = cplShouldIgnorePropertyForCoding__baseIgnorableProperties;
  cplShouldIgnorePropertyForCoding__baseIgnorableProperties = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end