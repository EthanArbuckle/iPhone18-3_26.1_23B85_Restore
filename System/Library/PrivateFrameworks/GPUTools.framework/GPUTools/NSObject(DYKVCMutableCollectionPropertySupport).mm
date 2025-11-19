@interface NSObject(DYKVCMutableCollectionPropertySupport)
+ (id)_dy_mutableCollectionPropertyInfo;
+ (uint64_t)dy_synthesizeMutableArrayProperty:()DYKVCMutableCollectionPropertySupport withInstanceVariable:;
+ (uint64_t)dy_synthesizeMutableSetProperty:()DYKVCMutableCollectionPropertySupport withInstanceVariable:;
- (id)_dy_mutableCollectionPropertyInfo;
- (uint64_t)dy_mutableArrayPrimitiveCountForProperty:()DYKVCMutableCollectionPropertySupport;
- (uint64_t)dy_mutableArrayPrimitiveGetMutableValueForProperty:()DYKVCMutableCollectionPropertySupport;
- (uint64_t)dy_mutableArrayPrimitiveGetObjects:()DYKVCMutableCollectionPropertySupport range:forProperty:;
- (uint64_t)dy_mutableArrayPrimitiveGetValueForProperty:()DYKVCMutableCollectionPropertySupport;
- (uint64_t)dy_mutableArrayPrimitiveInsertObject:()DYKVCMutableCollectionPropertySupport atIndex:forProperty:;
- (uint64_t)dy_mutableArrayPrimitiveInsertObjects:()DYKVCMutableCollectionPropertySupport atIndexes:forProperty:;
- (uint64_t)dy_mutableArrayPrimitiveObjectAtIndex:()DYKVCMutableCollectionPropertySupport forProperty:;
- (uint64_t)dy_mutableArrayPrimitiveObjectsAtIndexes:()DYKVCMutableCollectionPropertySupport forProperty:;
- (uint64_t)dy_mutableArrayPrimitiveRemoveObjectAtIndex:()DYKVCMutableCollectionPropertySupport forProperty:;
- (uint64_t)dy_mutableArrayPrimitiveRemoveObjectsAtIndexes:()DYKVCMutableCollectionPropertySupport forProperty:;
- (uint64_t)dy_mutableArrayPrimitiveReplaceObjectAtIndex:()DYKVCMutableCollectionPropertySupport withObject:forProperty:;
- (uint64_t)dy_mutableArrayPrimitiveReplaceObjectsAtIndexes:()DYKVCMutableCollectionPropertySupport withObjects:forProperty:;
- (uint64_t)dy_mutableArrayPrimitiveSetValue:()DYKVCMutableCollectionPropertySupport forProperty:;
- (uint64_t)dy_mutableSetPrimitiveAddObject:()DYKVCMutableCollectionPropertySupport forProperty:;
- (uint64_t)dy_mutableSetPrimitiveAddObjects:()DYKVCMutableCollectionPropertySupport forProperty:;
- (uint64_t)dy_mutableSetPrimitiveCountForProperty:()DYKVCMutableCollectionPropertySupport;
- (uint64_t)dy_mutableSetPrimitiveGetMutableValueForProperty:()DYKVCMutableCollectionPropertySupport;
- (uint64_t)dy_mutableSetPrimitiveGetValueForProperty:()DYKVCMutableCollectionPropertySupport;
- (uint64_t)dy_mutableSetPrimitiveIntersectObjects:()DYKVCMutableCollectionPropertySupport forProperty:;
- (uint64_t)dy_mutableSetPrimitiveMember:()DYKVCMutableCollectionPropertySupport forProperty:;
- (uint64_t)dy_mutableSetPrimitiveObjectEnumeratorForProperty:()DYKVCMutableCollectionPropertySupport;
- (uint64_t)dy_mutableSetPrimitiveRemoveObject:()DYKVCMutableCollectionPropertySupport forProperty:;
- (uint64_t)dy_mutableSetPrimitiveRemoveObjects:()DYKVCMutableCollectionPropertySupport forProperty:;
- (uint64_t)dy_mutableSetPrimitiveSetValue:()DYKVCMutableCollectionPropertySupport forProperty:;
@end

@implementation NSObject(DYKVCMutableCollectionPropertySupport)

+ (id)_dy_mutableCollectionPropertyInfo
{
  v0 = objc_opt_class();

  return [_DYNSKVCMutableCollectionPropertyInfo mutableCollectionPropertyInfoForClass:v0];
}

- (id)_dy_mutableCollectionPropertyInfo
{
  v0 = objc_opt_class();

  return [_DYNSKVCMutableCollectionPropertyInfo mutableCollectionPropertyInfoForClass:v0];
}

+ (uint64_t)dy_synthesizeMutableArrayProperty:()DYKVCMutableCollectionPropertySupport withInstanceVariable:
{
  v6 = [a1 _dy_mutableCollectionPropertyInfo];

  return [v6 dy_synthesizeMutableArrayProperty:a3 withInstanceVariable:a4];
}

+ (uint64_t)dy_synthesizeMutableSetProperty:()DYKVCMutableCollectionPropertySupport withInstanceVariable:
{
  v6 = [a1 _dy_mutableCollectionPropertyInfo];

  return [v6 dy_synthesizeMutableSetProperty:a3 withInstanceVariable:a4];
}

- (uint64_t)dy_mutableArrayPrimitiveGetMutableValueForProperty:()DYKVCMutableCollectionPropertySupport
{
  v4 = [objc_msgSend(objc_msgSend(a1 "_dy_mutableCollectionPropertyInfo")];

  return [a1 mutableArrayValueForKey:v4];
}

- (uint64_t)dy_mutableArrayPrimitiveGetValueForProperty:()DYKVCMutableCollectionPropertySupport
{
  v4 = [objc_msgSend(a1 "_dy_mutableCollectionPropertyInfo")];

  return [v4 underlyingIvarValueForObject:a1];
}

- (uint64_t)dy_mutableArrayPrimitiveSetValue:()DYKVCMutableCollectionPropertySupport forProperty:
{
  v5 = [objc_msgSend(objc_msgSend(a1 "_dy_mutableCollectionPropertyInfo")];

  return [v5 setArray:a3];
}

- (uint64_t)dy_mutableArrayPrimitiveInsertObject:()DYKVCMutableCollectionPropertySupport atIndex:forProperty:
{
  v7 = [objc_msgSend(objc_msgSend(a1 "_dy_mutableCollectionPropertyInfo")];

  return [v7 insertObject:a3 atIndex:a4];
}

- (uint64_t)dy_mutableArrayPrimitiveRemoveObjectAtIndex:()DYKVCMutableCollectionPropertySupport forProperty:
{
  v5 = [objc_msgSend(objc_msgSend(a1 "_dy_mutableCollectionPropertyInfo")];

  return [v5 removeObjectAtIndex:a3];
}

- (uint64_t)dy_mutableArrayPrimitiveReplaceObjectAtIndex:()DYKVCMutableCollectionPropertySupport withObject:forProperty:
{
  v7 = [objc_msgSend(objc_msgSend(a1 "_dy_mutableCollectionPropertyInfo")];

  return [v7 replaceObjectAtIndex:a3 withObject:a4];
}

- (uint64_t)dy_mutableArrayPrimitiveInsertObjects:()DYKVCMutableCollectionPropertySupport atIndexes:forProperty:
{
  v7 = [objc_msgSend(objc_msgSend(a1 "_dy_mutableCollectionPropertyInfo")];

  return [v7 insertObjects:a3 atIndexes:a4];
}

- (uint64_t)dy_mutableArrayPrimitiveRemoveObjectsAtIndexes:()DYKVCMutableCollectionPropertySupport forProperty:
{
  v5 = [objc_msgSend(objc_msgSend(a1 "_dy_mutableCollectionPropertyInfo")];

  return [v5 removeObjectsAtIndexes:a3];
}

- (uint64_t)dy_mutableArrayPrimitiveReplaceObjectsAtIndexes:()DYKVCMutableCollectionPropertySupport withObjects:forProperty:
{
  v7 = [objc_msgSend(objc_msgSend(a1 "_dy_mutableCollectionPropertyInfo")];

  return [v7 replaceObjectsAtIndexes:a3 withObjects:a4];
}

- (uint64_t)dy_mutableArrayPrimitiveCountForProperty:()DYKVCMutableCollectionPropertySupport
{
  v3 = [objc_msgSend(objc_msgSend(a1 "_dy_mutableCollectionPropertyInfo")];

  return [v3 count];
}

- (uint64_t)dy_mutableArrayPrimitiveObjectAtIndex:()DYKVCMutableCollectionPropertySupport forProperty:
{
  v5 = [objc_msgSend(objc_msgSend(a1 "_dy_mutableCollectionPropertyInfo")];

  return [v5 objectAtIndex:a3];
}

- (uint64_t)dy_mutableArrayPrimitiveObjectsAtIndexes:()DYKVCMutableCollectionPropertySupport forProperty:
{
  v5 = [objc_msgSend(objc_msgSend(a1 "_dy_mutableCollectionPropertyInfo")];

  return [v5 objectsAtIndexes:a3];
}

- (uint64_t)dy_mutableArrayPrimitiveGetObjects:()DYKVCMutableCollectionPropertySupport range:forProperty:
{
  v9 = [objc_msgSend(objc_msgSend(a1 "_dy_mutableCollectionPropertyInfo")];

  return [v9 getObjects:a3 range:{a4, a5}];
}

- (uint64_t)dy_mutableSetPrimitiveGetMutableValueForProperty:()DYKVCMutableCollectionPropertySupport
{
  v4 = [objc_msgSend(objc_msgSend(a1 "_dy_mutableCollectionPropertyInfo")];

  return [a1 mutableSetValueForKey:v4];
}

- (uint64_t)dy_mutableSetPrimitiveGetValueForProperty:()DYKVCMutableCollectionPropertySupport
{
  v4 = [objc_msgSend(a1 "_dy_mutableCollectionPropertyInfo")];

  return [v4 underlyingIvarValueForObject:a1];
}

- (uint64_t)dy_mutableSetPrimitiveSetValue:()DYKVCMutableCollectionPropertySupport forProperty:
{
  v5 = [objc_msgSend(objc_msgSend(a1 "_dy_mutableCollectionPropertyInfo")];

  return [v5 setSet:a3];
}

- (uint64_t)dy_mutableSetPrimitiveAddObject:()DYKVCMutableCollectionPropertySupport forProperty:
{
  v5 = [objc_msgSend(objc_msgSend(a1 "_dy_mutableCollectionPropertyInfo")];

  return [v5 addObject:a3];
}

- (uint64_t)dy_mutableSetPrimitiveRemoveObject:()DYKVCMutableCollectionPropertySupport forProperty:
{
  v5 = [objc_msgSend(objc_msgSend(a1 "_dy_mutableCollectionPropertyInfo")];

  return [v5 removeObject:a3];
}

- (uint64_t)dy_mutableSetPrimitiveAddObjects:()DYKVCMutableCollectionPropertySupport forProperty:
{
  v5 = [objc_msgSend(objc_msgSend(a1 "_dy_mutableCollectionPropertyInfo")];

  return [v5 unionSet:a3];
}

- (uint64_t)dy_mutableSetPrimitiveRemoveObjects:()DYKVCMutableCollectionPropertySupport forProperty:
{
  v5 = [objc_msgSend(objc_msgSend(a1 "_dy_mutableCollectionPropertyInfo")];

  return [v5 minusSet:a3];
}

- (uint64_t)dy_mutableSetPrimitiveIntersectObjects:()DYKVCMutableCollectionPropertySupport forProperty:
{
  v5 = [objc_msgSend(objc_msgSend(a1 "_dy_mutableCollectionPropertyInfo")];

  return [v5 intersectSet:a3];
}

- (uint64_t)dy_mutableSetPrimitiveCountForProperty:()DYKVCMutableCollectionPropertySupport
{
  v3 = [objc_msgSend(objc_msgSend(a1 "_dy_mutableCollectionPropertyInfo")];

  return [v3 count];
}

- (uint64_t)dy_mutableSetPrimitiveObjectEnumeratorForProperty:()DYKVCMutableCollectionPropertySupport
{
  v3 = [objc_msgSend(objc_msgSend(a1 "_dy_mutableCollectionPropertyInfo")];

  return [v3 objectEnumerator];
}

- (uint64_t)dy_mutableSetPrimitiveMember:()DYKVCMutableCollectionPropertySupport forProperty:
{
  v5 = [objc_msgSend(objc_msgSend(a1 "_dy_mutableCollectionPropertyInfo")];

  return [v5 member:a3];
}

@end