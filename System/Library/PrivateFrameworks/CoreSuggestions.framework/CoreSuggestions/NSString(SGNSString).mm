@interface NSString(SGNSString)
- (_SGNSStringEncodingEnumerator)sg_dataEnumeratorUsingEncoding:()SGNSString nullTerminated:;
- (id)sg_md5Hash;
- (uint64_t)sg_dataEnumeratorUsingEncoding:()SGNSString;
- (uint64_t)sg_streamBytesUsingEncoding:()SGNSString toBlock:;
- (void)sg_streamBytesUsingEncoding:()SGNSString nullTerminated:toBlock:;
@end

@implementation NSString(SGNSString)

- (id)sg_md5Hash
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 UTF8String];
  *md = 0;
  v8 = 0;
  v2 = strlen(v1);
  CC_MD5(v1, v2, md);
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [v3 initWithFormat:@"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X", md[0], md[1], md[2], md[3], md[4], md[5], md[6], md[7], v8, BYTE1(v8), BYTE2(v8), BYTE3(v8), BYTE4(v8), BYTE5(v8), BYTE6(v8), HIBYTE(v8)];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (_SGNSStringEncodingEnumerator)sg_dataEnumeratorUsingEncoding:()SGNSString nullTerminated:
{
  v56[1] = *MEMORY[0x1E69E9840];
  if (a4 && (nullTerminationSupportedForEncoding(a3) & 1) == 0)
  {
    v43 = [MEMORY[0x1E696AAA8] currentHandler];
    [v43 handleFailureInMethod:a2 object:a1 file:@"NSString+SGNSString.m" lineNumber:142 description:{@"Invalid parameter not satisfying: %@", @"nullTerminationSupportedForEncoding(encoding)"}];
  }

  v8 = [(__CFString *)a1 length];
  if (!v8)
  {
    v15 = objc_autoreleasePoolPush();
    if ((a4 & 1) == 0)
    {
      v23 = [MEMORY[0x1E695E0F0] objectEnumerator];
      goto LABEL_30;
    }

    v21 = nullByteData();
    v56[0] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:1];
    v23 = [v22 objectEnumerator];
    goto LABEL_21;
  }

  v9 = v8;
  if (a3 != 10 && a3 != 2483028224 && a3 != 2415919360)
  {
    if (a3 != 4 && a3 != 1)
    {
      goto LABEL_44;
    }

    v15 = objc_autoreleasePoolPush();
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
    if (CStringPtr)
    {
      v25 = CStringPtr;
      v26 = objc_autoreleasePoolPush();
      v27 = objc_alloc(MEMORY[0x1E695DEF0]);
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __70__NSString_SGNSString__sg_dataEnumeratorUsingEncoding_nullTerminated___block_invoke_2;
      v50[3] = &unk_1E7EFCC08;
      v50[4] = a1;
      v28 = [v27 initWithBytesNoCopy:v25 length:v9 + a4 deallocator:v50];
      v53 = v28;
      v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
      v23 = [v29 objectEnumerator];

      objc_autoreleasePoolPop(v26);
      goto LABEL_30;
    }

    if (a3 != 4 || [(__CFString *)a1 fastestEncoding]!= 4)
    {
      objc_autoreleasePoolPop(v15);
      goto LABEL_44;
    }

    v30 = objc_autoreleasePoolPush();
    v21 = [(__CFString *)a1 dataUsingEncoding:4];
    objc_autoreleasePoolPop(v30);
    v31 = [v21 length];
    if (v31)
    {
      v32 = v31;
      v33 = nullByteData();
      v34 = v32 - 1;
      v35 = [v21 rangeOfData:v33 options:0 range:{v32 - 1, 1}];

      if (v35 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v36 = 1;
      }

      else
      {
        v36 = a4;
      }

      if (v36)
      {
        v34 = v32;
      }

      v37 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __70__NSString_SGNSString__sg_dataEnumeratorUsingEncoding_nullTerminated___block_invoke_3;
      v44[3] = &unk_1E7EFCC30;
      v47 = 0;
      v48 = v34;
      v49 = v32;
      v38 = v37;
      v45 = v38;
      v46 = v21;
      [v46 enumerateByteRangesUsingBlock:v44];
      if (a4 && v35 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v39 = nullByteData();
        [v38 addObject:v39];
      }

      v23 = [v38 objectEnumerator];

      goto LABEL_22;
    }

    if ((a4 & 1) == 0)
    {
      v23 = [MEMORY[0x1E695E0F0] objectEnumerator];
      goto LABEL_22;
    }

    v22 = nullByteData();
    v52 = v22;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
    v23 = [v42 objectEnumerator];

LABEL_21:
LABEL_22:

LABEL_30:
    objc_autoreleasePoolPop(v15);
    goto LABEL_45;
  }

  v10 = [(__CFString *)a1 fastestEncoding];
  v12 = a3 != 2483028224 || v10 != 10;
  if (v10 == a3 || !v12)
  {
    CharactersPtr = CFStringGetCharactersPtr(a1);
    if (CharactersPtr)
    {
      v14 = CharactersPtr;
      v15 = objc_autoreleasePoolPush();
      v16 = objc_alloc(MEMORY[0x1E695DEF0]);
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __70__NSString_SGNSString__sg_dataEnumeratorUsingEncoding_nullTerminated___block_invoke;
      v51[3] = &unk_1E7EFCC08;
      v51[4] = a1;
      v17 = [v16 initWithBytesNoCopy:v14 length:2 * v9 deallocator:v51];
      v18 = v17;
      if (a3 == 10)
      {
        v19 = bomData();
        v55[0] = v19;
        v55[1] = v18;
        v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
      }

      else
      {
        v54 = v17;
        v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
      }

      v23 = [v20 objectEnumerator];

      goto LABEL_30;
    }
  }

LABEL_44:
  v23 = [[_SGNSStringEncodingEnumerator alloc] initWithString:a1 encoding:a3 nullTerminated:a4];
LABEL_45:
  v40 = *MEMORY[0x1E69E9840];

  return v23;
}

- (uint64_t)sg_dataEnumeratorUsingEncoding:()SGNSString
{
  v5 = nullTerminationSupportedForEncoding(a3);

  return [a1 sg_dataEnumeratorUsingEncoding:a3 nullTerminated:v5];
}

- (void)sg_streamBytesUsingEncoding:()SGNSString nullTerminated:toBlock:
{
  v14 = a5;
  v8 = [a1 sg_dataEnumeratorUsingEncoding:a3 nullTerminated:a4];
  v9 = 0;
  do
  {
    v10 = objc_autoreleasePoolPush();
    v11 = [v8 nextObject];
    objc_autoreleasePoolPop(v10);

    if (!v11)
    {
      break;
    }

    v12 = objc_autoreleasePoolPush();
    v13 = v14[2](v14, [v11 bytes], objc_msgSend(v11, "length"));
    objc_autoreleasePoolPop(v12);
    v9 = v11;
  }

  while ((v13 & 1) != 0);
}

- (uint64_t)sg_streamBytesUsingEncoding:()SGNSString toBlock:
{
  v7 = nullTerminationSupportedForEncoding(a3);

  return [a1 sg_streamBytesUsingEncoding:a3 nullTerminated:v7 toBlock:a4];
}

@end