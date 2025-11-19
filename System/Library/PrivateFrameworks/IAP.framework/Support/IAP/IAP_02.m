uint64_t sub_100029628(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 80);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100029640(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 84);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100029658(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10002966C(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_100029680(uint64_t result, void *a2)
{
  if (!result)
  {
    goto LABEL_16;
  }

  v2 = result;
  if ((result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_16;
  }

  result = *(result + 40);
  if (result == a2[5])
  {
    return 1;
  }

  if (!result || (result & 7) != 0)
  {
    goto LABEL_16;
  }

  if (!(*(*result + 208))(result))
  {
    goto LABEL_12;
  }

  result = *(v2 + 40);
  if (!result || (result & 7) != 0)
  {
LABEL_16:
    __break(0x5516u);
  }

  else
  {
    if ((*(*result + 208))(result) == 1)
    {
LABEL_12:
      if ((*(*a2 + 208))(a2))
      {
        return (*(*a2 + 208))(a2) == 1;
      }

      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1000297AC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000297C4(uint64_t result, void *a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
LABEL_19:
    __break(0x5516u);
  }

  else
  {
    v8[0] = v8;
    v8[1] = v8;
    v8[2] = 0;
    v3 = *(result + 8);
    if (v3 != result)
    {
      do
      {
        if (!v3 || (v3 & 7) != 0)
        {
          goto LABEL_19;
        }

        v5 = v3[2];
        v6 = (v3 + 1);
        if (v5 == *a2)
        {
          for (i = *v6; i != v2; i = i[1])
          {
            if (!i || (i & 7) != 0)
            {
              goto LABEL_19;
            }

            if (i[2] != v5)
            {
              goto LABEL_14;
            }
          }

          i = v2;
LABEL_14:
          result = sub_1000298BC(v8, v8, v2, v3, i);
          if (i == v2)
          {
            goto LABEL_17;
          }

          v6 = (i + 1);
        }

        i = *v6;
LABEL_17:
        v3 = i;
      }

      while (i != v2);
    }

    return sub_1000187F0(v8);
  }

  return result;
}

void sub_1000298A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000187F0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000298BC(uint64_t result, uint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_33;
  }

  if (a4 == a5)
  {
    return result;
  }

  if ((a5 & 7) != 0 || !a5)
  {
    goto LABEL_33;
  }

  v5 = *a5;
  if (result != a3)
  {
    if (v5 != a4)
    {
      v7 = 0;
      v8 = a4;
      while (1)
      {
        v6 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_34;
        }

        if (!v8 || (v8 & 7) != 0)
        {
          goto LABEL_33;
        }

        v8 = v8[1];
        ++v7;
        if (v8 == v5)
        {
          goto LABEL_14;
        }
      }
    }

    v6 = 0;
LABEL_14:
    v9 = __OFADD__(v6, 1);
    v10 = v6 + 1;
    if (v9)
    {
      goto LABEL_34;
    }

    v11 = *(a3 + 16);
    v12 = v11 >= v10;
    v13 = v11 - v10;
    if (!v12)
    {
      goto LABEL_35;
    }

    *(a3 + 16) = v13;
    v14 = *(result + 16);
    v12 = __CFADD__(v14, v10);
    v15 = v14 + v10;
    if (v12)
    {
LABEL_34:
      __break(0x5500u);
LABEL_35:
      __break(0x5515u);
      return result;
    }

    *(result + 16) = v15;
  }

  if (!v5 || (v5 & 7) != 0 || (a4 & 7) != 0 || !a4 || (v16 = *a4) == 0 || (v16 & 7) != 0 || (*(v16 + 8) = v5[1], (v17 = v5[1]) == 0) || (v17 & 7) != 0 || (*v17 = v16, (a2 & 7) != 0) || !a2 || (v18 = *a2) == 0 || (v18 & 7) != 0)
  {
LABEL_33:
    __break(0x5516u);
    goto LABEL_34;
  }

  *(v18 + 8) = a4;
  *a4 = v18;
  *a2 = v5;
  v5[1] = a2;
  return result;
}

void *sub_1000299CC(void *result)
{
  if (result && (result & 7) == 0)
  {
    *result = off_100113858;
    sub_1000DDCF4(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

id sub_100029AEC(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleWithIdentifier:@"com.apple.IAP"];
  v3 = [v2 localizedStringForKey:v1 value:&stru_100119FF8 table:@"Framework"];

  return v3;
}

uint64_t sub_100029D28(uint64_t a1)
{
  qword_10012BA38 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

id sub_100029F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 56);
  if (v6 < 2)
  {
    return [ACCAuthorizationManager forceRequestAuthorizationForCertSerial:*(a1 + 32) withName:*(a1 + 40) providesPower:v6 & 1 completionHandler:*(a1 + 48)];
  }

  __break(0x550Au);
  return [a1 forceRequestAuthorizationForCertSerial:a3 withName:a4 providesPower:a5 completionHandler:a6];
}

void *sub_10002A564(void *a1)
{
  v1 = [a1 valueForProperty:MPMediaItemPropertyArtwork];
  v2 = v1;
  if (v1)
  {
    [v1 bounds];
    if (v3 < 0.00000011920929)
    {
      return 0;
    }

    [v2 bounds];
    if (v4 < 0.00000011920929)
    {
      return 0;
    }
  }

  return v2;
}

void *sub_10002A5D0(void *result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100113940;
    result[1] = a2;
  }

  return result;
}

uint64_t sub_10002A600(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10002A614(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    operator delete();
  }

  __break(0x5516u);
  return result;
}

BOOL sub_10002A638(_BOOL8 result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 8) != 0;
  }

  __break(0x5516u);
  return result;
}

void *sub_10002A658(void *result, int a2)
{
  if (result)
  {
    v2 = result;
    if ((result & 7) == 0)
    {
      v4 = objc_alloc_init(NSAutoreleasePool);
      if (a2 >= 5)
      {
        v8 = 0;
        goto LABEL_14;
      }

      result = v2[1];
      if (result && (result & 7) == 0)
      {
        v5 = (*(*result + 408))(result);
        if (v5)
        {
          v6 = [v5 valueForProperty:MPMediaItemPropertyChapterArtworkTimes];
          if (v6)
          {
            v7 = v6;
            if ([v6 count])
            {
              v8 = [v7 count];
LABEL_14:

              return v8;
            }
          }
        }

        result = v2[1];
        if (result && (result & 7) == 0)
        {
          v8 = (*(*result + 232))(result);
          goto LABEL_14;
        }
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002A770(uint64_t a1, int a2, uint64_t *a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_29;
  }

  v6 = objc_alloc_init(NSAutoreleasePool);
  if (a2 >= 5)
  {
LABEL_27:
    v19 = 0;
    goto LABEL_28;
  }

  v7 = *(a1 + 8);
  if (!v7 || (v7 & 7) != 0)
  {
LABEL_29:
    __break(0x5516u);
  }

  v8 = (*(*v7 + 408))(v7);
  if (!v8 || (v9 = [v8 valueForProperty:MPMediaItemPropertyChapterArtworkTimes]) == 0 || (v10 = v9, !objc_msgSend(v9, "count")))
  {
    v18 = *(a1 + 8);
    if (v18 && (v18 & 7) == 0)
    {
      if ((*(*v18 + 232))(v18))
      {
        v21 = 0;
        sub_10002A9A4(a3, &v21);
        goto LABEL_26;
      }

      goto LABEL_27;
    }

    goto LABEL_29;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v11)
  {
    goto LABEL_26;
  }

  v12 = v11;
  v13 = *v23;
  do
  {
    for (i = 0; i != v12; i = i + 1)
    {
      if (*v23 != v13)
      {
        objc_enumerationMutation(v10);
      }

      [*(*(&v22 + 1) + 8 * i) doubleValue];
      v16 = v15 * 1000.0;
      if (v16 <= -1.0 || v16 >= 4294967300.0)
      {
        __break(0x5505u);
        goto LABEL_29;
      }

      v21 = v16;
      sub_10002A9A4(a3, &v21);
    }

    v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v12);
LABEL_26:
  v19 = 1;
LABEL_28:

  return v19;
}

uint64_t *sub_10002A9A4(uint64_t *result, _DWORD *a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    v3 = result[1];
    if (v3 >= result[2])
    {
      result = sub_10002B20C(result, a2);
      goto LABEL_7;
    }

    result = sub_10002B1C4(result, a2);
    if (v3 < 0xFFFFFFFFFFFFFFFCLL)
    {
      result = (v3 + 4);
LABEL_7:
      v2[1] = result;
      return result;
    }
  }

  __break(0x5513u);
  return result;
}

uint64_t sub_10002AA04(uint64_t result, int a2, unsigned int a3)
{
  if (!result)
  {
    goto LABEL_46;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_46;
  }

  result = objc_alloc_init(NSAutoreleasePool);
  if (a2 < 0 || a2 >= 5)
  {
LABEL_43:
    operator new();
  }

  if (~&unk_1000EB2FC < 8 * a2 || (v6 = (&unk_1000EB2FC + 8 * a2), v6 == -4))
  {
LABEL_45:
    __break(0x5513u);
LABEL_46:
    __break(0x5516u);
    goto LABEL_47;
  }

  result = *(v3 + 8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_46;
  }

  v7 = *v6;
  v8 = v6[1];
  v9 = sub_100054394(result, *v6, v6[1], a3);
  if (!v9)
  {
    goto LABEL_43;
  }

  v10 = v9;
  v11 = v9;
  [v10 scale];
  if (v12 != 1.0)
  {
    v10 = sub_10002ADD4(v10, v7, v8);
  }

  result = [v10 CGImage];
  if (!is_mul_ok(4 * v7, v8))
  {
    goto LABEL_47;
  }

  v13 = result;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if (!DeviceRGB)
  {
    syslog(4, "Error allocating color space\n");
    goto LABEL_43;
  }

  v15 = DeviceRGB;
  v16 = malloc_type_malloc(4 * v7 * v8, 0x84B4A43CuLL);
  if (!v16)
  {
    syslog(4, "Memory not allocated!");
LABEL_42:
    CGColorSpaceRelease(v15);
    goto LABEL_43;
  }

  v17 = v16;
  v18 = CGBitmapContextCreate(v16, v7, v8, 8uLL, 4 * v7, v15, 2u);
  if (!v18)
  {
    free(v17);
    syslog(4, "Context not created!");
    goto LABEL_42;
  }

  v19 = v18;
  CGColorSpaceRelease(v15);
  v34.origin.x = 0.0;
  v34.origin.y = 0.0;
  v34.size.width = v7;
  v34.size.height = v8;
  CGContextDrawImage(v19, v34, v13);
  result = CGBitmapContextGetData(v19);
  if (!result)
  {
    CGContextRelease(v19);
    goto LABEL_43;
  }

  v20 = v7 * v8;
  if ((v20 & 0xFFFFFFFF00000000) == 0 && (v20 & 0x80000000) == 0)
  {
    v21 = result;
    result = malloc_type_malloc((2 * v20), 0x100004077774924uLL);
    v22 = result;
    if (!v20)
    {
LABEL_38:
      operator new();
    }

    v23 = 0;
    v24 = ~v21;
    v25 = ~result;
    v26 = 3;
    while ((v23 & 0x80000000) == 0)
    {
      v27 = v26 - 2;
      if (v24 < v27)
      {
        goto LABEL_45;
      }

      v28 = v26 - 1;
      if (v24 < v28 || v24 < v26)
      {
        goto LABEL_45;
      }

      v29 = *(v21 + v27);
      v30 = *(v21 + v28);
      result = (8 * v30 + 24) & 0xFE0;
      if (v29 >= 0xF9)
      {
        v31 = 63488;
      }

      else
      {
        v31 = ((v29 << 8) + 1792) & 0x1F800;
      }

      if (v30 >= 0xFD)
      {
        v32 = 2016;
      }

      else
      {
        v32 = (8 * v30 + 24) & 0xFE0;
      }

      if (HIWORD(v31))
      {
        goto LABEL_48;
      }

      v33 = (*(v21 + v26) + 7) >> 3;
      if (v33 >= 0x1F)
      {
        LOBYTE(v33) = 31;
      }

      if (v23 > v25)
      {
        goto LABEL_45;
      }

      if (!v22)
      {
        goto LABEL_46;
      }

      *(v22 + v23) = v33 | v32;
      if (v23 >= v25)
      {
        goto LABEL_45;
      }

      *(v22 + v23 + 1) = HIBYTE(v32) | BYTE1(v31);
      v23 += 2;
      v26 += 4;
      if (v23 >= (2 * v20))
      {
        goto LABEL_38;
      }
    }
  }

LABEL_47:
  __break(0x550Cu);
LABEL_48:
  __break(0x5507u);
  return result;
}

uint64_t sub_10002ADD4(void *a1, CGFloat a2, CGFloat a3)
{
  NSLog(@"%s:%s-%d weak link of UIKit here to scale image size\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/Images.mm", "scaleToSize", 311);
  v6 = sub_1000DF2DC("UIGraphicsBeginImageContext", 0);
  v6(a2, a3);
  v7 = sub_1000DF2DC("UIGraphicsGetCurrentContext", 0);
  v8 = v7();
  CGContextTranslateCTM(v8, 0.0, a3);
  CGContextScaleCTM(v8, 1.0, -1.0);
  v9 = [a1 CGImage];
  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v14.size.width = a2;
  v14.size.height = a3;
  CGContextDrawImage(v8, v14, v9);
  v10 = sub_1000DF2DC("UIGraphicsGetImageFromCurrentImageContext", 0);
  v11 = v10();
  v12 = sub_1000DF2DC("UIGraphicsEndImageContext", 0);
  v12();
  return v11;
}

void *sub_10002AED8(void *result, uint64_t a2, unsigned int a3, unsigned int a4, double a5, double a6, double a7, double a8, uint64_t a9, int a10)
{
  if (result)
  {
    v10 = result;
    if ((result & 7) == 0)
    {
      *result = off_100113980;
      result[1] = 0;
      *(result + 4) = a3;
      *(result + 5) = a4;
      *(result + 7) = a10;
      *(result + 4) = a5;
      *(result + 5) = a6;
      *(result + 6) = a7;
      *(result + 7) = a8;
      if (!a2)
      {
        return v10;
      }

      result = [NSData alloc];
      v14 = a3 * a4;
      if ((v14 & 0xFFFFFFFF00000000) == 0 && (v14 & 0x80000000) == 0)
      {
        v10[1] = [result initWithBytes:a2 length:(2 * v14)];
        return v10;
      }

      __break(0x550Cu);
    }
  }

  __break(0x5516u);
  return result;
}

void *sub_10002AF80(void *result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100113980;
    v2 = result[1];
    if (v2)
    {

      v1[1] = 0;
    }

    return v1;
  }

  return result;
}

void *sub_10002AFE0(void *result)
{
  if (result && (result & 7) == 0)
  {
    return sub_10002AF80(result);
  }

  __break(0x5516u);
  return result;
}

void *sub_10002AFF4(void *result)
{
  if (result && (result & 7) == 0)
  {
    sub_10002AF80(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002B074(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 28);
  }

  __break(0x5516u);
  return result;
}

int32x2_t *sub_10002B08C@<X0>(int32x2_t *result@<X0>, uint64_t a2@<X8>)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *(a2 + 20) = 0xAAAAAAAAAAAAAAAALL;
    *(a2 + 12) = 0xAAAAAAAAAAAAAAAALL;
    v2 = result[2];
    *a2 = vrev64_s32(v2);
    if ((v2.i32[0] & 0x80000000) == 0)
    {
      *(a2 + 8) = 2 * v2.i32[0];
      *(a2 + 12) = 0;
      *(a2 + 16) = 0;
      *(a2 + 28) = 0;
      return result;
    }
  }

  __break(0x550Cu);
  return result;
}

double *sub_10002B0D8@<X0>(double *result@<X0>, _DWORD *a2@<X8>)
{
  if (result && (result & 7) == 0)
  {
    v2 = result[4];
    v3 = v2 > -1.0 && v2 < 4294967300.0;
    if (v3 && ((v4 = result[5], v4 > -1.0) ? (v5 = v4 < 4294967300.0) : (v5 = 0), v5 && ((v6 = v2 + result[7], v6 > -1.0) ? (v7 = v6 < 4294967300.0) : (v7 = 0), v7 && ((v8 = v4 + result[6], v8 > -1.0) ? (v9 = v8 < 4294967300.0) : (v9 = 0), v9))))
    {
      if (a2)
      {
        *a2 = v2;
        a2[1] = v4;
        a2[2] = v6;
        a2[3] = v8;
        return result;
      }
    }

    else
    {
      __break(0x5505u);
    }
  }

  __break(0x5516u);
  return result;
}

void *sub_10002B170(void *result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    result = result[1];
    if (result)
    {
      return [result bytes];
    }
  }

  return result;
}

void *sub_10002B190(void *result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    result = result[1];
    if (result)
    {
      return [result length];
    }
  }

  return result;
}

uint64_t sub_10002B1C4(uint64_t result, _DWORD *a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_8;
  }

  v2 = *(result + 8);
  if (v2 >= 0xFFFFFFFFFFFFFFFCLL)
  {
LABEL_9:
    __break(0x5513u);
    return result;
  }

  if (!v2 || (v2 & 3) != 0)
  {
LABEL_8:
    __break(0x5516u);
    goto LABEL_9;
  }

  *v2 = *a2;
  *(result + 8) = v2 + 4;
  return result;
}

void *sub_10002B20C(uint64_t *a1, _DWORD *a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_14;
  }

  v14 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12 = v3;
  v13 = v3;
  v4 = (a1[1] - *a1) >> 2;
  v5 = v4 + 1;
  if (v4 == -1)
  {
LABEL_15:
    __break(0x5500u);
LABEL_16:
    sub_1000E1E08();
  }

  if (v5 >> 62)
  {
    goto LABEL_16;
  }

  v7 = a1[2] - *a1;
  if (v7 >> 1 > v5)
  {
    v5 = v7 >> 1;
  }

  v8 = v7 >= 0x7FFFFFFFFFFFFFFCLL ? 0x3FFFFFFFFFFFFFFFLL : v5;
  result = sub_10002B3EC(&v12, v8, v4, a1);
  v10 = v13;
  if (!v13 || (v13 & 3) != 0)
  {
LABEL_14:
    __break(0x5516u);
    goto LABEL_15;
  }

  *v13 = *a2;
  if (v10 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    __break(0x5513u);
  }

  else
  {
    *&v13 = v10 + 4;
    sub_10002B310(a1, &v12);
    v11 = a1[1];
    sub_10002B4E8(&v12);
    return v11;
  }

  return result;
}

uint64_t *sub_10002B310(uint64_t *result, void *a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
LABEL_8:
    __break(0x5516u);
LABEL_9:
    __break(0x5513u);
    goto LABEL_10;
  }

  v4 = a2[1];
  v5 = *result;
  v6 = result[1] - *result;
  v7 = -4 * (v6 >> 2);
  v8 = v7 <= ~v4;
  v9 = v7 < 0;
  if (((v6 >> 2) + 0x1FFFFFFFFFFFFFFFLL) >> 62 || ((v9 ^ v8) & 1) == 0)
  {
    goto LABEL_9;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    if ((v5 & 3) == 0)
    {
      v10 = (v4 - 4 * (v6 >> 2));
      result = memcpy(v10, v5, v6);
      a2[1] = v10;
      v11 = *v2;
      v2[1] = *v2;
      *v2 = a2[1];
      a2[1] = v11;
      v12 = v2[1];
      v2[1] = a2[2];
      a2[2] = v12;
      v13 = v2[2];
      v2[2] = a2[3];
      a2[3] = v13;
      *a2 = a2[1];
      return result;
    }

    goto LABEL_8;
  }

LABEL_10:
  __break(0x550Cu);
  return result;
}

void *sub_10002B3EC(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = result;
    if ((result & 7) == 0)
    {
      result[3] = 0;
      result[4] = a4;
      if (a2)
      {
        sub_10002B4A0(a4, a2);
      }

      result = 0;
      *v4 = 0;
      if (!((a3 + 0x2000000000000000) >> 62))
      {
        v4[1] = 4 * a3;
        v4[2] = 4 * a3;
        v4[3] = 0;
        return v4;
      }

      __break(0x5513u);
    }
  }

  __break(0x5516u);
  return result;
}

void sub_10002B4A0(uint64_t a1, unint64_t a2)
{
  if (a1)
  {
    if (!(a2 >> 62))
    {

      operator new();
    }
  }

  else
  {
    __break(0x5516u);
  }

  sub_1000E1DF4();
}

void *sub_10002B4E8(void *result)
{
  if (!result)
  {
    goto LABEL_8;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_8;
  }

  sub_10002B548(result);
  result = *v1;
  if (!*v1)
  {
    return v1;
  }

  if (v1[4])
  {
    if ((v1[3] - result) >= 0)
    {
      operator delete(result);
      return v1;
    }
  }

  else
  {
LABEL_8:
    __break(0x5516u);
  }

  __break(0x550Cu);
  return result;
}

void *sub_10002B548(void *result)
{
  if (!result || (result & 7) != 0)
  {
LABEL_9:
    __break(0x5516u);
    return result;
  }

  v1 = result[1];
  v2 = result[2];
  if (v2 != v1)
  {
    if (result[4])
    {
      while (v2 > 3)
      {
        v2 -= 4;
        result[2] = v2;
        if (v2 == v1)
        {
          return result;
        }
      }

      __break(0x5513u);
    }

    goto LABEL_9;
  }

  return result;
}

uint64_t sub_10002BB1C()
{
  if (qword_10012BA60 != -1)
  {
    sub_1000E1E9C();
  }

  result = qword_10012BA58;
  if ((qword_10012BA58 & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10002BBD4(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    sub_10001C4A0(result);
    *v1 = off_100113A58;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v1, sub_10002BCD8, @"com.apple.iapd.LoggingPreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    (*(*v1 + 496))(v1);
    *(v1 + 184) = [[LogFileWriter alloc] initFor:@"iapd"];
    *(v1 + 104) = objc_alloc_init(NSMutableArray);
    pthread_mutex_init((v1 + 120), 0);
    return v1;
  }

  return result;
}

void sub_10002BCD8(uint64_t a1, uint64_t a2)
{
  NSLog(@"Logging preferences changed! (InternalTesting)");
  if (!a2 || (a2 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v3 = *(*a2 + 496);

    v3(a2);
  }
}

uint64_t sub_10002BD50(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100112210;
    pthread_mutex_destroy((result + 32));
    sub_1000089F8(v1 + 8);
    return v1;
  }

  return result;
}

uint64_t sub_10002BDC4(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100113A58;

    return sub_10002BD50(v1);
  }

  return result;
}

uint64_t sub_10002BE4C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_10002BDC4(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002BE60(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_10002BDC4(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002BEE0(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return reboot(0);
  }

  __break(0x5516u);
  return result;
}

_BYTE *sub_10002BEF8(_BYTE *result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    NSLog(@"Loading logging preferences... (InternalTesting)");
    v1[112] = CFPreferencesGetAppBooleanValue(@"LogIapPackets", @"com.apple.iapd", 0);
    v1[113] = CFPreferencesGetAppBooleanValue(@"PrintIapPackets", @"com.apple.iapd", 0);
    v1[115] = CFPreferencesGetAppBooleanValue(@"LogIapDebug", @"com.apple.iapd", 0);
    result = CFPreferencesGetAppBooleanValue(@"PrintIapDebug", @"com.apple.iapd", 0);
    v1[114] = result;
  }

  return result;
}

BOOL sub_10002BF9C(_BOOL8 result)
{
  if (result && !(result & 7))
  {
    return CFPreferencesGetAppBooleanValue(@"EnableA13Support", @"com.apple.iapd", 0) != 0;
  }

  __break(0x5516u);
  return result;
}

id sub_10002BFE0(id result, void *a2)
{
  if (result && (result & 7) == 0)
  {
    v3 = objc_alloc_init(NSMutableString);
    v4 = [a2 bytes];
    v5 = [a2 length];
    result = [v3 appendFormat:@"<"];
    if (!v5)
    {
LABEL_7:
      [v3 appendFormat:@">"];

      return v3;
    }

    while (v4)
    {
      result = [v3 appendFormat:@"%02x ", *v4];
      if (v4 == -1)
      {
        goto LABEL_11;
      }

      ++v4;
      if (!--v5)
      {
        goto LABEL_7;
      }
    }
  }

  __break(0x5516u);
LABEL_11:
  __break(0x5513u);
  return result;
}

void sub_10002C0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_43;
  }

  v46 = objc_alloc_init(NSAutoreleasePool);
  v13 = &xpc_connection_set_event_handler_ptr;
  if (!*(a1 + 113) && !sub_1000DDE68(0) && (dword_10012C608 & 2) == 0)
  {
    goto LABEL_23;
  }

  if (!qword_10012BA68)
  {
    qword_10012BA68 = objc_alloc_init(NSDate);
  }

  v14 = +[NSDate date];
  v15 = [NSData dataWithBytes:a7 length:a8];
  [(NSDate *)v14 timeIntervalSinceDate:qword_10012BA68];
  v17 = v16;
  if (!a6)
  {
    v18 = "Unknown";
    v13 = &xpc_connection_set_event_handler_ptr;
    goto LABEL_12;
  }

  v13 = &xpc_connection_set_event_handler_ptr;
  if ((a6 & 7) != 0)
  {
LABEL_43:
    __break(0x5516u);
    goto LABEL_44;
  }

  v18 = (*(*a6 + 200))(a6);
LABEL_12:
  if ((a2 + 32) > 0x3F || (a5 + 4) >= 8)
  {
    goto LABEL_44;
  }

  v19 = v17;
  v20 = v19;
  v21 = "Acc";
  if (!a5)
  {
    v21 = "iPod";
  }

  v22 = [NSString stringWithFormat:@"LOG; %.6f; transport_ptr %hhx; %s; %s; lingo=0x%02x; cmdID=0x%04x; transID=0x%08x; payload(%d)=", *&v20, a6, v18, v21, a2, a3, a4, a8];
  if (*(a1 + 113) || sub_1000DDE68(0))
  {
    v23 = sub_10002BFE0(a1, v15);
    NSLog(@"%@%@", v22, v23);
  }

  if (*(a1 + 113))
  {
    [*(a1 + 184) log:v22 data:v15];
  }

  if ((dword_10012C608 & 2) != 0)
  {
    memset(v51, 170, 24);
    v24 = sub_100025D20(v51, [(NSString *)v22 UTF8String]);
    sub_100021A5C(v24, 2u);
    if (SHIBYTE(v51[2]) < 0)
    {
      operator delete(v51[0]);
      if (!a6)
      {
        goto LABEL_40;
      }

      goto LABEL_24;
    }
  }

LABEL_23:
  if (!a6)
  {
LABEL_40:

    return;
  }

LABEL_24:
  if (!*(a1 + 112))
  {
    goto LABEL_40;
  }

  if (!qword_10012BA68)
  {
    qword_10012BA68 = objc_alloc_init(v13[170]);
  }

  if ((a5 + 4) > 7)
  {
    goto LABEL_44;
  }

  if (a5)
  {
    v25 = -1;
  }

  else
  {
    v25 = 0;
  }

  if (a5 == 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = v25;
  }

  if ((a6 & 7) != 0)
  {
    goto LABEL_43;
  }

  v27 = (*(*a6 + 208))(a6);
  v28 = [v13[170] date];
  if ((a2 + 32) <= 0x3F)
  {
    v29 = v28;
    if (v27 < 3)
    {
      v30 = v27 + 1;
    }

    else
    {
      v30 = 0;
    }

    v45 = [NSNumber numberWithUnsignedInt:a2];
    v44 = IAPAppPacketLingoKey;
    v43 = [NSNumber numberWithUnsignedInt:a3];
    v42 = IAPAppPacketCommandIDKey;
    v48 = [NSNumber numberWithUnsignedInt:a4];
    v41 = IAPAppPacketTransactionIDKey;
    v31 = [NSNumber numberWithUnsignedInt:v26];
    v32 = IAPAppPacketDirectionKey;
    v33 = [NSNumber numberWithUnsignedInt:v30];
    v34 = IAPAppPacketTransportKey;
    v35 = IAPAppPacketTimestampKey;
    [v29 timeIntervalSinceDate:qword_10012BA68];
    *&v36 = v36;
    v37 = [NSNumber numberWithFloat:v36];
    v38 = IAPAppPacketTimeInSecondsKey;
    v39 = [NSData dataWithBytes:a7 length:a8];
    v40 = [NSDictionary dictionaryWithObjectsAndKeys:v45, v44, v43, v42, v48, v41, v31, v32, v33, v34, v29, v35, v37, v38, v39, IAPAppPacketPayloadKey, 0];
    pthread_mutex_lock((a1 + 120));
    [*(a1 + 104) addObject:v40];
    pthread_mutex_unlock((a1 + 120));
    goto LABEL_40;
  }

LABEL_44:
  __break(0x550Au);
}

void sub_10002C510(_Unwind_Exception *exception_object)
{
  if (*(v1 - 105) < 0)
  {
    operator delete(*(v1 - 128));
  }

  _Unwind_Resume(exception_object);
}

void sub_10002C52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_36;
  }

  v8 = objc_alloc_init(NSAutoreleasePool);
  if (!*(a1 + 113) && !*(a1 + 114) && !*(a1 + 115) && !sub_1000DDE68(0) && (dword_10012C608 & 1) == 0)
  {
    goto LABEL_25;
  }

  if (!qword_10012BA68)
  {
    qword_10012BA68 = objc_alloc_init(NSDate);
  }

  v9 = +[NSDate date];
  [(NSDate *)v9 timeIntervalSinceDate:qword_10012BA68];
  v11 = v10;
  if (a4)
  {
    if ((a4 & 7) != 0)
    {
LABEL_36:
      __break(0x5516u);
      goto LABEL_37;
    }

    v12 = (*(*a4 + 200))(a4);
    if ((a2 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v12 = "Unknown";
    if ((a2 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }
  }

  v13 = v11;
  v14 = [NSString stringWithFormat:@"LOG; %.6f; %s; Event; class=0x%02x; type=0x%02lx", v13, v12, a2, a3];
  if (*(a1 + 113) || *(a1 + 114) || *(a1 + 115) || sub_1000DDE68(0))
  {
    NSLog(@"%@", v14);
  }

  if (*(a1 + 113) || *(a1 + 114))
  {
    [*(a1 + 184) log:v14];
  }

  if ((dword_10012C608 & 1) != 0 && (memset(__p, 170, sizeof(__p)), sub_100025D20(__p, [(NSString *)v14 UTF8String]), sub_100021A5C(__p, 1u), SHIBYTE(__p[2]) < 0))
  {
    operator delete(__p[0]);
    if (!a4)
    {
      goto LABEL_33;
    }
  }

  else
  {
LABEL_25:
    if (!a4)
    {
LABEL_33:

      return;
    }
  }

  if (!*(a1 + 112))
  {
    goto LABEL_33;
  }

  if ((a4 & 7) != 0)
  {
    goto LABEL_36;
  }

  v15 = (*(*a4 + 208))(a4);
  v16 = +[NSDate date];
  if ((a2 & 0x80000000) == 0)
  {
    v17 = v16;
    if (v15 < 3)
    {
      v18 = v15 + 1;
    }

    else
    {
      v18 = 0;
    }

    v19 = [NSNumber numberWithUnsignedInt:a2];
    v20 = IAPAppPacketEventClassKey;
    v21 = [NSNumber numberWithUnsignedLong:a3];
    v22 = v8;
    v23 = IAPAppPacketEventTypeKey;
    v24 = [NSNumber numberWithUnsignedInt:v18];
    v25 = IAPAppPacketTransportKey;
    [(NSDate *)v17 timeIntervalSinceDate:qword_10012BA68];
    *&v26 = v26;
    v27 = [NSNumber numberWithFloat:v26];
    v29 = v23;
    v8 = v22;
    v28 = [NSDictionary dictionaryWithObjectsAndKeys:v19, v20, v21, v29, v24, v25, v27, IAPAppPacketTimeInSecondsKey, v17, IAPAppPacketTimestampKey, 0];
    pthread_mutex_lock((a1 + 120));
    [*(a1 + 104) addObject:v28];
    pthread_mutex_unlock((a1 + 120));
    goto LABEL_33;
  }

LABEL_37:
  __break(0x550Au);
}

void sub_10002C868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10002C884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_25;
  }

  if (!*(a1 + 114) && !*(a1 + 115) && !sub_1000DDE68(0) && (dword_10012C608 & 1) == 0)
  {
    return;
  }

  v8 = objc_alloc_init(NSAutoreleasePool);
  if (!qword_10012BA68)
  {
    qword_10012BA68 = objc_alloc_init(NSDate);
  }

  v9 = +[NSDate date];
  [(NSDate *)v9 timeIntervalSinceDate:qword_10012BA68];
  v11 = v10;
  if (a4)
  {
    if ((a4 & 7) != 0)
    {
LABEL_25:
      __break(0x5516u);
      return;
    }

    v12 = (*(*a4 + 200))(a4);
    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    __break(0x550Au);
    goto LABEL_25;
  }

  v12 = "Unknown";
  if ((a2 & 0x80000000) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  v13 = v11;
  v14 = [NSString stringWithFormat:@"LOG; %.6f; %s; Event2; class=0x%02x; type=0x%02lx", v13, v12, a2, a3];
  if (*(a1 + 114) || *(a1 + 115) || sub_1000DDE68(0))
  {
    NSLog(@"%@", v14);
  }

  if (*(a1 + 114))
  {
    [*(a1 + 184) log:v14];
  }

  if ((dword_10012C608 & 8) != 0)
  {
    memset(__p, 170, sizeof(__p));
    sub_100025D20(__p, [(NSString *)v14 UTF8String]);
    sub_100021A5C(__p, 1u);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_10002CA58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10002CA74(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_26;
  }

  memset(__b, 170, sizeof(__b));
  __p[3] = &a9;
  vsnprintf(__b, 0x400uLL, a3, &a9);
  v12 = objc_alloc_init(NSAutoreleasePool);
  if (!*(a1 + 113) && !*(a1 + 114) && !*(a1 + 115) && !sub_1000DDE68(0) && (dword_10012C608 & 8) == 0)
  {
    goto LABEL_25;
  }

  if (!qword_10012BA68)
  {
    qword_10012BA68 = objc_alloc_init(NSDate);
  }

  v13 = +[NSDate date];
  [(NSDate *)v13 timeIntervalSinceDate:qword_10012BA68];
  v15 = v14;
  if (a2)
  {
    if ((a2 & 7) == 0)
    {
      v16 = (*(*a2 + 200))(a2);
      goto LABEL_14;
    }

LABEL_26:
    __break(0x5516u);
  }

  v16 = "Unknown";
LABEL_14:
  v17 = v15;
  v18 = [NSString stringWithFormat:@"LOG; %.6f; %s; Comment; %s", v17, v16, __b];
  if (*(a1 + 113) || *(a1 + 114) || *(a1 + 115) || sub_1000DDE68(0))
  {
    NSLog(@"%@", v18);
  }

  if (*(a1 + 113) || *(a1 + 114))
  {
    [*(a1 + 184) log:v18];
  }

  if ((dword_10012C608 & 8) != 0)
  {
    memset(__p, 170, 24);
    sub_100025D20(__p, [(NSString *)v18 UTF8String]);
    sub_100021A5C(__p, 8u);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_25:
}

void sub_10002CCAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10002CCD0(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_24;
  }

  if (!*(a1 + 114) && !*(a1 + 115) && !sub_1000DDE68(0) && (dword_10012C608 & 8) == 0)
  {
    return;
  }

  memset(__b, 170, sizeof(__b));
  __p[3] = &a9;
  vsnprintf(__b, 0x400uLL, a3, &a9);
  v12 = objc_alloc_init(NSAutoreleasePool);
  if (!qword_10012BA68)
  {
    qword_10012BA68 = objc_alloc_init(NSDate);
  }

  v13 = +[NSDate date];
  [(NSDate *)v13 timeIntervalSinceDate:qword_10012BA68];
  v15 = v14;
  if (a2)
  {
    if ((a2 & 7) == 0)
    {
      v16 = (*(*a2 + 200))(a2);
      goto LABEL_13;
    }

LABEL_24:
    __break(0x5516u);
  }

  v16 = "Unknown";
LABEL_13:
  v17 = v15;
  v18 = [NSString stringWithFormat:@"LOG; %.6f; %s; Comment2; %s", v17, v16, __b];
  if (*(a1 + 114) || *(a1 + 115) || sub_1000DDE68(0))
  {
    NSLog(@"%@", v18);
  }

  if (*(a1 + 114))
  {
    [*(a1 + 184) log:v18];
  }

  if ((dword_10012C608 & 8) != 0)
  {
    memset(__p, 170, 24);
    sub_100025D20(__p, [(NSString *)v18 UTF8String]);
    sub_100021A5C(__p, 8u);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_10002CEF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10002CF14(uint64_t *result, uint64_t *a2)
{
  if (result && (result & 7) == 0)
  {
    return sub_100021B44(a2, 8u);
  }

  __break(0x5516u);
  return result;
}

uint64_t *sub_10002CF30(uint64_t *result, uint64_t *a2)
{
  if (result && (result & 7) == 0)
  {
    return sub_100021CC4(a2, 8u);
  }

  __break(0x5516u);
  return result;
}

uint64_t *sub_10002CF4C(uint64_t *result)
{
  if (result && (result & 7) == 0)
  {
    return sub_100021E40(8);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002CF64(uint64_t result, int a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else if ((a2 + 32) < 0x40)
  {
    sub_1000B748C();
  }

  __break(0x550Au);
  return result;
}

NSData *sub_10002D018(NSData *result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    v3 = 0;
    pthread_mutex_lock(&result[15]);
    v2 = [NSPropertyListSerialization dataWithPropertyList:v1[13].super.isa format:200 options:0 error:&v3];
    if (!v2)
    {
      NSLog(@"ERROR - can't create plist for iap data: %@", [v3 description]);
    }

    pthread_mutex_unlock(&v1[15]);
    return v2;
  }

  return result;
}

void sub_10002D0A4(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else if (*(a1 + 112))
  {
    pthread_mutex_lock((a1 + 120));
    if (qword_10012BA68)
    {

      qword_10012BA68 = objc_alloc_init(NSDate);
    }

    [*(a1 + 104) removeAllObjects];

    pthread_mutex_unlock((a1 + 120));
  }

  else
  {
    NSLog(@"ERROR - can't clear logged iap packets because the feature is disabled");
  }
}

void sub_10002D138(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
LABEL_20:
    __break(0x5505u);
    return;
  }

  if (!*(a1 + 112))
  {
    NSLog(@"ERROR - can't save logged iap packets because the feature is disabled");
    return;
  }

  v2 = objc_alloc_init(NSAutoreleasePool);
  pthread_mutex_lock((a1 + 120));
  v3 = [NSPropertyListSerialization dataWithPropertyList:*(a1 + 104) format:200 options:0 error:0];
  pthread_mutex_unlock((a1 + 120));
  if (v3)
  {
    v9 = 0;
    v4 = [NSString stringWithUTF8String:qword_10012C670];
    if ((CPFileBuildDirectoriesToPath() & 1) == 0)
    {
      NSLog(@"ERROR - can't create directory to save log file %@", v4);
    }

    [+[NSDate date](NSDate timeIntervalSince1970];
    v6 = v5 * 1000.0;
    if (v6 <= -9.22337204e18 || v6 >= 9.22337204e18)
    {
      goto LABEL_20;
    }

    v8 = [(NSString *)v4 stringByAppendingPathComponent:[NSString stringWithFormat:@"iap_log_%lld.plist", v6]];
    if ([(NSData *)v3 writeToURL:[NSURL fileURLWithPath:?], 0, &v9])
    {
      NSLog(@"iap packet log file saved to: %@", v8);
      sub_10002D2EC(a1, v8);
    }

    else
    {
      NSLog(@"ERROR - can't save iap log file to %@:%@", v8, v9);
    }
  }

  else
  {
    NSLog(@"ERROR - could not serialize iap logged packets");
  }
}

void sub_10002D2EC(uint64_t a1, void *a2)
{
  if (!a1)
  {
    goto LABEL_11;
  }

  if ((a1 & 7) != 0)
  {
    goto LABEL_11;
  }

  HIDWORD(v11) = -1431655766;
  keys[0] = kCFUserNotificationAlertHeaderKey;
  keys[1] = kCFUserNotificationDefaultButtonTitleKey;
  keys[2] = kCFUserNotificationAlertTopMostKey;
  keys[3] = @"DismissOnLock";
  cf = &stru_100119FF8;
  v14 = kCFBooleanTrue;
  v15 = kCFBooleanTrue;
  values = a2;
  v3 = sub_10002DDA4();
  if (!v3 || (v3 & 7) != 0)
  {
LABEL_11:
    __break(0x5516u);
LABEL_12:
    __break(0x5513u);
  }

  v4 = sub_10002E314(v3, @"DISMISS_STRING");
  if (&v11 == -16)
  {
    goto LABEL_12;
  }

  cf = v4;
  v5 = CFDictionaryCreate(kCFAllocatorDefault, keys, &values, 4, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v6 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 3uLL, &v11 + 1, v5);
  *(a1 + 96) = v6;
  RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v6, nullsub_8, 0);
  if (RunLoopSource)
  {
    v8 = RunLoopSource;
    Main = CFRunLoopGetMain();
    CFRunLoopAddSource(Main, v8, kCFRunLoopCommonModes);
    CFRelease(v8);
  }

  else
  {
    v10 = *(a1 + 96);
    if (v10)
    {
      CFRelease(v10);
      *(a1 + 96) = 0;
    }
  }

  CFRelease(v5);
  CFRelease(values);
  CFRelease(cf);
}

uint64_t sub_10002D4B0(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v3 = sub_100021230(a2);
    if (!v3)
    {
      operator new();
    }

    NSLog(@"%s:%s:%d ERROR: Already registered sessionID=0x%x pDbgCmd=%hhx", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/InternalTesting.mm", "DBGRegisterDebugSession", 545, a2, v3);
    return 1;
  }

  return result;
}

void sub_10002D594(uint64_t a1, uint64_t a2)
{
  if (a1 && (a1 & 7) == 0)
  {
    v3 = sub_100021230(a2);
    if (!v3)
    {
      NSLog(@"%s:%s:%d ERROR: Invalid sessionID=0x%x", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/InternalTesting.mm", "DBGUnregisterDebugSession", 561, a2);
      return;
    }

    v4 = v3;
    NSLog(@"%s:%d sessionID=0x%x pDbgCmd=%hhx", "DBGUnregisterDebugSession", 556, a2, v3);
    if ((v4 & 7) == 0)
    {
      (*(*v4 + 8))(v4);
      return;
    }
  }

  __break(0x5516u);
}

void sub_10002D65C(uint64_t a1, uint64_t a2, std::string::value_type *a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_9;
  }

  v5 = sub_100021230(a2);
  if (!v5)
  {
    NSLog(@"%s:%s:%d ERROR: Invalid sessionID=0x%x", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/InternalTesting.mm", "DBGHandleCommand", 578, a2);
    return;
  }

  if ((v5 & 7) != 0)
  {
LABEL_9:
    __break(0x5516u);
  }

  else
  {

    sub_100023C40(v5, a3);
  }
}

uint64_t sub_10002D6FC(uint64_t result, uint64_t a2, _DWORD *a3, BOOL *a4, char *a5, size_t a6)
{
  if (result && (result & 7) == 0)
  {
    if (!a6)
    {
      NSLog(@"%s:%s:%d sessionID=0x%x ERROR: strSize=0", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/InternalTesting.mm", "DBGGetResponse", 605, a2);
      return 1;
    }

    result = sub_100021230(a2);
    if (a4)
    {
      *a4 = 0;
      if (a5)
      {
        *a5 = 0;
        if (!result)
        {
          NSLog(@"%s:%s:%d ERROR: Invalid sessionID=0x%x", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/InternalTesting.mm", "DBGGetResponse", 600, a2);
          return 1;
        }

        if ((result & 7) == 0)
        {
          sub_100021640(result, a3, a4, a5, a6);
          return 1;
        }
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002D7E8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result && (result & 7) == 0)
  {
    result = sub_100021230(a2);
    if (!result)
    {
      NSLog(@"%s:%s:%d ERROR: Invalid sessionID=0x%x", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/InternalTesting.mm", "DBGSendResponse", 621, a2);
      return 1;
    }

    if ((result & 7) == 0)
    {
      sub_100021848(result, a3, 1u);
      return 1;
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002D884(uint64_t result, uint64_t a2, uint64_t *a3, unsigned int a4)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_12;
  }

  if (a2)
  {
    result = sub_100021230(a2);
    if (!result)
    {
      NSLog(@"%s:%s:%d ERROR: Invalid sessionID=0x%x", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/InternalTesting.mm", "DBGSendNotification", 639, a2);
      return 1;
    }

    if ((result & 7) == 0)
    {
      if (a4 < 0x10)
      {
        sub_100021A28(result, a3, a4);
        return 1;
      }

      goto LABEL_13;
    }

LABEL_12:
    __break(0x5516u);
    goto LABEL_13;
  }

  if (a4 <= 0xF)
  {
    sub_100021A5C(a3, a4);
    return 1;
  }

LABEL_13:
  __break(0x550Au);
  return result;
}

BOOL sub_10002D950(_BOOL8 result, const char *a2)
{
  if (!result || result & 7)
  {
    __break(0x5516u);
  }

  else
  {
    v3 = objc_alloc_init(NSAutoreleasePool);
    v4 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
    keyExistsAndHasValidFormat = -86;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(v4, @"com.apple.iapd", &keyExistsAndHasValidFormat);
    if (v4)
    {
      CFRelease(v4);
    }

    return AppBooleanValue != 0;
  }

  return result;
}

BOOL sub_10002D9F4(_BOOL8 result, void *a2)
{
  if (result && !(result & 7))
  {
    return sub_10002DA14(result, @"AdapterID", a2);
  }

  __break(0x5516u);
  return result;
}

BOOL sub_10002DA14(_BOOL8 result, const void *a2, void *a3)
{
  if (!result || result & 7)
  {
    __break(0x5516u);
  }

  else
  {
    v5 = objc_alloc_init(NSAutoreleasePool);
    v6 = IOPSCopyExternalPowerAdapterDetails();
    if (v6)
    {
      v7 = v6;
      if (CFDictionaryContainsKey(v6, a2))
      {
        Value = CFDictionaryGetValue(v7, a2);
        CFShow(Value);
        v9 = CFDictionaryGetValue(v7, a2);
        v10 = CFNumberGetValue(v9, kCFNumberShortType, a3) != 0;
      }

      else
      {
        v10 = 0;
      }

      CFRelease(v7);
    }

    else
    {
      v10 = 0;
    }

    return v10;
  }

  return result;
}

BOOL sub_10002DAC8(_BOOL8 result, void *a2)
{
  if (result && !(result & 7))
  {
    return sub_10002DA14(result, @"Current", a2);
  }

  __break(0x5516u);
  return result;
}

BOOL sub_10002DAE8(_BOOL8 result, void *a2)
{
  if (result && !(result & 7))
  {
    return sub_10002DA14(result, @"PMUConfiguration", a2);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002DB08(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 1;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002DB20(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 1;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002DB38(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 1;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002DB50(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10002DB64(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10002DB78(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10002DB8C(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10002DBA0(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10002DBB4(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10002DBC8(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10002DBDC(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10002DBF0(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002DC08(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002DC20(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002DC38(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10002DC4C(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10002DC60(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10002DC74(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10002DC88(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10002DC9C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002DCB4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002DCCC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002DCE4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002DCFC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002DD14(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002DD2C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002DD44(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002DD5C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002DD74(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002DD8C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002DDA4()
{
  if (qword_10012BA78 != -1)
  {
    sub_1000E1EB0();
  }

  return qword_10012BA70;
}

uint64_t sub_10002DE50(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    sub_10001C4A0(result);
    *v1 = off_100113CB0;
    v1[12] = 0;
    v1[13] = 0;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v1, sub_10002DEF0, @"com.apple.language.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    return v1;
  }

  return result;
}

void sub_10002DEF0(uint64_t a1, void *a2)
{
  if (!a2 || (a2 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v3 = a2[13];
    if (v3)
    {
      CFRelease(v3);
      a2[13] = 0;
    }

    __p = 0;
    v6 = 0;
    v7 = 0;
    (*(*a2 + 96))(a2, 0, &__p);
    v4 = HIBYTE(v7);
    if (v7 < 0)
    {
      v4 = v6;
    }

    if (v4 < 0xFFFFFFFFFFFFFFFELL)
    {
      operator new[]();
    }
  }

  __break(0x5500u);
  __break(0x5513u);
  __break(0x5515u);
}

void sub_10002E04C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10002E06C(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100112210;
    pthread_mutex_destroy((result + 32));
    sub_1000089F8(v1 + 8);
    return v1;
  }

  return result;
}

uint64_t sub_10002E0E0(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100113CB0;
    v2 = *(result + 104);
    if (v2)
    {
      CFRelease(v2);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, v1, @"com.apple.language.changed", 0);

    return sub_10002E06C(v1);
  }

  return result;
}

uint64_t sub_10002E17C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_10002E0E0(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002E190(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_10002E0E0(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

void sub_10002E210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
LABEL_15:
    __break(0x5516u);
    return;
  }

  v5 = a2 - 1376257;
  if ((a2 - 1376257) >= 0x14 || ((0xFFFBFu >> v5) & 1) == 0)
  {
    NSLog(@"unknown loc string %d", a2);
    goto LABEL_11;
  }

  v6 = sub_10002E314(a1, *(&off_100113D48 + v5));
  if (!v6 || (v7 = v6, CString = CFStringGetCString(v6, (a1 + 112), 1024, 0x8000100u), CFRelease(v7), !CString))
  {
LABEL_11:
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      *a3 = 0;
      *(a3 + 23) = 0;
      return;
    }

    if (*a3)
    {
      **a3 = 0;
      *(a3 + 8) = 0;
      return;
    }

    goto LABEL_15;
  }

  std::string::assign(a3, (a1 + 112));
}

__CFString *sub_10002E314(__CFString *result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    v3 = objc_alloc_init(NSAutoreleasePool);
    v4 = [NSBundle bundleWithIdentifier:kIAPFrameworkBundleID];
    if (a2)
    {
      if (v4)
      {
        v5 = [(NSBundle *)v4 localizedStringForKey:a2 value:&stru_100119FF8 table:@"Framework"];
        if (v5)
        {
          v6 = v5;
          if (![(__CFString *)v5 isEqualToString:a2])
          {
LABEL_9:

            return v6;
          }
        }
      }
    }

    v6 = &stru_100119FF8;
    goto LABEL_9;
  }

  __break(0x5516u);
  return result;
}

void sub_10002E3C8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_17;
  }

  if ((*(a3 + 23) & 0x80000000) == 0)
  {
    *a3 = 0;
    *(a3 + 23) = 0;
    goto LABEL_7;
  }

  if (!*a3)
  {
LABEL_17:
    __break(0x5516u);
    goto LABEL_18;
  }

  **a3 = 0;
  *(a3 + 8) = 0;
LABEL_7:
  if (a2 >= 2)
  {
LABEL_18:
    __break(0x550Au);
    return;
  }

  if (a2)
  {
    v5 = CFLocaleCopyCurrent();
    Identifier = CFLocaleGetIdentifier(v5);
    CanonicalLocaleIdentifierFromString = CFLocaleCreateCanonicalLocaleIdentifierFromString(kCFAllocatorDefault, Identifier);
    if (CFStringGetCString(CanonicalLocaleIdentifierFromString, (a1 + 1152), 16, 0x8000100u))
    {
      std::string::assign(a3, (a1 + 1152));
    }
  }

  else
  {
    BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.UIKit");
    v9 = CFBundleCopyBundleLocalizations(BundleWithIdentifier);
    v5 = CFBundleCopyLocalizationsForPreferences(v9, 0);
    ValueAtIndex = CFArrayGetValueAtIndex(v5, 0);
    CanonicalLocaleIdentifierFromString = CFLocaleCreateCanonicalLocaleIdentifierFromString(kCFAllocatorDefault, ValueAtIndex);
    if (CFStringGetCString(CanonicalLocaleIdentifierFromString, (a1 + 1136), 16, 0x8000100u))
    {
      std::string::assign(a3, (a1 + 1136));
    }

    CFRelease(v9);
  }

  CFRelease(v5);

  CFRelease(CanonicalLocaleIdentifierFromString);
}

uint64_t sub_10002E514()
{
  if (qword_10012BA88 != -1)
  {
    sub_1000E1EC4();
  }

  return qword_10012BA80;
}

uint64_t sub_10002E5DC(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100112210;
    pthread_mutex_destroy((result + 32));
    sub_1000089F8(v1 + 8);
    return v1;
  }

  return result;
}

uint64_t sub_10002E650(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_10002E5DC(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002E664(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_10002E5DC(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002E6E4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002E6FC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002E714(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002E72C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002E744(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002E75C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002E774(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002E78C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002E7A4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002E7BC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002E7D4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002E7EC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002E804(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002E81C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002E834(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002E84C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002E864(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002E87C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002E894(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002E8AC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002E8C4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002E8DC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002E8F4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002E90C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002E924(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002E93C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002E954(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002E96C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002E984(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002E99C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002E9B4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002E9CC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002E9E4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002E9FC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002EA14(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002EA2C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002EA44(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002EA5C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002EA74(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002EA8C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002EAA4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002EABC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002EAD4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002EAEC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002EB04(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002EB1C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

id sub_10002F0DC(uint64_t a1)
{
  v2 = +[MPRadioLibrary defaultRadioLibrary];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002F16C;
  v4[3] = &unk_100114018;
  v6 = *(a1 + 48);
  v5 = *(a1 + 32);
  return [v2 getRecentStationGroupsWithCompletionHandler:v4];
}

void sub_10002F16C(void *a1, void *a2, uint64_t a3)
{
  NSLog(@"%s:%d recentStationsGroups=%@ error=%@", "[iAPMediaLibraryHelper _updateRadioLibraryList]_block_invoke_2", 629, a2, a3);
  v6 = a1[4];
  if (a3)
  {
    *(v6 + 12) = 1;
  }

  else
  {
    *(v6 + 12) = 0;
    v7 = *(*(a1[6] + 8) + 24);
    if (v7 >= 2)
    {
LABEL_16:
      __break(0x550Au);
LABEL_17:
      __break(0x5516u);
      return;
    }

    if (v7)
    {
      v8 = +[NSNotificationCenter defaultCenter];
      [(NSNotificationCenter *)v8 postNotificationName:MPRadioLibraryStationsDidChangeNotification object:0];
    }

    else
    {
      v9 = (a1[4] + 24);
      if ((v9 & 7) != 0)
      {
        goto LABEL_17;
      }

      v10 = *v9;
      v11 = a2;
      v12 = a1[4] + 24;
      if ((v12 & 7) != 0)
      {
        goto LABEL_17;
      }

      *v12 = v11;
      if (v10)
      {
      }
    }
  }

  v13 = a1[5];
  if (!v13 || (dispatch_semaphore_signal(v13), (v14 = a1[5]) == 0))
  {
    __break(0x5510u);
    goto LABEL_16;
  }

  dispatch_release(v14);
}

void sub_10002F668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_10002F69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2;
  v7 = *(a1 + 40);
  if (v7 == a2)
  {
    sub_1000DDE90(6u, @"%s:%d curIndex=%d station=%@", "[iAPMediaLibraryHelper stationForIndex:]_block_invoke", 778, a2, a6);
    *(*(*(a1 + 32) + 8) + 40) = a6;
  }

  return v7 == v6;
}

void sub_10002F7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10002F7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v7 = *(a1 + 40);
  if (v7 != a2)
  {
    return (v7 == a2);
  }

  result = [a6 localizedName];
  if (a2 != -1)
  {
    if (dword_1001295B0 >= 100)
    {
      v12 = @"%03u %@ - %@";
    }

    else
    {
      v12 = @"%02u %@ - %@";
    }

    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", v12, (a2 + 1), result, [a5 localizedTitle]);
    sub_1000DDE90(6u, @"%s:%d count=%d station=%@ name=%@", "[iAPMediaLibraryHelper stationNameForIndex:]_block_invoke", 814, a2, a6, v13);
    *(*(*(a1 + 32) + 8) + 40) = v13;
    return (v7 == a2);
  }

  __break(0x5500u);
  return result;
}

id sub_10002F99C()
{
  dword_1001295B8 = -1;
  dword_1001295BC = -1;
  if (!dword_1001295B4)
  {
    return [qword_10012BAA0 reset];
  }

  return result;
}

uint64_t sub_10002FACC(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    sub_10001C4A0(result);
    *v1 = off_100114098;
    v1[12] = -1;
    v2 = objc_alloc_init(NSAutoreleasePool);
    if (dword_1001295B4 == -1)
    {
      dword_1001295B4 = CFPreferencesGetAppBooleanValue(@"DontUseMLCache", @"com.apple.iapd", 0) != 0;
    }

    if (dword_1001295A8 == -1)
    {
      AppBooleanValue = CFPreferencesGetAppBooleanValue(@"doNotFakeTiltPlaylist", @"com.apple.iapd", 0);
      dword_1001295A8 = AppBooleanValue == 0;
      sub_1000DDE90(0, @"MediaLibrary::%s:%d __fakeTiltPlaylist=%d", "MediaLibrary", 883, AppBooleanValue == 0);
    }

    if (dword_1001295AC == -1)
    {
      AppIntegerValue = CFPreferencesGetAppIntegerValue(@"FakeNumTiltTracks", @"com.apple.iapd", 0);
      if (AppIntegerValue)
      {
        v5 = AppIntegerValue;
      }

      else
      {
        v5 = 2;
      }

      dword_1001295AC = v5;
      sub_1000DDE90(0, @"MediaLibrary::%s:%d __fakeNumTiltTracks=%d", "MediaLibrary", 892, v5);
    }

    if (dword_1001295B0 == 25)
    {
      v6 = CFPreferencesGetAppIntegerValue(@"MaxTiltStations", @"com.apple.iapd", 0);
      if (v6 >= 1)
      {
        v7 = v6;
      }

      else
      {
        v7 = 25;
      }

      dword_1001295B0 = v7;
      sub_1000DDE90(0, @"MediaLibrary::%s:%d __MaxTiltStations=%d", "MediaLibrary", 902, v7);
    }

    if (!qword_10012BA90)
    {
      qword_10012BA90 = objc_alloc_init(NSMutableDictionary);
    }

    if (!qword_10012BA98)
    {
      [MPMediaLibrary setLibraryServerDisabled:1];
      [MPMediaQuery setFilteringDisabled:1];
      qword_10012BA98 = objc_alloc_init(MPMediaQuery);
      (*(*v1 + 208))(v1, 2097485, 0);
    }

    if (!qword_10012BAA0)
    {
      qword_10012BAA0 = objc_alloc_init(MediaLibraryCache);
    }

    return v1;
  }

  return result;
}

uint64_t sub_10002FD50(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100112210;
    pthread_mutex_destroy((result + 32));
    sub_1000089F8(v1 + 8);
    return v1;
  }

  return result;
}

uint64_t sub_10002FDC4(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100114098;
    v2 = objc_alloc_init(NSAutoreleasePool);
    if (qword_10012BAA8 != -1)
    {
      sub_1000E1ED8();
    }

    if (objc_opt_respondsToSelector())
    {
      [qword_10012BA98 performSelector:qword_10012BAB0];
    }

    sub_10002FEC4();
    sub_10002FF20();

    return sub_10002FD50(v1);
  }

  return result;
}

id sub_10002FEC4()
{
  [qword_10012BA90 removeAllObjects];
  result = [qword_10012BA98 setFilterPredicates:0];
  if (!dword_1001295B4)
  {
    v1 = qword_10012BAA0;

    return [v1 reset];
  }

  return result;
}

void sub_10002FF20()
{
  v0 = [NSNumber numberWithUnsignedInt:sub_1000326E8(0)];
  sub_10003078C(MPMediaItemPropertyMediaType, v0);
  v1 = sub_1000388B8();
  if (!v1 || (v1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else if ((*(*v1 + 624))(v1))
  {
    v2 = MPMediaItemPropertyIsLocal;

    sub_10003078C(v2, &__kCFBooleanTrue);
  }
}

uint64_t sub_10002FFE4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_10002FDC4(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10002FFF8(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_10002FDC4(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

id sub_100030078(id result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    if (qword_10012BAC0 != -1)
    {
      sub_1000E1EEC();
    }

    v2 = qword_10012BAC8;

    return [v2 stationCount];
  }

  return result;
}

id sub_1000300CC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    if (qword_10012BAC0 != -1)
    {
      sub_1000E1EEC();
    }

    a1 = qword_10012BAC8;
    a3 = a2;
  }

  return [a1 stationForIndex:a3];
}

id sub_100030130(id result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = objc_alloc_init(NSAutoreleasePool);
    v2 = [+[MPMediaLibrary defaultMediaLibrary](MPMediaLibrary uniqueIdentifier];
    if (v2)
    {
      v3 = [v2 hash];
    }

    else
    {
      v3 = 0;
    }

    return v3;
  }

  return result;
}

id sub_100030198(id result, uint64_t *a2)
{
  if (result && (result & 7) == 0)
  {
    v3 = objc_alloc_init(NSAutoreleasePool);
    v4 = [+[MPMediaLibrary defaultMediaLibrary](MPMediaLibrary lastModifiedDate];
    v5 = v4;
    if (v4)
    {
      result = [(NSDate *)v4 timeIntervalSince1970];
      if (v6 <= -9.22337204e18 || v6 >= 9.22337204e18)
      {
        goto LABEL_13;
      }

      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    *a2 = v8;

    return (v5 != 0);
  }

  __break(0x5516u);
LABEL_13:
  __break(0x5505u);
  return result;
}

void sub_100030240(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v2 = objc_alloc_init(NSAutoreleasePool);
    sub_10002FEC4();
    [qword_10012BA98 setGroupingType:0];
    sub_10002FF20();
    *(a1 + 96) = -1;
  }
}

void sub_1000302BC(uint64_t a1, int a2, int a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
    return;
  }

  v5 = objc_alloc_init(NSAutoreleasePool);
  if (a2)
  {
    if ((byte_10012BAB8 & 1) == 0)
    {
      v9 = v5;
      v6 = MPMediaItemPropertyMediaType;
      v7 = [sub_100030470(MPMediaItemPropertyMediaType) unsignedIntegerValue];
      if ((a3 & 1) == 0)
      {
        if (qword_10012BAC0 != -1)
        {
          sub_1000E1EEC();
        }

        if ([qword_10012BAC8 showPodcasts])
        {
          v7 |= 0x402uLL;
        }

        if (qword_10012BAC0 != -1)
        {
          sub_1000E1EEC();
        }

        if ([qword_10012BAC8 showAudioBooks])
        {
          v7 |= 4uLL;
        }

        if (qword_10012BAC0 != -1)
        {
          sub_1000E1EEC();
        }

        if ([qword_10012BAC8 showITunesU])
        {
          v7 |= 0x1008uLL;
        }
      }

      goto LABEL_23;
    }
  }

  else if ((byte_10012BAB8 & 1) == 0)
  {
    v9 = v5;
    v6 = MPMediaItemPropertyMediaType;
    v8 = [sub_100030470(MPMediaItemPropertyMediaType) unsignedIntegerValue];
    if (a3)
    {
      v7 = v8;
    }

    else
    {
      v7 = v8 & 0xFFFFFFFFFFFFEBF1;
    }

LABEL_23:
    sub_10003078C(v6, [NSNumber numberWithUnsignedInteger:v7]);
    v5 = v9;
  }
}

BOOL sub_10003042C(_BOOL8 result)
{
  if (result && !(result & 7))
  {
    return ([sub_100030470(MPMediaItemPropertyMediaType) unsignedIntegerValue] & 0x140E) != 0;
  }

  __break(0x5516u);
  return result;
}

id sub_100030470(uint64_t a1)
{
  v1 = [objc_msgSend(qword_10012BA90 objectForKey:{a1), "value"}];

  return v1;
}

void sub_1000304AC(_DWORD *a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0 || (v15 = objc_alloc_init(NSAutoreleasePool), v4 = sub_100030470(MPMediaItemPropertyMediaType), sub_10002FEC4(), sub_10003078C(MPMediaItemPropertyMediaType, v4), (v5 = sub_1000388B8()) == 0) || (v5 & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_33;
  }

  if ((*(*v5 + 624))(v5))
  {
    sub_10003078C(MPMediaItemPropertyIsLocal, &__kCFBooleanTrue);
  }

  sub_10003078C(MPMediaPlaylistPropertyIsGeniusMix, &__kCFBooleanFalse);
  sub_10003078C(MPMediaPlaylistPropertyIsHidden, &__kCFBooleanFalse);
  v6 = (*(*a1 + 680))(a1);
  if (v6 > a2)
  {
    if (!dword_1001295B4)
    {
      v7 = [qword_10012BAA0 collectionsForProperty:MPMediaPlaylistPropertyName];
      if (v7)
      {
        goto LABEL_20;
      }
    }

    v7 = [qword_10012BA98 collections];
    if (!dword_1001295B4)
    {
      [qword_10012BAA0 setCollections:+[NSArray arrayWithArray:](NSArray forProperty:{"arrayWithArray:", v7), MPMediaPlaylistPropertyName}];
    }

    if (v7)
    {
LABEL_20:
      LODWORD(a2) = sub_10003086C(v7, a2);
    }

    v12 = [objc_msgSend(v7 objectAtIndex:{a2), "valueForProperty:", MPMediaPlaylistPropertyPersistentID}];
    if (v12)
    {
      sub_10003078C(MPMediaPlaylistPropertyPersistentID, v12);
    }

    *(a1 + 12) = -1;
    goto LABEL_24;
  }

  if (dword_1001295A8)
  {
    v8 = v6;
    if (qword_10012BAC0 != -1)
    {
      sub_1000E1EEC();
    }

    v9 = [qword_10012BAC8 stationCount];
    v10 = (*(*a1 + 632))(a1);
    v11 = a2 - v8;
    if (a2 >= v8)
    {
      if (v11 < v9)
      {
        a1[24] = -1;
        a1[25] = v11;
        goto LABEL_24;
      }

      if (__CFADD__(v9, v10))
      {
LABEL_34:
        __break(0x5500u);
        return;
      }

      if (v11 >= v9 + v10)
      {
        goto LABEL_24;
      }

      v13 = v11 >= v9;
      v14 = v11 - v9;
      if (v13)
      {
        a1[24] = v14;
        a1[25] = -1;
        goto LABEL_24;
      }
    }

LABEL_33:
    __break(0x5515u);
    goto LABEL_34;
  }

LABEL_24:
}

void sub_10003078C(void *a1, uint64_t a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  if (a2)
  {
    v6 = v4;
    v5 = [MPMediaPropertyPredicate predicateWithValue:a2 forProperty:a1];
    [qword_10012BA90 setObject:v5 forKey:a1];
    if ([a1 isEqualToString:MPMediaItemPropertyMediaType])
    {
      [qword_10012BA90 removeObjectForKey:MPMediaItemPropertyIsRental];
    }

    [qword_10012BA98 setFilterPredicates:{+[NSSet setWithArray:](NSSet, "setWithArray:", objc_msgSend(qword_10012BA90, "allValues"))}];
    v4 = v6;
  }
}

uint64_t sub_10003086C(void *a1, uint64_t a2)
{
  v4 = 0;
  while (1)
  {
    [a1 objectAtIndex:v4];
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      v6 = [a1 objectAtIndex:v4];
      result = [objc_msgSend(v6 valueForProperty:{MPMediaPlaylistPropertyPlaylistAttributes), "integerValue"}];
      if ((result & 4) != 0)
      {
        result = [objc_msgSend(v6 valueForProperty:{MPMediaPlaylistPropertySeedItems), "count"}];
        if (!result)
        {
          v7 = __CFADD__(a2, 1);
          a2 = (a2 + 1);
          if (v7)
          {
            break;
          }
        }
      }
    }

    if (v4 == 0xFFFFFFFFLL)
    {
      break;
    }

    if (a2 < ++v4)
    {
      return a2;
    }
  }

  __break(0x5500u);
  return result;
}

void sub_10003094C(_DWORD *a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_56;
  }

  v33 = objc_alloc_init(NSAutoreleasePool);
  v4 = (*(*a1 + 688))(a1);
  if (a2 == -1 || (v5 = v4, v4 > a2))
  {
    v9 = sub_100030470(MPMediaItemPropertyMediaType);
    v10 = sub_100030470(MPMediaPlaylistPropertyPersistentID);
    sub_100030ED8(MPMediaPlaylistPropertyPersistentID, 0, 1);
    *(a1 + 12) = -1;
    if (v10)
    {
      v11 = +[MPMediaQuery playlistsQuery];
      [(MPMediaQuery *)v11 addFilterPredicate:[MPMediaPropertyPredicate predicateWithValue:v10 forProperty:MPMediaItemPropertyPersistentID]];
      v12 = [(MPMediaQuery *)v11 collections];
      if ([(NSArray *)v12 count]== 1)
      {
        v13 = [(NSArray *)v12 objectAtIndex:0];
        v14 = v13;
        if (v13 && (v15 = MPMediaPlaylistPropertyParentPersistentID, [v13 valueForProperty:MPMediaPlaylistPropertyParentPersistentID]))
        {
          [qword_10012BA98 addFilterPredicate:{+[MPMediaPropertyPredicate predicateWithValue:forProperty:](MPMediaPropertyPredicate, "predicateWithValue:forProperty:", v10, v15)}];
          v16 = 1;
        }

        else
        {
          v16 = 0;
        }

LABEL_28:
        if (a2 == -1)
        {
          v26 = v16 ^ 1;
          if (!v14)
          {
            v26 = 1;
          }

          if (v26)
          {
            goto LABEL_51;
          }

          v25 = MPMediaPlaylistPropertyParentPersistentID;
          v24 = v14;
        }

        else
        {
          [qword_10012BA98 setGroupingType:6];
          [qword_10012BA98 addFilterPredicate:{+[MPMediaPropertyPredicate predicateWithValue:forProperty:](MPMediaPropertyPredicate, "predicateWithValue:forProperty:", &__kCFBooleanFalse, MPMediaPlaylistPropertyIsGeniusMix)}];
          [qword_10012BA98 addFilterPredicate:{+[MPMediaPropertyPredicate predicateWithValue:forProperty:](MPMediaPropertyPredicate, "predicateWithValue:forProperty:", &__kCFBooleanFalse, MPMediaPlaylistPropertyIsHidden)}];
          v20 = [qword_10012BA98 collections];
          if (!v20)
          {
            goto LABEL_51;
          }

          v21 = v20;
          v22 = [v20 count];
          if (v22 <= a2)
          {
            goto LABEL_51;
          }

          v23 = sub_10003086C(v21, a2);
          if (v23 >= v22)
          {
            goto LABEL_51;
          }

          v24 = [v21 objectAtIndex:v23];
          v25 = MPMediaPlaylistPropertyPersistentID;
        }

        v27 = [v24 valueForProperty:v25];
        v28 = v27;
        if (v27)
        {
          if ([v27 intValue])
          {
            v29 = +[MPMediaQuery playlistsQuery];
            [(MPMediaQuery *)v29 addFilterPredicate:[MPMediaPropertyPredicate predicateWithValue:v28 forProperty:MPMediaItemPropertyPersistentID]];
            v30 = [(MPMediaQuery *)v29 collections];
            if ([(NSArray *)v30 count]== 1)
            {
              v31 = [(NSArray *)v30 objectAtIndex:0];
              if (v31)
              {
                if ([objc_msgSend(v31 valueForProperty:{MPMediaPlaylistPropertyIsFolder), "BOOLValue"}])
                {
                  sub_10003078C(MPMediaPlaylistPropertyParentPersistentID, v28);
                }

                else
                {
                  sub_100030ED8(MPMediaPlaylistPropertyParentPersistentID, 0, 1);
                }

                if (!dword_1001295B4)
                {
                  [qword_10012BAA0 reset];
                }

                v10 = v28;
              }
            }

            goto LABEL_51;
          }

          sub_10002FEC4();
          sub_10003078C(MPMediaItemPropertyMediaType, v9);
          v32 = sub_1000388B8();
          if (v32 && (v32 & 7) == 0)
          {
            if ((*(*v32 + 624))(v32))
            {
              sub_10003078C(MPMediaItemPropertyIsLocal, &__kCFBooleanTrue);
            }

            goto LABEL_52;
          }

LABEL_56:
          __break(0x5516u);
          goto LABEL_57;
        }

LABEL_51:
        sub_10003078C(MPMediaPlaylistPropertyPersistentID, v10);
        sub_100030ED8(MPMediaPlaylistPropertyParentPersistentID, 0, 1);
LABEL_52:
        [qword_10012BA98 setFilterPredicates:{+[NSSet setWithArray:](NSSet, "setWithArray:", objc_msgSend(qword_10012BA90, "allValues"))}];
        goto LABEL_53;
      }
    }

    else
    {
      sub_10002FEC4();
      sub_10003078C(MPMediaItemPropertyMediaType, v9);
      sub_10003078C(MPMediaPlaylistPropertyParentPersistentID, [NSNumber numberWithUnsignedInt:0]);
      v17 = sub_1000388B8();
      if (!v17 || (v17 & 7) != 0)
      {
        goto LABEL_56;
      }

      if ((*(*v17 + 624))(v17))
      {
        sub_10003078C(MPMediaItemPropertyIsLocal, &__kCFBooleanTrue);
      }

      sub_10003078C(MPMediaPlaylistPropertyIsGeniusMix, &__kCFBooleanFalse);
      sub_10003078C(MPMediaPlaylistPropertyIsHidden, &__kCFBooleanFalse);
    }

    v16 = 0;
    v14 = 0;
    goto LABEL_28;
  }

  if (dword_1001295A8)
  {
    if (qword_10012BAC0 != -1)
    {
      sub_1000E1EEC();
    }

    v6 = [qword_10012BAC8 stationCount];
    v7 = (*(*a1 + 632))(a1);
    v8 = a2 - v5;
    if (a2 >= v5)
    {
      if (v8 < v6)
      {
        a1[24] = -1;
        a1[25] = v8;
        goto LABEL_53;
      }

      if (__CFADD__(v6, v7))
      {
LABEL_58:
        __break(0x5500u);
        return;
      }

      if (v8 >= v6 + v7)
      {
        goto LABEL_53;
      }

      v18 = v8 >= v6;
      v19 = v8 - v6;
      if (v18)
      {
        a1[24] = v19;
        a1[25] = -1;
        goto LABEL_53;
      }
    }

LABEL_57:
    __break(0x5515u);
    goto LABEL_58;
  }

LABEL_53:
}

void sub_100030ED8(uint64_t a1, uint64_t a2, int a3)
{
  v7 = objc_alloc_init(NSAutoreleasePool);
  [qword_10012BA90 removeObjectForKey:a1];
  [qword_10012BA98 setFilterPredicates:{+[NSSet setWithArray:](NSSet, "setWithArray:", objc_msgSend(qword_10012BA90, "allValues"))}];
  if (dword_1001295B4)
  {
    v6 = 1;
  }

  else
  {
    v6 = a3 == 0;
  }

  if (!v6)
  {
    [qword_10012BAA0 invalidateMediaItem:a2];
  }
}

void sub_100030FA0(uint64_t a1, unsigned int a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v3 = objc_alloc_init(NSAutoreleasePool);
    if ([objc_msgSend(objc_msgSend(qword_10012BA90 objectForKey:{MPMediaItemPropertyMediaType), "value"), "unsignedIntValue"}] != 1026)
    {
      sub_100030ED8(MPMediaItemPropertyAlbumPersistentID, MPMediaItemPropertyAlbumTitle, 1);
    }

    sub_100030ED8(MPMediaItemPropertyArtistPersistentID, MPMediaItemPropertyArtist, 1);
    sub_100030ED8(MPMediaItemPropertyComposerPersistentID, 0, 0);
    if (a2 != -1)
    {
      sub_1000310B4(MPMediaItemPropertyArtist, MPMediaItemPropertyArtistPersistentID, a2, (byte_10012BAB8 & 1) == 0);
    }
  }
}

void sub_1000310B4(uint64_t a1, void *a2, unsigned int a3, int a4)
{
  if (dword_1001295B4)
  {
    v7 = 0;
  }

  else
  {
    v7 = a4;
  }

  if (v7 != 1 || (v8 = [qword_10012BAA0 collectionsForProperty:a1]) == 0)
  {
    v9 = [qword_10012BA98 collections];
    v8 = v9;
    v10 = v7 ^ 1;
    if (!v9)
    {
      v10 = 1;
    }

    if (v10)
    {
      if (!v9)
      {
        return;
      }
    }

    else
    {
      [qword_10012BAA0 setCollections:+[NSArray arrayWithArray:](NSArray forProperty:{"arrayWithArray:", v9), a1}];
    }
  }

  if ([v8 count] > a3)
  {
    v11 = [objc_msgSend(objc_msgSend(v8 objectAtIndex:{a3), "representativeItem"), "valueForProperty:", a2}];

    sub_10003078C(a2, v11);
  }
}

void sub_1000311D0(uint64_t a1, unsigned int a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v3 = objc_alloc_init(NSAutoreleasePool);
    sub_100030ED8(MPMediaItemPropertyAlbumPersistentID, MPMediaItemPropertyAlbumTitle, 1);
    if (a2 != -1)
    {
      sub_1000310B4(MPMediaItemPropertyAlbumTitle, MPMediaItemPropertyAlbumPersistentID, a2, (byte_10012BAB8 & 1) == 0);
    }
  }
}

void sub_100031284(uint64_t a1, unsigned int a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v3 = objc_alloc_init(NSAutoreleasePool);
    sub_100030ED8(MPMediaItemPropertyGenrePersistentID, MPMediaItemPropertyGenre, 1);
    sub_100030ED8(MPMediaItemPropertyAlbumPersistentID, MPMediaItemPropertyAlbumTitle, 1);
    sub_100030ED8(MPMediaItemPropertyArtistPersistentID, MPMediaItemPropertyArtist, 1);
    sub_100030ED8(MPMediaItemPropertyComposerPersistentID, MPMediaItemPropertyComposer, 1);
    if (a2 != -1)
    {
      sub_1000310B4(MPMediaItemPropertyGenre, MPMediaItemPropertyGenrePersistentID, a2, 1);
    }
  }
}

void sub_10003138C(uint64_t a1, unsigned int a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v3 = objc_alloc_init(NSAutoreleasePool);
    sub_100030ED8(MPMediaItemPropertyAlbumPersistentID, MPMediaItemPropertyAlbumTitle, 1);
    sub_100030ED8(MPMediaItemPropertyComposerPersistentID, MPMediaItemPropertyComposer, 1);
    sub_100030ED8(MPMediaItemPropertyArtistPersistentID, MPMediaItemPropertyArtist, 0);
    if (a2 != -1)
    {
      sub_1000310B4(MPMediaItemPropertyComposer, MPMediaItemPropertyComposerPersistentID, a2, (byte_10012BAB8 & 1) == 0);
    }
  }
}

void sub_100031480(uint64_t a1, unsigned int a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v4 = objc_alloc_init(NSAutoreleasePool);
    v3 = MPMediaItemPropertySeriesName;
    sub_100030ED8(MPMediaItemPropertySeriesName, 0, 0);
    sub_100030ED8(MPMediaItemPropertySeasonNumber, 0, 0);
    if (a2 != -1)
    {
      sub_1000310B4(v3, v3, a2, 0);
    }
  }
}

void sub_10003152C(uint64_t a1, unsigned int a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v4 = objc_alloc_init(NSAutoreleasePool);
    if (qword_10012BAC0 != -1)
    {
      sub_1000E1EEC();
    }

    if ([qword_10012BAC8 showPodcasts])
    {
      sub_100030ED8(MPMediaItemPropertyAlbumPersistentID, MPMediaItemPropertyAlbumTitle, 1);
      if (a2 == -1)
      {
        if ((byte_10012BAB8 & 1) == 0 && [objc_msgSend(objc_msgSend(qword_10012BA90 objectForKey:{MPMediaItemPropertyMediaType), "value"), "unsignedIntValue"}] == 1026)
        {
          sub_10002FEC4();
          sub_10002FF20();
        }
      }

      else
      {
        sub_10002FEC4();
        if (byte_10012BAB8)
        {
          v3 = 1024;
        }

        else
        {
          v3 = 1026;
        }

        sub_10003078C(MPMediaItemPropertyMediaType, [NSNumber numberWithUnsignedInt:v3]);
        sub_10003078C(MPMediaItemPropertyIsLocal, &__kCFBooleanTrue);
        [qword_10012BA98 setGroupingType:1];
        sub_1000310B4(MPMediaItemPropertyAlbumTitle, MPMediaItemPropertyAlbumPersistentID, a2, 0);
      }
    }

    else
    {
      NSLog(@"%s:%d not showPodcasts", "SelectPodcast", 1386);
    }
  }
}

NSObject *sub_1000316C4(NSObject *result, int a2, uint64_t a3)
{
  if (!result || (v3 = result, (result & 7) != 0))
  {
    __break(0x5516u);
    goto LABEL_16;
  }

  if (a2 == -1)
  {
    return 0;
  }

  v6 = objc_alloc_init(NSAutoreleasePool);
  if ((*(v3->isa + 79))(v3) <= a2)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  if (qword_10012BAC0 != -1)
  {
    sub_1000E1EEC();
  }

  if (![qword_10012BAC8 showMusic])
  {
    NSLog(@"%s:%d no systemMusicPlayer", "SelectGeniusMix", 1417);
    goto LABEL_12;
  }

  v7 = [objc_msgSend(+[MPMediaQuery geniusMixesQuery](MPMediaQuery "geniusMixesQuery")];
  result = sub_100044A30();
  if (result)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100031834;
    block[3] = &unk_1001137D0;
    block[4] = v7;
    block[5] = a3;
    dispatch_sync(result, block);
    v8 = 1;
LABEL_13:

    return v8;
  }

LABEL_16:
  __break(0x5510u);
  return result;
}

uint64_t sub_100031834(uint64_t a1)
{
  v2 = sub_100044A24();
  [v2 setQueueWithGeniusMixPlaylist:*(a1 + 32)];
  result = sub_1000388B8();
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    (*(*result + 520))(result, *(a1 + 40));

    return [v2 play];
  }

  return result;
}

void sub_1000318BC(uint64_t a1, unsigned int a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v4 = objc_alloc_init(NSAutoreleasePool);
    if (qword_10012BAC0 != -1)
    {
      sub_1000E1EEC();
    }

    if ([qword_10012BAC8 showITunesU])
    {
      sub_100030ED8(MPMediaItemPropertyAlbumPersistentID, MPMediaItemPropertyAlbumTitle, 1);
      if (a2 == -1)
      {
        if ((byte_10012BAB8 & 1) == 0 && [objc_msgSend(objc_msgSend(qword_10012BA90 objectForKey:{MPMediaItemPropertyMediaType), "value"), "unsignedIntValue"}] == 4104)
        {
          sub_10002FEC4();
          sub_10002FF20();
        }
      }

      else
      {
        sub_10002FEC4();
        if (byte_10012BAB8)
        {
          v3 = 4096;
        }

        else
        {
          v3 = 4104;
        }

        sub_10003078C(MPMediaItemPropertyMediaType, [NSNumber numberWithUnsignedInt:v3]);
        sub_10003078C(MPMediaItemPropertyIsLocal, &__kCFBooleanTrue);
        [qword_10012BA98 setGroupingType:1];
        sub_1000310B4(MPMediaItemPropertyAlbumTitle, MPMediaItemPropertyAlbumPersistentID, a2, 0);
      }
    }

    else
    {
      sub_1000DDE90(0, @"%s:%d not showITunesU", "SelectiTunesU", 1458);
    }
  }
}

void sub_100031A58(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = objc_alloc_init(NSAutoreleasePool);
    sub_10002FEC4();
    sub_10003078C(MPMediaItemPropertyMediaType, [NSNumber numberWithUnsignedInt:8448]);
    sub_10003078C(MPMediaItemPropertyIsLocal, &__kCFBooleanTrue);
    sub_10003078C(MPMediaItemPropertyIsRental, [NSNumber numberWithBool:0]);
  }
}

void sub_100031B18(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = objc_alloc_init(NSAutoreleasePool);
    sub_10002FEC4();
    sub_10003078C(MPMediaItemPropertyIsRental, [NSNumber numberWithBool:1]);
    sub_10003078C(MPMediaItemPropertyIsLocal, &__kCFBooleanTrue);
  }
}

void sub_100031BB4(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = objc_alloc_init(NSAutoreleasePool);
    sub_10002FEC4();
    sub_10003078C(MPMediaItemPropertyMediaType, [NSNumber numberWithUnsignedInt:512]);
    sub_10003078C(MPMediaItemPropertyIsLocal, &__kCFBooleanTrue);
  }
}

void sub_100031C50(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    if (qword_10012BAC0 != -1)
    {
      sub_1000E1EEC();
    }

    if ([qword_10012BAC8 showPodcasts])
    {
      v1 = objc_alloc_init(NSAutoreleasePool);
      sub_10002FEC4();
      sub_10003078C(MPMediaItemPropertyMediaType, [NSNumber numberWithUnsignedInt:1024]);
      sub_10003078C(MPMediaItemPropertyIsLocal, &__kCFBooleanTrue);
    }
  }
}

void sub_100031D24(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = objc_alloc_init(NSAutoreleasePool);
    sub_10002FEC4();
    sub_10003078C(MPMediaItemPropertyIsITunesU, [NSNumber numberWithBool:1]);
    sub_10003078C(MPMediaItemPropertyIsLocal, &__kCFBooleanTrue);
    sub_10003078C(MPMediaItemPropertyMediaType, [NSNumber numberWithInteger:65280]);
  }
}

void sub_100031DE4(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    if (qword_10012BAC0 != -1)
    {
      sub_1000E1EEC();
    }

    if ([qword_10012BAC8 showMusic])
    {
      v1 = objc_alloc_init(NSAutoreleasePool);
      sub_10002FEC4();
      sub_10003078C(MPMediaItemPropertyMediaType, [NSNumber numberWithUnsignedInt:2048]);
      sub_10003078C(MPMediaItemPropertyIsLocal, &__kCFBooleanTrue);
    }
  }
}

void sub_100031EB8(uint64_t a1, unsigned int a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v7 = objc_alloc_init(NSAutoreleasePool);
    v3 = MPMediaItemPropertySeasonNumber;
    sub_100030ED8(MPMediaItemPropertySeasonNumber, 0, 0);
    if (a2 != -1)
    {
      v4 = [qword_10012BA98 collections];
      if (v4)
      {
        v5 = v4;
        if ([v4 count] > a2)
        {
          v6 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{a2), "representativeItem"), "valueForProperty:", v3}];
          if (v6)
          {
            sub_10003078C(v3, v6);
          }
        }
      }
    }
  }
}

uint64_t sub_100031F90(uint64_t a1, int a2, int a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_19;
  }

  v5 = objc_alloc_init(NSAutoreleasePool);
  if (a2 <= 2097484)
  {
    if (a2)
    {
      if (a2 != 50)
      {
        goto LABEL_11;
      }

      byte_10012BAB8 = 1;
      if ((~a3 & 0x32) == 0)
      {
        v6 = &off_1001215A8;
        v7 = MPMediaItemPropertyMediaType;
LABEL_18:
        sub_10003078C(v7, v6);
        goto LABEL_11;
      }

      sub_10003078C(MPMediaItemPropertyMediaType, [NSNumber numberWithUnsignedInt:65280]);
      v8 = sub_1000388B8();
      if (v8 && (v8 & 7) == 0)
      {
        if (!(*(*v8 + 624))(v8))
        {
          goto LABEL_11;
        }

        v7 = MPMediaItemPropertyIsLocal;
        v6 = &__kCFBooleanTrue;
        goto LABEL_18;
      }

LABEL_19:
      __break(0x5516u);
      return _objc_release_x1();
    }

LABEL_10:
    byte_10012BAB8 = 0;
    sub_10002FF20();
    goto LABEL_11;
  }

  if (a2 == 2097501 || a2 == 2097485)
  {
    goto LABEL_10;
  }

LABEL_11:

  return _objc_release_x1();
}

uint64_t sub_1000320F0(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_100032104(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_100032118(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10003212C(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_100032140(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_100032154(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_100032168(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10003217C(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_100032190(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_1000321A4(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

_DWORD *sub_1000321B8(_DWORD *result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    v2 = objc_autoreleasePoolPush();
    if (!dword_1001295A8 || (v1[25] & 0x80000000) != 0 && (v1[24] & 0x80000000) != 0)
    {
      v4 = byte_10012BAB8;
      v5 = dword_1001295B4;
      [qword_10012BA98 setGroupingType:0];
      v6 = v4 | (v5 != 0);
      if ((v6 & 1) != 0 || ([qword_10012BA90 count] < 2 ? (v7 = objc_msgSend(qword_10012BAA0, "globalItemCountForProperty:", MPMediaItemPropertyTitle)) : (v7 = objc_msgSend(qword_10012BAA0, "itemCountForProperty:", MPMediaItemPropertyTitle)), (v8 = v7) == 0))
      {
        v3 = [objc_msgSend(qword_10012BA98 "items")];
        if ((v6 & 1) == 0)
        {
          [qword_10012BAA0 setItemCount:v3 forProperty:MPMediaItemPropertyTitle];
          if ([qword_10012BA90 count] <= 1)
          {
            [qword_10012BAA0 setGlobalItemCount:v3 ForProperty:MPMediaItemPropertyTitle];
          }
        }
      }

      else
      {
        v3 = [v8 unsignedIntValue];
      }
    }

    else
    {
      v3 = dword_1001295AC;
    }

    objc_autoreleasePoolPop(v2);
    return v3;
  }

  return result;
}

uint64_t sub_100032304(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = objc_alloc_init(NSAutoreleasePool);
    v2 = sub_100032370(2, MPMediaItemPropertyArtist, (byte_10012BAB8 & 1) == 0);

    return v2;
  }

  return result;
}

uint64_t sub_100032370(uint64_t a1, uint64_t a2, int a3)
{
  if (dword_1001295B4)
  {
    v5 = 0;
  }

  else
  {
    v5 = a3;
  }

  v6 = objc_alloc_init(NSAutoreleasePool);
  [qword_10012BA98 setGroupingType:a1];
  result = sub_1000388B8();
  if (result && (result & 7) == 0)
  {
    if ((*(*result + 624))(result))
    {
      [qword_10012BA98 addFilterPredicate:{+[MPMediaPropertyPredicate predicateWithValue:forProperty:](MPMediaPropertyPredicate, "predicateWithValue:forProperty:", &__kCFBooleanTrue, MPMediaItemPropertyIsLocal)}];
    }

    if (v5)
    {
      if ([qword_10012BA90 count] <= 1)
      {
        v10 = [qword_10012BAA0 globalItemCountForProperty:a2];
        if (!v10)
        {
          goto LABEL_16;
        }

        v8 = v10;
        [qword_10012BAA0 setItemCount:objc_msgSend(v10 forProperty:{"unsignedIntValue"), a2}];
      }

      else
      {
        v8 = [qword_10012BAA0 itemCountForProperty:a2];
        if (!v8)
        {
LABEL_16:
          v11 = [qword_10012BAA0 collectionsForProperty:a2];
          if (!v11)
          {
            v11 = [qword_10012BA98 collections];
            if (v11)
            {
              [qword_10012BAA0 setCollections:+[NSArray arrayWithArray:](NSArray forProperty:{"arrayWithArray:", v11), a2}];
            }
          }

          v9 = [v11 count];
          [qword_10012BAA0 setItemCount:v9 forProperty:a2];
          if ([qword_10012BA90 count] <= 1)
          {
            [qword_10012BAA0 setGlobalItemCount:v9 ForProperty:a2];
          }

          goto LABEL_21;
        }
      }

      v9 = [v8 unsignedIntValue];
    }

    else
    {
      v9 = [objc_msgSend(qword_10012BA98 "collections")];
    }

LABEL_21:

    return v9;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100032574(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = objc_alloc_init(NSAutoreleasePool);
    v2 = sub_100032370(1, MPMediaItemPropertyAlbumTitle, (byte_10012BAB8 & 1) == 0);

    return v2;
  }

  return result;
}

uint64_t sub_1000325E0(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = objc_alloc_init(NSAutoreleasePool);
    [qword_10012BA98 setFilterPredicates:{+[NSSet setWithObject:](NSSet, "setWithObject:", +[MPMediaPropertyPredicate predicateWithValue:forProperty:](MPMediaPropertyPredicate, "predicateWithValue:forProperty:", +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", sub_1000326E8(0)), MPMediaItemPropertyMediaType))}];
    v2 = sub_100032370(5, MPMediaItemPropertyGenre, 1);
    [qword_10012BA98 setFilterPredicates:{+[NSSet setWithArray:](NSSet, "setWithArray:", objc_msgSend(qword_10012BA90, "allValues"))}];

    return v2;
  }

  return result;
}

id sub_1000326E8(uint64_t a1)
{
  if (qword_10012BAC0 != -1)
  {
    sub_1000E1EEC();
  }

  v2 = [qword_10012BAC8 mediaLibraryHelper];

  return [v2 getFilteredMediaTypesMask:a1];
}

uint64_t sub_100032740(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = objc_alloc_init(NSAutoreleasePool);
    v2 = sub_100032370(4, MPMediaItemPropertyComposer, (byte_10012BAB8 & 1) == 0);

    return v2;
  }

  return result;
}

uint64_t sub_1000327AC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    v1 = objc_alloc_init(NSAutoreleasePool);
    v2 = MPMediaItemPropertySeriesName;
    v3 = [qword_10012BA90 objectForKey:MPMediaItemPropertySeriesName];
    if (v3)
    {
      [qword_10012BA90 removeObjectForKey:v2];
    }

    v4 = MPMediaItemPropertySeasonNumber;
    v5 = [qword_10012BA90 objectForKey:MPMediaItemPropertySeasonNumber];
    if (v5)
    {
      [qword_10012BA90 removeObjectForKey:v4];
    }

    else if (!v3)
    {
      v6 = sub_100032370(8, v2, 0);
LABEL_13:

      return v6;
    }

    [qword_10012BA98 setFilterPredicates:{+[NSSet setWithArray:](NSSet, "setWithArray:", objc_msgSend(qword_10012BA90, "allValues"))}];
    v6 = sub_100032370(8, v2, 0);
    if (v3)
    {
      [qword_10012BA90 setObject:v3 forKey:v2];
    }

    if (v5)
    {
      [qword_10012BA90 setObject:v5 forKey:v4];
    }

    [qword_10012BA98 setFilterPredicates:{+[NSSet setWithArray:](NSSet, "setWithArray:", objc_msgSend(qword_10012BA90, "allValues"))}];
    goto LABEL_13;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100032930(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = objc_alloc_init(NSAutoreleasePool);
    v2 = MPMediaItemPropertySeasonNumber;
    v3 = [qword_10012BA90 objectForKey:MPMediaItemPropertySeasonNumber];
    if (v3)
    {
      v4 = v3;
      [qword_10012BA90 removeObjectForKey:v2];
      [qword_10012BA98 setFilterPredicates:{+[NSSet setWithArray:](NSSet, "setWithArray:", objc_msgSend(qword_10012BA90, "allValues"))}];
      v5 = sub_100032370(9, v2, 0);
      [qword_10012BA90 setObject:v4 forKey:v2];
      [qword_10012BA98 setFilterPredicates:{+[NSSet setWithArray:](NSSet, "setWithArray:", objc_msgSend(qword_10012BA90, "allValues"))}];
    }

    else
    {
      v5 = sub_100032370(9, v2, 0);
    }

    return v5;
  }

  return result;
}

NSUInteger sub_100032A58(NSUInteger result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    if (qword_10012BAC0 != -1)
    {
      sub_1000E1EEC();
    }

    if ([qword_10012BAC8 showAudioBooks])
    {
      v1 = objc_alloc_init(NSAutoreleasePool);
      v2 = +[MPMediaQuery audiobooksQuery];
      [(MPMediaQuery *)v2 setGroupingType:0];
      v3 = [(NSArray *)[(MPMediaQuery *)v2 items] count];
    }

    else
    {
      sub_1000DDE90(0, @"%s:%d not showAudioBooks", "AudiobookCount", 1715);
      return 0;
    }

    return v3;
  }

  return result;
}

uint64_t sub_100032B18(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    if (qword_10012BAC0 != -1)
    {
      sub_1000E1EEC();
    }

    if ([qword_10012BAC8 showPodcasts])
    {
      v1 = objc_alloc_init(NSAutoreleasePool);
      [qword_10012BA98 setFilterPredicates:{+[NSSet setWithObject:](NSSet, "setWithObject:", +[MPMediaPropertyPredicate predicateWithValue:forProperty:](MPMediaPropertyPredicate, "predicateWithValue:forProperty:", +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", 1026), MPMediaItemPropertyMediaType))}];
      v2 = sub_100032370(1, MPMediaItemPropertyAlbumTitle, 0);
      [qword_10012BA98 setFilterPredicates:{+[NSSet setWithArray:](NSSet, "setWithArray:", objc_msgSend(qword_10012BA90, "allValues"))}];

      return v2;
    }

    else
    {
      sub_1000DDE90(0, @"%s:%d not showPodcasts", "PodcastCount", 1734);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100032C60(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    if (qword_10012BAC0 != -1)
    {
      sub_1000E1EEC();
    }

    if ([qword_10012BAC8 showITunesU])
    {
      v1 = objc_alloc_init(NSAutoreleasePool);
      [qword_10012BA98 setFilterPredicates:{+[NSSet setWithObject:](NSSet, "setWithObject:", +[MPMediaPropertyPredicate predicateWithValue:forProperty:](MPMediaPropertyPredicate, "predicateWithValue:forProperty:", +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", 4104), MPMediaItemPropertyMediaType))}];
      v2 = sub_100032370(1, MPMediaItemPropertyAlbumTitle, 0);
      [qword_10012BA98 setFilterPredicates:{+[NSSet setWithArray:](NSSet, "setWithArray:", objc_msgSend(qword_10012BA90, "allValues"))}];

      return v2;
    }

    else
    {
      sub_1000DDE90(0, @"%s:%d not showiTunesU", "iTunesUCount", 1753);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100032DA8(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    if (qword_10012BAC0 != -1)
    {
      sub_1000E1EEC();
    }

    if ([qword_10012BAC8 showPodcasts])
    {
      v1 = objc_alloc_init(NSAutoreleasePool);
      [qword_10012BA98 setFilterPredicates:{+[NSSet setWithObject:](NSSet, "setWithObject:", +[MPMediaPropertyPredicate predicateWithValue:forProperty:](MPMediaPropertyPredicate, "predicateWithValue:forProperty:", +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", 1024), MPMediaItemPropertyMediaType))}];
      v2 = sub_100032370(1, MPMediaItemPropertyAlbumTitle, 0);
      [qword_10012BA98 setFilterPredicates:{+[NSSet setWithArray:](NSSet, "setWithArray:", objc_msgSend(qword_10012BA90, "allValues"))}];

      return v2;
    }

    else
    {
      sub_1000DDE90(0, @"%s:%d not showPodcasts", "VideoPodcastCount", 1772);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100032EF0(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = objc_alloc_init(NSAutoreleasePool);
    if (qword_10012BAC0 != -1)
    {
      sub_1000E1EEC();
    }

    if ([qword_10012BAC8 showITunesU])
    {
      v2 = qword_10012BA98;
      v3 = [NSNumber numberWithBool:1];
      [v2 setFilterPredicates:{+[NSSet setWithObject:](NSSet, "setWithObject:", +[MPMediaPropertyPredicate predicateWithValue:forProperty:](MPMediaPropertyPredicate, "predicateWithValue:forProperty:", v3, MPMediaItemPropertyIsITunesU))}];
      [qword_10012BA98 addFilterPredicate:{+[MPMediaPropertyPredicate predicateWithValue:forProperty:](MPMediaPropertyPredicate, "predicateWithValue:forProperty:", +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", 65280), MPMediaItemPropertyMediaType)}];
      v4 = sub_100032370(1, MPMediaItemPropertyAlbumTitle, 0);
      [qword_10012BA98 setFilterPredicates:{+[NSSet setWithArray:](NSSet, "setWithArray:", objc_msgSend(qword_10012BA90, "allValues"))}];

      return v4;
    }

    else
    {
      sub_1000DDE90(0, @"%s:%d not showiTunesU", "VideoITunesUCount", 1794);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100033078(uint64_t result, int a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    v4 = objc_alloc_init(NSAutoreleasePool);
    if (dword_1001295A8 && ((*(v2 + 100) & 0x80000000) == 0 || (*(v2 + 96) & 0x80000000) == 0))
    {
      operator new();
    }

    if (qword_10012BA98)
    {
      v5 = [qword_10012BA98 items];
      if ([v5 count] > a2)
      {
        [v5 objectAtIndex:a2];
        operator new();
      }
    }

    return 0;
  }

  return result;
}

id sub_1000331F4(uint64_t a1)
{
  v1 = [NSNumber numberWithUnsignedLongLong:a1];
  v2 = [[MPMediaQuery alloc] initWithFilterPredicates:{+[NSSet setWithObject:](NSSet, "setWithObject:", +[MPMediaPropertyPredicate predicateWithValue:forProperty:](MPMediaPropertyPredicate, "predicateWithValue:forProperty:", v1, MPMediaItemPropertyPersistentID))}];
  v3 = v2;
  if (!v2)
  {
    NSLog(@"%s:%d Failed to create query for UID=%@", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/MediaLibrary.mm", 1868, v1);
LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v4 = [v2 items];
  if ([v4 count] != 1)
  {
    if ([v4 count] < 2)
    {
      NSLog(@"%s:%d No item match for UID=%@", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/MediaLibrary.mm", 1863, v1);
    }

    else
    {
      NSLog(@"%s:%d Too many items returned!!! for UID=%@", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/MediaLibrary.mm", 1859, v1);
    }

    goto LABEL_8;
  }

  v5 = [objc_msgSend(v3 "items")];
LABEL_9:

  return v5;
}

uint64_t sub_100033334(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v3 = objc_alloc_init(NSAutoreleasePool);
    v4 = [NSNumber numberWithUnsignedLongLong:a2];
    if (sub_1000331F4(a2))
    {
      operator new();
    }

    NSLog(@"%s:%d Failed to get item for UID=%@", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/MediaLibrary.mm", 1891, v4);

    return 0;
  }

  return result;
}

id sub_100033454(id result, unsigned int a2)
{
  if (result && (result & 7) == 0)
  {
    v3 = objc_alloc_init(NSAutoreleasePool);
    v4 = MPMediaItemPropertySeasonNumber;
    v5 = [qword_10012BA90 objectForKey:MPMediaItemPropertySeasonNumber];
    if (v5)
    {
      [qword_10012BA90 removeObjectForKey:v4];
      [qword_10012BA98 setFilterPredicates:{+[NSSet setWithArray:](NSSet, "setWithArray:", objc_msgSend(qword_10012BA90, "allValues"))}];
    }

    v6 = [qword_10012BA98 collections];
    if (v6 && (v7 = v6, [v6 count] > a2))
    {
      v8 = [objc_msgSend(objc_msgSend(objc_msgSend(v7 objectAtIndex:{a2), "representativeItem"), "valueForProperty:", v4), "unsignedIntValue"}];
      if (!v5)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v8 = 0;
      if (!v5)
      {
LABEL_11:

        return v8;
      }
    }

    [qword_10012BA90 setObject:v5 forKey:v4];
    [qword_10012BA98 setFilterPredicates:{+[NSSet setWithArray:](NSSet, "setWithArray:", objc_msgSend(qword_10012BA90, "allValues"))}];
    goto LABEL_11;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000335B0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) == 0)
    {
      v2 = objc_alloc_init(NSAutoreleasePool);
      v3 = (*(*v1 + 680))(v1);
      if (!dword_1001295A8)
      {
        goto LABEL_8;
      }

      if (qword_10012BAC0 != -1)
      {
        sub_1000E1EEC();
      }

      v4 = [qword_10012BAC8 stationCount];
      result = (*(*v1 + 632))(v1);
      v5 = result + v4;
      if (!__CFADD__(result, v4))
      {
        v6 = __CFADD__(v3, v5);
        v3 = (v3 + v5);
        if (!v6)
        {
LABEL_8:

          return v3;
        }
      }

      __break(0x5500u);
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000336AC(uint64_t result)
{
  if (result)
  {
    if ((result & 7) == 0)
    {
      v1 = objc_alloc_init(NSAutoreleasePool);
      [qword_10012BA98 setFilterPredicates:{+[NSSet setWithObject:](NSSet, "setWithObject:", +[MPMediaPropertyPredicate predicateWithValue:forProperty:](MPMediaPropertyPredicate, "predicateWithValue:forProperty:", +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", sub_1000326E8(0)), MPMediaItemPropertyMediaType))}];
      result = sub_1000388B8();
      if (result)
      {
        if ((result & 7) == 0)
        {
          if ((*(*result + 624))(result))
          {
            [qword_10012BA98 addFilterPredicate:{+[MPMediaPropertyPredicate predicateWithValue:forProperty:](MPMediaPropertyPredicate, "predicateWithValue:forProperty:", &__kCFBooleanTrue, MPMediaItemPropertyIsLocal)}];
          }

          [qword_10012BA98 setGroupingType:6];
          [qword_10012BA98 addFilterPredicate:{+[MPMediaPropertyPredicate predicateWithValue:forProperty:](MPMediaPropertyPredicate, "predicateWithValue:forProperty:", &__kCFBooleanFalse, MPMediaPlaylistPropertyIsGeniusMix)}];
          [qword_10012BA98 addFilterPredicate:{+[MPMediaPropertyPredicate predicateWithValue:forProperty:](MPMediaPropertyPredicate, "predicateWithValue:forProperty:", &__kCFBooleanFalse, MPMediaPlaylistPropertyIsHidden)}];
          if (dword_1001295B4)
          {
            goto LABEL_8;
          }

          v5 = [qword_10012BAA0 globalItemCountForPropertyNoQ:MPMediaPlaylistPropertyName];
          if (v5)
          {
            v3 = [v5 unsignedIntValue];
LABEL_17:
            [qword_10012BA98 setFilterPredicates:{+[NSSet setWithArray:](NSSet, "setWithArray:", objc_msgSend(qword_10012BA90, "allValues"))}];

            return v3;
          }

          if (dword_1001295B4 || (v3 = [qword_10012BAA0 collectionsForPropertyNoQ:MPMediaPlaylistPropertyName]) == 0)
          {
LABEL_8:
            v2 = [qword_10012BA98 collections];
            v3 = v2;
            v4 = dword_1001295B4;
            if (dword_1001295B4 || !v2)
            {
              if (!v2)
              {
                goto LABEL_15;
              }
            }

            else
            {
              [qword_10012BAA0 setCollectionsNoQ:+[NSArray arrayWithArray:](NSArray forProperty:{"arrayWithArray:", v2), MPMediaPlaylistPropertyName}];
            }
          }

          v3 = sub_100033954(v3, [v3 count]);
          v4 = dword_1001295B4;
LABEL_15:
          if (!v4)
          {
            [qword_10012BAA0 setGlobalItemCountNoQ:v3 ForProperty:MPMediaPlaylistPropertyName];
          }

          goto LABEL_17;
        }
      }
    }
  }

  __break(0x5516u);
  return result;
}

id sub_100033954(void *a1, uint64_t a2)
{
  v4 = [a1 count];
  v5 = v4;
  if (!v4)
  {
    return a2;
  }

  v6 = 0;
  while (1)
  {
    [a1 objectAtIndex:v6];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [a1 objectAtIndex:v6];
      if (([objc_msgSend(v7 valueForProperty:{MPMediaPlaylistPropertyPlaylistAttributes), "integerValue"}] & 4) != 0)
      {
        result = [objc_msgSend(v7 valueForProperty:{MPMediaPlaylistPropertySeedItems), "count"}];
        if (!result)
        {
          v9 = a2 != 0;
          a2 = (a2 - 1);
          if (!v9)
          {
            break;
          }
        }
      }
    }

    if (v5 == ++v6)
    {
      return a2;
    }
  }

  __break(0x5515u);
  return result;
}

uint64_t sub_100033A34(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v3 = 0;
    v4 = &v3;
    v5 = 0x2020000000;
    v6 = 0;
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_100033B0C;
    v2[3] = &unk_100114388;
    v2[4] = &v3;
    v2[5] = result;
    [qword_10012BAA0 performOnQueue:v2];
    v1 = *(v4 + 6);
    _Block_object_dispose(&v3, 8);
    return v1;
  }

  return result;
}

void sub_100033AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100033B0C(uint64_t a1)
{
  result = (*(**(a1 + 40) + 704))(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

id sub_100033B68(id result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    return result;
  }

  v1 = objc_alloc_init(NSAutoreleasePool);
  v2 = sub_100030470(MPMediaPlaylistPropertyPersistentID);
  sub_100030ED8(MPMediaPlaylistPropertyPersistentID, 0, 0);
  if (v2)
  {
    v3 = +[MPMediaQuery playlistsQuery];
    [(MPMediaQuery *)v3 addFilterPredicate:[MPMediaPropertyPredicate predicateWithValue:v2 forProperty:MPMediaItemPropertyPersistentID]];
    v4 = [(MPMediaQuery *)v3 collections];
    if ([(NSArray *)v4 count]!= 1)
    {
      goto LABEL_10;
    }

    v5 = [(NSArray *)v4 objectAtIndex:0];
    if (!v5)
    {
      goto LABEL_10;
    }

    v6 = MPMediaPlaylistPropertyParentPersistentID;
    if (![v5 valueForProperty:MPMediaPlaylistPropertyParentPersistentID])
    {
      goto LABEL_10;
    }

    v7 = qword_10012BA98;
    v8 = [MPMediaPropertyPredicate predicateWithValue:v2 forProperty:v6];
    v9 = v7;
  }

  else
  {
    v10 = qword_10012BA98;
    v11 = [NSNumber numberWithUnsignedInt:0];
    v8 = [MPMediaPropertyPredicate predicateWithValue:v11 forProperty:MPMediaPlaylistPropertyParentPersistentID];
    v9 = v10;
  }

  [v9 addFilterPredicate:v8];
LABEL_10:
  [qword_10012BA98 setGroupingType:6];
  [qword_10012BA98 addFilterPredicate:{+[MPMediaPropertyPredicate predicateWithValue:forProperty:](MPMediaPropertyPredicate, "predicateWithValue:forProperty:", &__kCFBooleanFalse, MPMediaPlaylistPropertyIsGeniusMix)}];
  [qword_10012BA98 addFilterPredicate:{+[MPMediaPropertyPredicate predicateWithValue:forProperty:](MPMediaPropertyPredicate, "predicateWithValue:forProperty:", &__kCFBooleanFalse, MPMediaPlaylistPropertyIsHidden)}];
  v12 = [qword_10012BA98 collections];
  v13 = v12;
  if (v12)
  {
    v13 = sub_100033954(v12, [v12 count]);
  }

  if (v2)
  {
    sub_10003078C(MPMediaPlaylistPropertyPersistentID, v2);
  }

  [qword_10012BA98 setFilterPredicates:{+[NSSet setWithArray:](NSSet, "setWithArray:", objc_msgSend(qword_10012BA90, "allValues"))}];

  return v13;
}

uint64_t sub_100033D9C(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    v2 = objc_alloc_init(NSAutoreleasePool);
    v3 = sub_100030470(MPMediaPlaylistPropertyPersistentID);
    v4 = (*(*v1 + 688))(v1);
    if (dword_1001295A8)
    {
      if (v1[25] == -1 && v1[24] == -1)
      {
        if (!v3)
        {
          if (qword_10012BAC0 != -1)
          {
            goto LABEL_14;
          }

          while (1)
          {
            v5 = [qword_10012BAC8 stationCount];
            v6 = (*(*v1 + 632))(v1);
            v7 = v6 + v5;
            if (!__CFADD__(v6, v5))
            {
              v8 = __CFADD__(v4, v7);
              v4 = (v4 + v7);
              if (!v8)
              {
                break;
              }
            }

            __break(0x5500u);
LABEL_14:
            sub_1000E1EEC();
          }
        }
      }

      else
      {
        v4 = 0;
      }
    }

    return v4;
  }

  return result;
}

uint64_t sub_100033ED8(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100033EF0(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    result = dword_1001295B8;
    if (dword_1001295B8 == -1)
    {
      v1 = objc_alloc_init(NSAutoreleasePool);
      v2 = [[NSSet alloc] initWithObjects:{+[MPMediaPropertyPredicate predicateWithValue:forProperty:](MPMediaPropertyPredicate, "predicateWithValue:forProperty:", +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", sub_1000326E8(255)), MPMediaItemPropertyMediaType), 0}];
      v3 = [[MPMediaQuery alloc] initWithFilterPredicates:v2];
      dword_1001295B8 = [objc_msgSend(v3 "items")];
      v4 = v3;
      v5 = v2;

      return dword_1001295B8;
    }
  }

  return result;
}

uint64_t sub_100033FE0(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    result = dword_1001295BC;
    if (dword_1001295BC == -1)
    {
      v1 = objc_alloc_init(NSAutoreleasePool);
      v2 = [[NSSet alloc] initWithObjects:{+[MPMediaPropertyPredicate predicateWithValue:forProperty:](MPMediaPropertyPredicate, "predicateWithValue:forProperty:", +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", sub_1000326E8(65280)), MPMediaItemPropertyMediaType), 0}];
      v3 = [[MPMediaQuery alloc] initWithFilterPredicates:v2];
      dword_1001295BC = [objc_msgSend(v3 "items")];
      v4 = v3;
      v5 = v2;

      return dword_1001295BC;
    }
  }

  return result;
}

id sub_1000340D0(id result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    if (!(*(*result + 648))(result))
    {
      return 0;
    }

    v1 = objc_autoreleasePoolPush();
    v2 = [objc_msgSend(+[MPMediaQuery geniusMixesQuery](MPMediaQuery "geniusMixesQuery")];
    objc_autoreleasePoolPop(v1);
    return v2;
  }

  return result;
}

uint64_t sub_100034160(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

void sub_100034174(const void *a1, int a2, unsigned int a3, std::string *a4)
{
  if (!a1)
  {
    goto LABEL_102;
  }

  v5 = a1;
  if ((a1 & 7) != 0)
  {
    goto LABEL_102;
  }

  if (!a3)
  {
    return;
  }

  v48 = objc_alloc_init(NSAutoreleasePool);
  v8 = (*(*v5 + 704))(v5);
  v9 = v8;
  if (v8 > a2)
  {
    cf = v5;
    v45 = v8;
    if (__CFADD__(a2, a3))
    {
LABEL_103:
      __break(0x5500u);
      return;
    }

    LODWORD(v9) = a3;
    if ((a2 + a3) > v8)
    {
      v9 = (v8 - a2);
      if (__OFSUB__(v8, a2))
      {
        goto LABEL_77;
      }
    }

    [qword_10012BA98 setFilterPredicates:{+[NSSet setWithObject:](NSSet, "setWithObject:", +[MPMediaPropertyPredicate predicateWithValue:forProperty:](MPMediaPropertyPredicate, "predicateWithValue:forProperty:", +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", sub_1000326E8(0)), MPMediaItemPropertyMediaType))}];
    [qword_10012BA98 setGroupingType:6];
    [qword_10012BA98 addFilterPredicate:{+[MPMediaPropertyPredicate predicateWithValue:forProperty:](MPMediaPropertyPredicate, "predicateWithValue:forProperty:", &__kCFBooleanFalse, MPMediaPlaylistPropertyIsGeniusMix)}];
    [qword_10012BA98 addFilterPredicate:{+[MPMediaPropertyPredicate predicateWithValue:forProperty:](MPMediaPropertyPredicate, "predicateWithValue:forProperty:", &__kCFBooleanFalse, MPMediaPlaylistPropertyIsHidden)}];
    if (dword_1001295B4)
    {
      goto LABEL_9;
    }

    v26 = [qword_10012BAA0 itemNamesForRangeNoQ:a2 forProperty:{v9, MPMediaPlaylistPropertyName}];
    if (v26)
    {
      if (v9)
      {
        v27 = v26;
        v28 = 0;
        do
        {
          sub_100025D20(&__p, [objc_msgSend(v27 objectAtIndex:{v28), "UTF8String"}]);
          sub_1000349A8(a4, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          ++v28;
        }

        while (v28 < v9);
        v4 = v9;
      }

      else
      {
        v4 = 0;
      }

LABEL_46:
      [qword_10012BA98 setFilterPredicates:{+[NSSet setWithArray:](NSSet, "setWithArray:", objc_msgSend(qword_10012BA90, "allValues"))}];
      v9 = v45;
      v5 = cf;
      goto LABEL_47;
    }

    if (dword_1001295B4 || (v11 = [qword_10012BAA0 collectionsForPropertyNoQ:MPMediaPlaylistPropertyName]) == 0)
    {
LABEL_9:
      v10 = [qword_10012BA98 collections];
      v11 = v10;
      if (!dword_1001295B4 && v10)
      {
        [qword_10012BAA0 setCollectionsNoQ:+[NSArray arrayWithArray:](NSArray forProperty:{"arrayWithArray:", v10), MPMediaPlaylistPropertyName}];
      }
    }

    v12 = [v11 count];
    v4 = 0;
    if (v11)
    {
      v13 = v12;
      if (v12 > a2)
      {
        v14 = v9;
        v44 = [NSMutableArray arrayWithCapacity:v9];
        if (v13)
        {
          v15 = 0;
          v4 = 0;
          v16 = 0;
          v17 = 0;
          v43 = a2;
          v18 = v13;
          while (1)
          {
            if (0xAAAAAAAAAAAAAAABLL * ((a4->__r_.__value_.__l.__size_ - a4->__r_.__value_.__r.__words[0]) >> 3) >= v14)
            {
              goto LABEL_40;
            }

            v19 = [v11 objectAtIndex:v15];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = v16;
              v21 = v18;
              v22 = a4;
              v23 = v14;
              v24 = [v11 objectAtIndex:v15];
              if (([objc_msgSend(v24 valueForProperty:{MPMediaPlaylistPropertyPlaylistAttributes), "integerValue"}] & 4) != 0 && !objc_msgSend(objc_msgSend(v24, "valueForProperty:", MPMediaPlaylistPropertySeedItems), "count"))
              {
                v14 = v23;
                a4 = v22;
                v18 = v21;
                v16 = v20;
                a2 = v43;
                goto LABEL_28;
              }

              v17 = [v19 valueForProperty:MPMediaPlaylistPropertyName];
              v14 = v23;
              a4 = v22;
              v18 = v21;
              v16 = v20;
              a2 = v43;
            }

            if (v16 >= a2)
            {
              if (!v17)
              {
                v17 = &stru_100119FF8;
              }

              [(NSMutableArray *)v44 addObject:v17];
              sub_100025D20(&__p, [(__CFString *)v17 UTF8String]);
              sub_1000349A8(a4, &__p);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              v25 = __CFADD__(v4++, 1);
              if (v25)
              {
                goto LABEL_103;
              }
            }

            else
            {
              v16 = (v16 + 1);
            }

LABEL_28:
            if (v18 == ++v15)
            {
              goto LABEL_40;
            }
          }
        }

        v4 = 0;
LABEL_40:
        if (!dword_1001295B4)
        {
          [qword_10012BAA0 setItemNamesNoQ:v44 forRange:a2 forProperty:{a3, MPMediaPlaylistPropertyName}];
        }
      }
    }

    goto LABEL_46;
  }

  v4 = 0;
LABEL_47:
  if (dword_1001295A8 && v4 < a3)
  {
    if (qword_10012BAC0 != -1)
    {
      sub_1000E1F00();
    }

    v29 = [qword_10012BAC8 stationCount];
    v30 = v29;
    if (v9 >= a2)
    {
      LODWORD(v31) = 0;
    }

    else
    {
      LODWORD(v31) = a2 - v9;
      if (__OFSUB__(a2, v9))
      {
        goto LABEL_77;
      }
    }

    if (v29 < 1)
    {
      v9 = 0;
LABEL_74:
      v35 = v31 - v30;
      if (v31 <= v30)
      {
LABEL_78:
        v35 = 0;
        goto LABEL_79;
      }

      if (!__OFSUB__(v31, v30))
      {
LABEL_79:
        v36 = (*(*v5 + 632))(v5);
        if ((v35 & 0x80000000) != 0)
        {
          goto LABEL_99;
        }

        if (v4 >= a3)
        {
          goto LABEL_99;
        }

        v37 = v36;
        if (v36 < 1)
        {
          goto LABEL_99;
        }

        v38 = [+[MPMediaQuery geniusMixesQuery](MPMediaQuery "geniusMixesQuery")];
        if (v37 != [v38 count])
        {
          sub_1000E1F28();
        }

        if (!v38)
        {
          goto LABEL_99;
        }

        v39 = sub_10002DDA4();
        if (v39 && (v39 & 7) == 0)
        {
          cfa = sub_10002E314(v39, @"IAP_GENIUS_MIX");
          if (v35 < v37)
          {
            v40 = v35;
            v41 = v4 + 1;
            do
            {
              v42 = [v38 objectAtIndex:v40];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v42 valueForProperty:MPMediaPlaylistPropertyName])
              {
                v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@: %@", cfa, [v42 valueForProperty:MPMediaPlaylistPropertyName]);
              }

              if (!v9)
              {
                v9 = &stru_100119FF8;
              }

              sub_100025D20(&__p, [v9 UTF8String]);
              sub_1000349A8(a4, &__p);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (v37 <= ++v40)
              {
                break;
              }

              v25 = v41++ >= a3;
            }

            while (!v25);
          }

          CFRelease(cfa);
          goto LABEL_99;
        }

        goto LABEL_102;
      }

LABEL_77:
      __break(0x5515u);
      goto LABEL_78;
    }

    v32 = sub_10002DDA4();
    if (v32 && (v32 & 7) == 0)
    {
      v33 = sub_10002E314(v32, @"IAP_RADIO");
      if (v31 >= v30)
      {
        v9 = 0;
      }

      else
      {
        v31 = v31;
        do
        {
          if (qword_10012BAC0 != -1)
          {
            sub_1000E1F00();
          }

          v34 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@: %@", v33, [qword_10012BAC8 stationNameForIndex:v31]);
          if (v34)
          {
            v9 = v34;
          }

          else
          {
            v9 = &stru_100119FF8;
          }

          sub_100025D20(&__p, [v9 UTF8String]);
          sub_1000349A8(a4, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          ++v4;
          ++v31;
        }

        while (v31 < v30 && v4 < a3);
      }

      CFRelease(v33);
      goto LABEL_74;
    }

LABEL_102:
    __break(0x5516u);
    goto LABEL_103;
  }

LABEL_99:
}

void sub_100034980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1000349A8(std::string *result, const std::string *a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    size = result->__r_.__value_.__l.__size_;
    if (size >= result->__r_.__value_.__r.__words[2])
    {
      result = sub_100025220(result, a2);
      goto LABEL_7;
    }

    result = sub_1000251BC(result, a2);
    if (size < 0xFFFFFFFFFFFFFFE8)
    {
      result = (size + 24);
LABEL_7:
      v2->__r_.__value_.__l.__size_ = result;
      return result;
    }
  }

  __break(0x5513u);
  return result;
}

id sub_100034A08(id result, int a2, int a3, uint64_t a4)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else if (a3)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100034A9C;
    v4[3] = &unk_1001143A8;
    v5 = a2;
    v6 = a3;
    v4[4] = result;
    v4[5] = a4;
    return [qword_10012BAA0 performOnQueue:v4];
  }

  return result;
}

uint64_t sub_100034A9C(uint64_t result)
{
  if (*(result + 40))
  {
    v1 = (*(result + 40) & 7) == 0;
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {
    return (*(**(result + 32) + 696))(*(result + 32), *(result + 48), *(result + 52));
  }

  __break(0x5516u);
  return result;
}

void sub_100034AEC(uint64_t a1, __CFString *a2, unsigned int a3, std::string *a4)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_101;
  }

  if (!a3)
  {
    return;
  }

  v6 = objc_alloc_init(NSAutoreleasePool);
  v7 = sub_100030470(MPMediaPlaylistPropertyPersistentID);
  v8 = (*(*a1 + 688))(a1);
  v50 = v6;
  v48 = a1;
  if (v8 <= a2)
  {
    LODWORD(v9) = 0;
    goto LABEL_41;
  }

  sub_100030ED8(MPMediaPlaylistPropertyPersistentID, 0, 0);
  v9 = &off_10012B000;
  v49 = v8;
  if (!v7)
  {
    v17 = qword_10012BA98;
    v18 = [NSNumber numberWithUnsignedInt:0];
    v15 = [MPMediaPropertyPredicate predicateWithValue:v18 forProperty:MPMediaPlaylistPropertyParentPersistentID];
    v16 = v17;
    goto LABEL_12;
  }

  v10 = +[MPMediaQuery playlistsQuery];
  [(MPMediaQuery *)v10 addFilterPredicate:[MPMediaPropertyPredicate predicateWithValue:v7 forProperty:MPMediaItemPropertyPersistentID]];
  v11 = [(MPMediaQuery *)v10 collections];
  if ([(NSArray *)v11 count]== 1)
  {
    v12 = [(NSArray *)v11 objectAtIndex:0];
    if (v12)
    {
      v13 = MPMediaPlaylistPropertyParentPersistentID;
      if ([v12 valueForProperty:MPMediaPlaylistPropertyParentPersistentID])
      {
        v14 = qword_10012BA98;
        v15 = [MPMediaPropertyPredicate predicateWithValue:v7 forProperty:v13];
        v16 = v14;
LABEL_12:
        [v16 addFilterPredicate:v15];
      }
    }
  }

  v47 = v7;
  [qword_10012BA98 setGroupingType:6];
  [qword_10012BA98 addFilterPredicate:{+[MPMediaPropertyPredicate predicateWithValue:forProperty:](MPMediaPropertyPredicate, "predicateWithValue:forProperty:", &__kCFBooleanFalse, MPMediaPlaylistPropertyIsGeniusMix)}];
  [qword_10012BA98 addFilterPredicate:{+[MPMediaPropertyPredicate predicateWithValue:forProperty:](MPMediaPropertyPredicate, "predicateWithValue:forProperty:", &__kCFBooleanFalse, MPMediaPlaylistPropertyIsHidden)}];
  if (__CFADD__(a2, a3))
  {
    goto LABEL_102;
  }

  v19 = a3;
  if ((a2 + a3) > v49)
  {
    v19 = v49 - a2;
    if (__OFSUB__(v49, a2))
    {
      goto LABEL_76;
    }
  }

  v20 = [qword_10012BA98 collections];
  v21 = [v20 count];
  if (v20)
  {
    v22 = a2 + v19;
    if (!__CFADD__(a2, v19))
    {
      v31 = v22 != 0;
      v23 = v22 - 1;
      if (!v31)
      {
        goto LABEL_76;
      }

      if (v23 < v21)
      {
        v24 = 0;
        LODWORD(v9) = 0;
        v25 = 0;
        v26 = 0;
        v27 = v21;
        while (1)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((a4->__r_.__value_.__l.__size_ - a4->__r_.__value_.__r.__words[0]) >> 3) >= v19)
          {
            goto LABEL_38;
          }

          v28 = [v20 objectAtIndex:v24];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v29 = [v20 objectAtIndex:v24];
            if (([objc_msgSend(v29 valueForProperty:{MPMediaPlaylistPropertyPlaylistAttributes), "integerValue"}] & 4) != 0 && !objc_msgSend(objc_msgSend(v29, "valueForProperty:", MPMediaPlaylistPropertySeedItems), "count"))
            {
              goto LABEL_34;
            }

            v26 = [v28 valueForProperty:MPMediaPlaylistPropertyName];
          }

          if (v25 >= a2)
          {
            if (!v26)
            {
              v26 = &stru_100119FF8;
            }

            sub_100025D20(&__p, [(__CFString *)v26 UTF8String]);
            sub_1000349A8(a4, &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v31 = __CFADD__(v9, 1);
            LODWORD(v9) = v9 + 1;
            if (v31)
            {
              goto LABEL_102;
            }
          }

          else
          {
            ++v25;
          }

LABEL_34:
          if (v27 == ++v24)
          {
            goto LABEL_38;
          }
        }
      }

      goto LABEL_37;
    }

LABEL_102:
    __break(0x5500u);
    return;
  }

LABEL_37:
  LODWORD(v9) = 0;
LABEL_38:
  v7 = v47;
  if (v47)
  {
    sub_10003078C(MPMediaPlaylistPropertyPersistentID, v47);
  }

  [qword_10012BA98 setFilterPredicates:{+[NSSet setWithArray:](NSSet, "setWithArray:", objc_msgSend(qword_10012BA90, "allValues"))}];
  a2 = a2;
  v8 = v49;
LABEL_41:
  if (v7)
  {
    v30 = 1;
  }

  else
  {
    v30 = dword_1001295A8 == 0;
  }

  v31 = v30 || v9 >= a3;
  if (!v31)
  {
    if (qword_10012BAC0 != -1)
    {
      sub_1000E1F00();
    }

    v32 = [qword_10012BAC8 stationCount];
    v33 = v32;
    if (v8 >= a2)
    {
      LODWORD(v34) = 0;
    }

    else
    {
      v38 = __OFSUB__(a2, v8);
      LODWORD(v34) = a2 - v8;
      if (v38)
      {
        goto LABEL_76;
      }
    }

    if (v32 < 1)
    {
      a2 = 0;
LABEL_73:
      v38 = __OFSUB__(v34, v33);
      v39 = v34 - v33;
      if ((v39 < 0) ^ v38 | (v39 == 0))
      {
LABEL_77:
        v39 = 0;
        goto LABEL_78;
      }

      if (!v38)
      {
LABEL_78:
        v40 = (*(*v48 + 632))(v48);
        if (v39 < 0)
        {
          goto LABEL_98;
        }

        if (v9 >= a3)
        {
          goto LABEL_98;
        }

        v41 = v40;
        if (v40 < 1)
        {
          goto LABEL_98;
        }

        v42 = [+[MPMediaQuery geniusMixesQuery](MPMediaQuery "geniusMixesQuery")];
        if (v41 != [v42 count])
        {
          sub_1000E1F58();
        }

        if (!v42)
        {
          goto LABEL_98;
        }

        v43 = sub_10002DDA4();
        if (v43 && (v43 & 7) == 0)
        {
          cf = sub_10002E314(v43, @"IAP_GENIUS_MIX");
          if (v39 < v41)
          {
            v44 = v39;
            v45 = v9 + 1;
            do
            {
              v46 = [v42 objectAtIndex:v44];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v46 valueForProperty:MPMediaPlaylistPropertyName])
              {
                a2 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@: %@", cf, [v46 valueForProperty:MPMediaPlaylistPropertyName]);
              }

              if (!a2)
              {
                a2 = &stru_100119FF8;
              }

              sub_100025D20(&__p, [(__CFString *)a2 UTF8String]);
              sub_1000349A8(a4, &__p);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (v41 <= ++v44)
              {
                break;
              }

              v31 = v45++ >= a3;
            }

            while (!v31);
          }

          CFRelease(cf);
          goto LABEL_98;
        }

        goto LABEL_101;
      }

LABEL_76:
      __break(0x5515u);
      goto LABEL_77;
    }

    v35 = sub_10002DDA4();
    if (v35 && (v35 & 7) == 0)
    {
      v36 = sub_10002E314(v35, @"IAP_RADIO");
      if (v34 >= v33)
      {
        a2 = 0;
      }

      else
      {
        v34 = v34;
        do
        {
          if (qword_10012BAC0 != -1)
          {
            sub_1000E1F00();
          }

          v37 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@: %@", v36, [qword_10012BAC8 stationNameForIndex:v34]);
          if (v37)
          {
            a2 = v37;
          }

          else
          {
            a2 = &stru_100119FF8;
          }

          sub_100025D20(&__p, [(__CFString *)a2 UTF8String]);
          sub_1000349A8(a4, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          LODWORD(v9) = v9 + 1;
          ++v34;
        }

        while (v34 < v33 && v9 < a3);
      }

      CFRelease(v36);
      goto LABEL_73;
    }

LABEL_101:
    __break(0x5516u);
    goto LABEL_102;
  }

LABEL_98:
}

void sub_100035238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10003525C(uint64_t a1, int a2, unsigned int a3, std::string *a4)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_59;
  }

  LODWORD(v7) = a2;
  context = objc_autoreleasePoolPush();
  if (dword_1001295A8)
  {
    if ((*(a1 + 100) & 0x80000000) == 0)
    {
      if (dword_1001295AC > v7)
      {
        v8 = sub_10002DDA4();
        if (!v8 || (v8 & 7) != 0)
        {
          goto LABEL_59;
        }

        v9 = sub_10002E314(v8, @"IAP_ITUNES_RADIO");
        v10 = v7 + a3;
        if (!__OFADD__(v7, a3))
        {
          v11 = v9;
          if (v10 > v7 && dword_1001295AC > v7)
          {
            v12 = (v7 + 1);
            do
            {
              sub_100025D20(&__p, [[NSString stringWithFormat:?];
              sub_1000349A8(a4, &__p);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (v12 >= v10)
              {
                break;
              }

              v13 = v12 < dword_1001295AC;
              v12 = (v12 + 1);
            }

            while (v13);
          }

LABEL_29:
          CFRelease(v11);
          goto LABEL_50;
        }

LABEL_58:
        __break(0x5500u);
LABEL_59:
        __break(0x5516u);
        goto LABEL_60;
      }

LABEL_49:
      sub_100025CA4(a4, a4->__r_.__value_.__r.__words[0]);
      goto LABEL_50;
    }

    if ((*(a1 + 96) & 0x80000000) == 0)
    {
      if (dword_1001295AC > v7)
      {
        v14 = sub_10002DDA4();
        if (!v14 || (v14 & 7) != 0)
        {
          goto LABEL_59;
        }

        v15 = sub_10002E314(v14, @"IAP_ITUNES_GENIUS_MIX");
        v16 = v7 + a3;
        if (!__OFADD__(v7, a3))
        {
          v11 = v15;
          if (v16 > v7 && dword_1001295AC > v7)
          {
            v17 = (v7 + 1);
            do
            {
              sub_100025D20(&__p, [[NSString stringWithFormat:?];
              sub_1000349A8(a4, &__p);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (v17 >= v16)
              {
                break;
              }

              v13 = v17 < dword_1001295AC;
              v17 = (v17 + 1);
            }

            while (v13);
          }

          goto LABEL_29;
        }

        goto LABEL_58;
      }

      goto LABEL_49;
    }
  }

  v18 = v7;
  v19 = a3;
  v20 = byte_10012BAB8 | (dword_1001295B4 != 0);
  if (!(byte_10012BAB8 & 1 | (dword_1001295B4 != 0)))
  {
    v21 = [qword_10012BAA0 itemNamesForRange:v7 forProperty:{a3, MPMediaItemPropertyTitle}];
    if (v21)
    {
      if (a3)
      {
        v22 = v21;
        v23 = 0;
        do
        {
          sub_100025D20(&__p, [objc_msgSend(v22 objectAtIndex:{v23), "UTF8String"}]);
          sub_1000349A8(a4, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          ++v23;
        }

        while (a3 != v23);
      }

      goto LABEL_50;
    }
  }

  v24 = [qword_10012BA98 items];
  if (!v24)
  {
LABEL_50:
    objc_autoreleasePoolPop(context);
    return;
  }

  v25 = v7 + a3;
  if (__CFADD__(v7, a3))
  {
    goto LABEL_58;
  }

  v26 = v25 - 1;
  if (v25)
  {
    v27 = v24;
    if ([v24 count] <= v26)
    {
      goto LABEL_50;
    }

    if (v20)
    {
      if (v26 < v7)
      {
        goto LABEL_50;
      }

      while (1)
      {
        sub_100025D20(&__p, [objc_msgSend(objc_msgSend(v27 objectAtIndex:{v18), "valueForProperty:", MPMediaItemPropertyTitle), "UTF8String"}]);
        sub_1000349A8(a4, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v18 == 0xFFFFFFFFLL)
        {
          break;
        }

        if (v26 < ++v18)
        {
          goto LABEL_50;
        }
      }
    }

    else
    {
      v28 = [NSMutableArray arrayWithCapacity:a3];
      if (v26 < v7)
      {
LABEL_57:
        [qword_10012BAA0 setItemNames:v28 forRange:v18 forProperty:{v19, MPMediaItemPropertyTitle}];
        goto LABEL_50;
      }

      v7 = v7;
      while (1)
      {
        v29 = [objc_msgSend(v27 objectAtIndex:{v7), "valueForProperty:", MPMediaItemPropertyTitle}];
        [(NSMutableArray *)v28 addObject:v29];
        sub_100025D20(&__p, [v29 UTF8String]);
        sub_1000349A8(a4, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v7 == 0xFFFFFFFFLL)
        {
          break;
        }

        if (v26 < ++v7)
        {
          goto LABEL_57;
        }
      }
    }

    goto LABEL_58;
  }

LABEL_60:
  __break(0x5515u);
}

void sub_100035670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10003569C(uint64_t a1, int a2, unsigned int a3, std::string *a4)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
    return;
  }

  v9 = objc_alloc_init(NSAutoreleasePool);
  v7 = [qword_10012BA90 objectForKey:MPMediaItemPropertyArtistPersistentID];
  if (v7)
  {
    [qword_10012BA90 removeObjectForKey:MPMediaItemPropertyArtistPersistentID];
  }

  v8 = [qword_10012BA90 objectForKey:MPMediaItemPropertyAlbumPersistentID];
  if (!v8)
  {
    if (!v7)
    {
      sub_1000358D0(MPMediaItemPropertyArtist, a2, a3, a4, (byte_10012BAB8 & 1) == 0);
      goto LABEL_9;
    }

    [qword_10012BA98 setFilterPredicates:{+[NSSet setWithArray:](NSSet, "setWithArray:", objc_msgSend(qword_10012BA90, "allValues"))}];
    sub_1000358D0(MPMediaItemPropertyArtist, a2, a3, a4, (byte_10012BAB8 & 1) == 0);
LABEL_14:
    [qword_10012BA90 setObject:v7 forKey:MPMediaItemPropertyArtistPersistentID];
    if (!v8)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  [qword_10012BA90 removeObjectForKey:MPMediaItemPropertyAlbumPersistentID];
  [qword_10012BA98 setFilterPredicates:{+[NSSet setWithArray:](NSSet, "setWithArray:", objc_msgSend(qword_10012BA90, "allValues"))}];
  sub_1000358D0(MPMediaItemPropertyArtist, a2, a3, a4, (byte_10012BAB8 & 1) == 0);
  if (v7)
  {
    goto LABEL_14;
  }

LABEL_7:
  [qword_10012BA90 setObject:v8 forKey:MPMediaItemPropertyAlbumPersistentID];
LABEL_8:
  [qword_10012BA98 setFilterPredicates:{+[NSSet setWithArray:](NSSet, "setWithArray:", objc_msgSend(qword_10012BA90, "allValues"))}];
LABEL_9:
}

void sub_1000358D0(uint64_t a1, int a2, unsigned int a3, std::string *a4, int a5)
{
  if (a3)
  {
    LODWORD(v8) = a2;
    v10 = dword_1001295B4;
    v31 = objc_alloc_init(NSAutoreleasePool);
    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = a5 == 0;
    }

    if (v11)
    {
      v12 = [qword_10012BA98 collections];
      if (!v12)
      {
        goto LABEL_45;
      }

      v13 = v8 + a3;
      if (!__CFADD__(v8, a3))
      {
        v14 = v13 - 1;
        if (v13)
        {
          v15 = v12;
          if ([v12 count] > v14 && v14 >= v8)
          {
            v17 = v8;
            while (1)
            {
              v18 = [objc_msgSend(objc_msgSend(v15 objectAtIndex:{v17), "representativeItem"), "valueForProperty:", a1}];
              if (!v18)
              {
                v18 = &stru_100119FF8;
              }

              sub_100025D20(&__p, [(__CFString *)v18 UTF8String]);
              sub_1000349A8(a4, &__p);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (v17 == 0xFFFFFFFFLL)
              {
                goto LABEL_47;
              }

              if (v14 < ++v17)
              {
                goto LABEL_45;
              }
            }
          }

          goto LABEL_45;
        }

LABEL_48:
        __break(0x5515u);
        return;
      }
    }

    else
    {
      v19 = a3;
      v20 = [qword_10012BAA0 itemNamesForRange:v8 forProperty:{a3, a1}];
      if (v20)
      {
        v21 = v20;
        v22 = 0;
        do
        {
          sub_100025D20(&__p, [objc_msgSend(v21 objectAtIndex:{v22), "UTF8String"}]);
          sub_1000349A8(a4, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          ++v22;
        }

        while (a3 != v22);
        goto LABEL_45;
      }

      v30 = v8;
      v23 = [qword_10012BAA0 collectionsForProperty:a1];
      if (!v23)
      {
        v24 = [qword_10012BA98 collections];
        if (!v24)
        {
          goto LABEL_45;
        }

        v23 = v24;
        [qword_10012BAA0 setCollections:+[NSArray arrayWithArray:](NSArray forProperty:{"arrayWithArray:", v24), a1}];
      }

      v25 = v8 + a3;
      if (!__CFADD__(v8, a3))
      {
        v26 = v25 - 1;
        if (v25)
        {
          if ([v23 count] > v26)
          {
            v27 = [NSMutableArray arrayWithCapacity:a3];
            if (v26 >= v8)
            {
              v8 = v8;
              do
              {
                v28 = [objc_msgSend(objc_msgSend(v23 objectAtIndex:{v8), "representativeItem"), "valueForProperty:", a1}];
                if (v28)
                {
                  v29 = v28;
                }

                else
                {
                  v29 = &stru_100119FF8;
                }

                [(NSMutableArray *)v27 addObject:v29];
                sub_100025D20(&__p, [(__CFString *)v29 UTF8String]);
                sub_1000349A8(a4, &__p);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (v8 == 0xFFFFFFFFLL)
                {
                  goto LABEL_47;
                }
              }

              while (v26 >= ++v8);
            }

            [qword_10012BAA0 setItemNames:v27 forRange:v30 forProperty:{v19, a1}];
          }

LABEL_45:

          return;
        }

        goto LABEL_48;
      }
    }

LABEL_47:
    __break(0x5500u);
    goto LABEL_48;
  }
}

void sub_100035BC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100035BEC(uint64_t a1, int a2, unsigned int a3, std::string *a4)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v9 = objc_alloc_init(NSAutoreleasePool);
    v7 = [qword_10012BA90 objectForKey:MPMediaItemPropertyAlbumPersistentID];
    if (v7)
    {
      v8 = v7;
      [qword_10012BA90 removeObjectForKey:MPMediaItemPropertyAlbumPersistentID];
      [qword_10012BA98 setFilterPredicates:{+[NSSet setWithArray:](NSSet, "setWithArray:", objc_msgSend(qword_10012BA90, "allValues"))}];
      sub_1000358D0(MPMediaItemPropertyAlbumTitle, a2, a3, a4, (byte_10012BAB8 & 1) == 0);
      [qword_10012BA90 setObject:v8 forKey:MPMediaItemPropertyAlbumPersistentID];
      [qword_10012BA98 setFilterPredicates:{+[NSSet setWithArray:](NSSet, "setWithArray:", objc_msgSend(qword_10012BA90, "allValues"))}];
    }

    else
    {
      sub_1000358D0(MPMediaItemPropertyAlbumTitle, a2, a3, a4, (byte_10012BAB8 & 1) == 0);
    }
  }
}

void sub_100035D6C(uint64_t a1, int a2, unsigned int a3, std::string *a4)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v7 = objc_alloc_init(NSAutoreleasePool);
    [qword_10012BA98 setFilterPredicates:{+[NSSet setWithObject:](NSSet, "setWithObject:", +[MPMediaPropertyPredicate predicateWithValue:forProperty:](MPMediaPropertyPredicate, "predicateWithValue:forProperty:", +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", sub_1000326E8(0)), MPMediaItemPropertyMediaType))}];
    sub_1000358D0(MPMediaItemPropertyGenre, a2, a3, a4, 1);
    [qword_10012BA98 setFilterPredicates:{+[NSSet setWithArray:](NSSet, "setWithArray:", objc_msgSend(qword_10012BA90, "allValues"))}];
  }
}

void sub_100035EA0(uint64_t a1, int a2, unsigned int a3, std::string *a4)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
    return;
  }

  v9 = objc_alloc_init(NSAutoreleasePool);
  v7 = [qword_10012BA90 objectForKey:MPMediaItemPropertyComposerPersistentID];
  if (v7)
  {
    [qword_10012BA90 removeObjectForKey:MPMediaItemPropertyComposerPersistentID];
  }

  v8 = [qword_10012BA90 objectForKey:MPMediaItemPropertyAlbumPersistentID];
  if (!v8)
  {
    if (!v7)
    {
      sub_1000358D0(MPMediaItemPropertyComposer, a2, a3, a4, (byte_10012BAB8 & 1) == 0);
      goto LABEL_9;
    }

    [qword_10012BA98 setFilterPredicates:{+[NSSet setWithArray:](NSSet, "setWithArray:", objc_msgSend(qword_10012BA90, "allValues"))}];
    sub_1000358D0(MPMediaItemPropertyComposer, a2, a3, a4, (byte_10012BAB8 & 1) == 0);
LABEL_14:
    [qword_10012BA90 setObject:v7 forKey:MPMediaItemPropertyComposerPersistentID];
    if (!v8)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  [qword_10012BA90 removeObjectForKey:MPMediaItemPropertyAlbumPersistentID];
  [qword_10012BA98 setFilterPredicates:{+[NSSet setWithArray:](NSSet, "setWithArray:", objc_msgSend(qword_10012BA90, "allValues"))}];
  sub_1000358D0(MPMediaItemPropertyComposer, a2, a3, a4, (byte_10012BAB8 & 1) == 0);
  if (v7)
  {
    goto LABEL_14;
  }

LABEL_7:
  [qword_10012BA90 setObject:v8 forKey:MPMediaItemPropertyAlbumPersistentID];
LABEL_8:
  [qword_10012BA98 setFilterPredicates:{+[NSSet setWithArray:](NSSet, "setWithArray:", objc_msgSend(qword_10012BA90, "allValues"))}];
LABEL_9:
}

void sub_1000360D4(uint64_t a1, int a2, unsigned int a3, std::string *a4)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
    return;
  }

  v11 = objc_alloc_init(NSAutoreleasePool);
  v7 = MPMediaItemPropertySeriesName;
  v8 = [qword_10012BA90 objectForKey:MPMediaItemPropertySeriesName];
  if (v8)
  {
    [qword_10012BA90 removeObjectForKey:v7];
  }

  v9 = MPMediaItemPropertySeasonNumber;
  v10 = [qword_10012BA90 objectForKey:MPMediaItemPropertySeasonNumber];
  if (!v10)
  {
    if (!v8)
    {
      sub_1000358D0(v7, a2, a3, a4, 0);
      goto LABEL_9;
    }

    [qword_10012BA98 setFilterPredicates:{+[NSSet setWithArray:](NSSet, "setWithArray:", objc_msgSend(qword_10012BA90, "allValues"))}];
    sub_1000358D0(v7, a2, a3, a4, 0);
LABEL_14:
    [qword_10012BA90 setObject:v8 forKey:v7];
    if (!v10)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  [qword_10012BA90 removeObjectForKey:v9];
  [qword_10012BA98 setFilterPredicates:{+[NSSet setWithArray:](NSSet, "setWithArray:", objc_msgSend(qword_10012BA90, "allValues"))}];
  sub_1000358D0(v7, a2, a3, a4, 0);
  if (v8)
  {
    goto LABEL_14;
  }

LABEL_7:
  [qword_10012BA90 setObject:v10 forKey:v9];
LABEL_8:
  [qword_10012BA98 setFilterPredicates:{+[NSSet setWithArray:](NSSet, "setWithArray:", objc_msgSend(qword_10012BA90, "allValues"))}];
LABEL_9:
}

void sub_1000362CC(uint64_t a1, int a2, int a3, std::string *a4)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_19;
  }

  LODWORD(v6) = a2;
  v7 = objc_alloc_init(NSAutoreleasePool);
  if (qword_10012BAC0 != -1)
  {
    sub_1000E1EEC();
  }

  if (![qword_10012BAC8 showAudioBooks])
  {
    goto LABEL_17;
  }

  v8 = +[MPMediaQuery audiobooksQuery];
  [(MPMediaQuery *)v8 setGroupingType:0];
  v9 = [(MPMediaQuery *)v8 items];
  if ((v6 & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  v10 = v9;
  if (!v9)
  {
    goto LABEL_17;
  }

  v11 = [(NSArray *)v9 count];
  v12 = v6 + a3;
  if (__CFADD__(v6, a3))
  {
LABEL_18:
    __break(0x5500u);
LABEL_19:
    __break(0x5516u);
    goto LABEL_20;
  }

  v13 = v12 - 1;
  if (v12)
  {
    if (v11 > v13 && v13 >= v6)
    {
      v6 = v6;
      do
      {
        sub_100025D20(&__p, [objc_msgSend(-[NSArray objectAtIndex:](v10 objectAtIndex:{v6), "valueForProperty:", MPMediaItemPropertyTitle), "UTF8String"}]);
        sub_1000349A8(a4, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v6 == 0xFFFFFFFFLL)
        {
          goto LABEL_18;
        }
      }

      while (v13 >= ++v6);
    }

LABEL_17:

    return;
  }

LABEL_20:
  __break(0x5515u);
}

void sub_100036424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100036440(uint64_t a1, int a2, unsigned int a3, std::string *a4)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v8 = objc_alloc_init(NSAutoreleasePool);
    if (byte_10012BAB8)
    {
      v7 = 1024;
    }

    else
    {
      v7 = 1026;
    }

    [qword_10012BA98 setFilterPredicates:{+[NSSet setWithObject:](NSSet, "setWithObject:", +[MPMediaPropertyPredicate predicateWithValue:forProperty:](MPMediaPropertyPredicate, "predicateWithValue:forProperty:", +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", sub_1000326E8(v7)), MPMediaItemPropertyMediaType))}];
    sub_1000358D0(MPMediaItemPropertyAlbumTitle, a2, a3, a4, 0);
    [qword_10012BA98 setFilterPredicates:{+[NSSet setWithArray:](NSSet, "setWithArray:", objc_msgSend(qword_10012BA90, "allValues"))}];
  }
}

void sub_10003657C(uint64_t a1, int a2, unsigned int a3, std::string *a4)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v8 = objc_alloc_init(NSAutoreleasePool);
    if (qword_10012BAC0 != -1)
    {
      sub_1000E1EEC();
    }

    if ([qword_10012BAC8 showITunesU])
    {
      if (byte_10012BAB8)
      {
        v7 = 4096;
      }

      else
      {
        v7 = 4104;
      }

      [qword_10012BA98 setFilterPredicates:{+[NSSet setWithObject:](NSSet, "setWithObject:", +[MPMediaPropertyPredicate predicateWithValue:forProperty:](MPMediaPropertyPredicate, "predicateWithValue:forProperty:", +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", sub_1000326E8(v7)), MPMediaItemPropertyMediaType))}];
      sub_1000358D0(MPMediaItemPropertyAlbumTitle, a2, a3, a4, 0);
      [qword_10012BA98 setFilterPredicates:{+[NSSet setWithArray:](NSSet, "setWithArray:", objc_msgSend(qword_10012BA90, "allValues"))}];
    }
  }
}

void sub_1000366E0(uint64_t a1, int a2, int a3, std::string *a4)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_22;
  }

  LODWORD(v6) = a2;
  v14 = objc_alloc_init(NSAutoreleasePool);
  v7 = [+[MPMediaQuery geniusMixesQuery](MPMediaQuery "geniusMixesQuery")];
  if (!v7)
  {
LABEL_20:

    return;
  }

  v8 = v6 + a3;
  if (__CFADD__(v6, a3))
  {
LABEL_21:
    __break(0x5500u);
LABEL_22:
    __break(0x5516u);
    goto LABEL_23;
  }

  v9 = v8 - 1;
  if (v8)
  {
    v10 = v7;
    if ([v7 count] <= v9 || v9 < v6)
    {
      goto LABEL_20;
    }

    v12 = 0;
    v6 = v6;
    while (1)
    {
      v13 = [v10 objectAtIndex:v6];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [v13 valueForProperty:MPMediaPlaylistPropertyName];
      }

      if (!v12)
      {
        v12 = &stru_100119FF8;
      }

      sub_100025D20(&__p, [(__CFString *)v12 UTF8String]);
      sub_1000349A8(a4, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v6 == 0xFFFFFFFFLL)
      {
        goto LABEL_21;
      }

      if (v9 < ++v6)
      {
        goto LABEL_20;
      }
    }
  }

LABEL_23:
  __break(0x5515u);
}

void sub_100036840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100036880(_BOOL8 result)
{
  if (!result || result & 7)
  {
    __break(0x5516u);
  }

  else
  {
    AppBooleanValue = dword_1001295C0;
    if (dword_1001295C0 == -1)
    {
      AppBooleanValue = CFPreferencesGetAppBooleanValue(@"GeniusMixSupport", @"com.apple.iapd", 0);
      dword_1001295C0 = AppBooleanValue;
    }

    return AppBooleanValue != 0;
  }

  return result;
}

void sub_1000368E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    if (qword_10012BAC0 != -1)
    {
      sub_1000E1EEC();
    }

    if (![qword_10012BAC8 showMusic])
    {
      NSLog(@"%s:%s:%d no systemMusicPlayer", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/MediaLibrary.mm", "CreateGeniusPlaylistForTrack", 2802);
      return;
    }

    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v5 = sub_100044A30();
    if (v5)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100036A2C;
      block[3] = &unk_1001143E0;
      block[5] = a2;
      block[6] = a3;
      block[4] = &v7;
      dispatch_sync(v5, block);
      if (*(v8 + 24) < 2u)
      {
        _Block_object_dispose(&v7, 8);
        return;
      }

      goto LABEL_12;
    }
  }

  __break(0x5510u);
LABEL_12:
  __break(0x550Au);
}

uint64_t sub_100036A2C(void *a1)
{
  v2 = sub_100044A24();
  result = a1[5];
  if (result)
  {
    v4 = (a1[5] & 7) == 0;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = **result;
  if (!result || (result & 7) != 0)
  {
    goto LABEL_16;
  }

  result = [v2 setQueueWithSeedItems:{+[NSArray arrayWithObject:](NSArray, "arrayWithObject:", (*(*result + 408))(result))}];
  if (result)
  {
    result = sub_1000388B8();
    if (!result || (result & 7) != 0)
    {
LABEL_16:
      __break(0x5516u);
      return result;
    }

    (*(*result + 520))(result, a1[6]);
    result = [v2 play];
    *(*(a1[4] + 8) + 24) = 1;
  }

  return result;
}

uint64_t sub_100036B60(uint64_t result, char **lpsrc)
{
  {
    __break(0x5516u);
  }

  else
  {
    v3 = (*(*result + 128))(result);
    v4 = [v3 valueForProperty:MPMediaPlaylistPropertySeedItems];
    v5 = [v4 count];
    if (!v5)
    {
      return v5 != 0;
    }

    v6 = dispatch_semaphore_create(0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100036CD4;
    v7[3] = &unk_100114418;
    v7[4] = v6;
    result = [v3 populateWithSeedItem:objc_msgSend(v4 completionBlock:{"lastObject"), v7}];
    if (v6)
    {
      dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v6);
      return v5 != 0;
    }
  }

  __break(0x5510u);
  return result;
}

NSObject *sub_100036CD4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return dispatch_semaphore_signal(result);
  }

  __break(0x5510u);
  return result;
}

uint64_t sub_100036CE4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

id sub_100036CFC(id result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    if (!a2)
    {
      return 0;
    }

    result = objc_alloc_init(NSAutoreleasePool);
    if ((a2 & 7) == 0)
    {
      v5 = *a2;
      if ((*a2 & 7) != 0 || (v6 = *(a2 + 8), (v6 & 7) != 0))
      {
LABEL_13:
        __break(0x5517u);
      }

      else
      {
        v2 = result;
        while (1)
        {
          v3 = v5 >= v6;
          if (v5 >= v6)
          {
            break;
          }

          if (!v5)
          {
            goto LABEL_17;
          }

          result = sub_1000331F4(*v5);
          if (!result)
          {
            break;
          }

          if (v5 >= 0xFFFFFFFFFFFFFFF8)
          {
            goto LABEL_18;
          }

          ++v5;
          v6 = *(a2 + 8);
          if ((v6 & 7) != 0)
          {
            goto LABEL_13;
          }
        }
      }

      return v3;
    }
  }

LABEL_17:
  __break(0x5516u);
LABEL_18:
  __break(0x5513u);
  return result;
}

id sub_100036DB4()
{
  if (qword_10012BAC0 != -1)
  {
    sub_1000E1EEC();
  }

  v1 = qword_10012BAC8;

  return [v1 showMusic];
}

uint64_t sub_100036DF8(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 100);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100036E10(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 96);
  }

  __break(0x5516u);
  return result;
}

id sub_100037598(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = (*(a1 + 32) + 8);
  if ((v1 & 7) != 0)
  {
    goto LABEL_12;
  }

  v3 = *v1;
  v4 = [*v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = (*(a1 + 32) + 8);
        if ((v8 & 7) != 0)
        {
          goto LABEL_12;
        }

        [objc_msgSend(*v8 objectForKey:{*(*(&v11 + 1) + 8 * i), v11), "removeNonGlobalCache"}];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = (*(a1 + 32) + 8);
  if ((v9 & 7) != 0)
  {
LABEL_12:
    __break(0x5516u);
  }

  return [*v9 removeAllObjects];
}

id sub_100037874(uint64_t a1)
{
  result = [*(a1 + 32) globalItemCountForPropertyNoQ:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

id sub_100037904(id result, id *a2)
{
  if (!a2 || (a2 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v3 = result;
    v4 = [*a2 objectForKey:result];
    if (!v4)
    {
      v4 = [[MediaLibraryPropertyCache alloc] initForProperty:v3];
      v5 = *a2;
      if (!*a2)
      {
        v5 = objc_alloc_init(NSMutableDictionary);
        *a2 = v5;
      }

      [v5 setObject:v4 forKey:v3];
    }

    return v4;
  }

  return result;
}

id sub_100037CB4(uint64_t a1)
{
  result = [*(a1 + 32) itemCountForPropertyNoQ:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

id sub_100037DE0(uint64_t a1)
{
  result = [*(a1 + 32) itemNamesForRangeNoQ:*(a1 + 56) forProperty:{*(a1 + 64), *(a1 + 40)}];
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

id sub_100038080(uint64_t a1)
{
  result = [*(a1 + 32) collectionsForPropertyNoQ:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

id sub_100038180(uint64_t a1)
{
  result = [*(a1 + 32) isEqualToString:MPMediaItemPropertyGenre];
  if ((result & 1) != 0 || (result = [*(a1 + 32) isEqualToString:MPMediaPlaylistPropertyName], result))
  {
    v3 = (*(a1 + 40) + 8);
    if ((v3 & 7) != 0)
    {
      goto LABEL_20;
    }

    v4 = *v3;
    v5 = &MPMediaItemPropertyArtist;
    goto LABEL_5;
  }

  result = [*(a1 + 32) isEqualToString:MPMediaItemPropertyArtist];
  if (result)
  {
    v10 = (*(a1 + 40) + 8);
    if ((v10 & 7) != 0)
    {
      goto LABEL_20;
    }

    v4 = *v10;
    v5 = &MPMediaItemPropertyComposer;
LABEL_5:
    v6 = *v5;
    goto LABEL_6;
  }

  result = [*(a1 + 32) isEqualToString:MPMediaItemPropertyComposer];
  if (result)
  {
    v11 = (*(a1 + 40) + 8);
    if ((v11 & 7) != 0)
    {
      goto LABEL_20;
    }

    v4 = *v11;
    v6 = MPMediaItemPropertyArtist;
LABEL_6:
    result = [v4 removeObjectForKey:v6];
    v7 = (*(a1 + 40) + 8);
    if ((v7 & 7) == 0)
    {
      result = [*v7 removeObjectForKey:MPMediaItemPropertyAlbumTitle];
      goto LABEL_8;
    }

LABEL_20:
    __break(0x5516u);
    return result;
  }

  result = [*(a1 + 32) isEqualToString:MPMediaItemPropertyAlbumTitle];
  if (!result)
  {
    return result;
  }

LABEL_8:
  v8 = (*(a1 + 40) + 8);
  if ((v8 & 7) != 0)
  {
    goto LABEL_20;
  }

  v9 = *v8;

  return [v9 removeObjectForKey:MPMediaItemPropertyTitle];
}

const char *sub_100038378(const char *result, unint64_t a2, uint64_t a3, uint64_t a4, char *a5, int a6)
{
  if (result && a2 && a3 && a4)
  {
    v10 = result;
    v11 = 0;
    v12 = 0;
    v13 = ~result;
    v14 = ~a3;
    while (v11 < 0 != v13 >= v11)
    {
      result = fmtcheck(a5, "%02X");
      if (v12 > v14)
      {
        break;
      }

      result = sprintf(&v10[v11], result, *(a3 + v12));
      v15 = __OFADD__(v11, result);
      v11 += result;
      if (v15)
      {
        goto LABEL_16;
      }

      if (v11 >= a2)
      {
        return result;
      }

      if (a4 == ++v12)
      {
        if (!a6)
        {
          return result;
        }

        if (v11 < 0 != v13 >= v11)
        {
          *&v10[v11] = 10;
          return result;
        }

        break;
      }
    }

    __break(0x5513u);
LABEL_16:
    __break(0x5500u);
  }

  return result;
}

uint64_t sub_10003848C()
{
  v2.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v2.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  result = gettimeofday(&v2, 0);
  v1 = 1000 * LODWORD(v2.tv_sec);
  if ((v2.tv_sec * 1000) >> 64 != (1000 * v2.tv_sec) >> 63)
  {
    __break(0x550Cu);
    goto LABEL_5;
  }

  result = (v1 + v2.tv_usec / 1000);
  if (__CFADD__(v1, v2.tv_usec / 1000))
  {
LABEL_5:
    __break(0x5500u);
  }

  return result;
}

void sub_10003851C()
{
  sub_1000CA360(0, 3, 0);
  qword_10012C610 = v0;
  sub_1000CA360(0, 3, 0);
  qword_10012C618 = v1;
  sub_1000CA360(0, 3, 0);
  qword_10012C620 = v2;
  sub_1000CA360(0, 3, 0);
  qword_10012C628 = v3;
  sub_1000CA360(0, 3, 0);
  qword_10012C630 = v4;
  sub_1000CA360(0, 3, 0);
  qword_10012C640 = v5;
}

void *sub_1000385F0(void *result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    sub_1000187F0(result);
    return v1;
  }

  return result;
}

uint64_t sub_1000387EC(uint64_t a1)
{
  result = sub_100067278();
  if (((*(a1 + 32) - 92) & 3) != 0)
  {
    goto LABEL_11;
  }

  result = sub_10006814C(*(*(a1 + 32) + 164), result, 1);
  if (result < 0x64)
  {
    return result;
  }

  if (qword_10012BB28 != -1)
  {
    sub_1000E1F88();
  }

  result = qword_10012BB20;
  if (!qword_10012BB20 || (qword_10012BB20 & 7) != 0)
  {
LABEL_11:
    __break(0x5516u);
    return result;
  }

  v3 = *(*qword_10012BB20 + 56);

  return v3();
}

uint64_t sub_1000388B8()
{
  if (qword_10012BB28 != -1)
  {
    sub_1000E1F88();
  }

  return qword_10012BB20;
}

uint64_t sub_1000388F0(uint64_t a1)
{
  result = sub_100067278();
  if (((*(a1 + 32) - 92) & 3) != 0)
  {
    goto LABEL_9;
  }

  result = sub_10006814C(*(*(a1 + 32) + 164), result, 1);
  if (result < 0x7D0)
  {
    return result;
  }

  *(*(a1 + 32) + 160) = 0;
  if (((*(a1 + 32) - 92) & 3) != 0)
  {
    goto LABEL_9;
  }

  *(*(a1 + 32) + 164) = 0;
  *(*(a1 + 32) + 168) = 1;
  if (dword_100129630 == 4)
  {
    dword_100129630 = dword_10012962C;
  }

  v3 = *(a1 + 32);
  if (((v3 + 104) & 7) != 0)
  {
LABEL_9:
    __break(0x5516u);
    return result;
  }

  v4 = *(v3 + 104);
  v5 = *(a1 + 32);
  return MRMediaRemoteGetNowPlayingInfo();
}

id sub_1000389F0(uint64_t a1, uint64_t a2)
{
  NSLog(@"MR: %s:%d call _handleNowPlayingInfo:", "[MediaPlayerHelper _setFakeStreamTrackIndexForSetCurIndex:]_block_invoke_3", 408);
  v4 = *(a1 + 32);

  return [v4 _handleNowPlayingInfo:a2];
}

uint64_t sub_100038C10(uint64_t a1)
{
  result = sub_100067278();
  if (((*(a1 + 32) - 92) & 3) != 0)
  {
    goto LABEL_7;
  }

  result = sub_10006814C(*(*(a1 + 32) + 164), result, 1);
  if (result < 0x7D0)
  {
    return result;
  }

  *(*(a1 + 32) + 160) = 0;
  if (((*(a1 + 32) - 92) & 3) != 0 || (*(*(a1 + 32) + 164) = 0, *(*(a1 + 32) + 168) = 1, v3 = *(a1 + 32), ((v3 + 104) & 7) != 0))
  {
LABEL_7:
    __break(0x5516u);
    return result;
  }

  v4 = *(v3 + 104);
  v5 = *(a1 + 32);
  return MRMediaRemoteGetNowPlayingInfo();
}

id sub_100038CF4(uint64_t a1, uint64_t a2)
{
  NSLog(@"MR: %s:%d call _handleNowPlayingInfo:", "[MediaPlayerHelper _setFakeStreamTrackIndex:fromPlay:]_block_invoke_2", 463);
  v4 = *(a1 + 32);

  return [v4 _handleNowPlayingInfo:a2];
}

id sub_10003901C(uint64_t a1)
{
  v2 = +[MediaPlayerHelper sharedSystemMusicPlayer];
  byte_100129624 = [+[MPCloudController sharedCloudController](MPCloudController "sharedCloudController")];
  [*(a1 + 32) initPBQItemsFromQueueQuery];

  return [v2 beginGeneratingPlaybackNotifications];
}

void sub_1000390CC(id a1)
{
  v1 = +[MediaPlayerHelper sharedSystemMusicPlayer];

  [v1 endGeneratingPlaybackNotifications];
}

void sub_100039384(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  NSLog(@"MR: Init initial NowPlayingInfo state");
  [*(a1 + 32) _nowPlayingAppChanged:0];
  sub_1000DDE90(0, @"NowPlaying: Init calling MRMediaRemoteGetNowPlayingInfo");
  v3 = *(a1 + 32);
  if (((v3 + 104) & 7) != 0)
  {
    goto LABEL_9;
  }

  v4 = *(v3 + 104);
  v15 = *(a1 + 32);
  MRMediaRemoteGetNowPlayingInfo();
  v5 = *(a1 + 32);
  if (((v5 + 104) & 7) != 0)
  {
    goto LABEL_9;
  }

  v6 = *(v5 + 104);
  v14 = *(a1 + 32);
  MRMediaRemoteGetNowPlayingApplicationIsPlaying();
  v7 = *(a1 + 32) + 104;
  if ((v7 & 7) != 0)
  {
    goto LABEL_9;
  }

  v8 = *v7;
  MRMediaRemoteRegisterForNowPlayingNotifications();
  [(NSNotificationCenter *)v2 addObserver:*(a1 + 32) selector:"_startMusicPlayerNotifications:" name:off_10012B7A0 object:0];
  [(NSNotificationCenter *)v2 addObserver:*(a1 + 32) selector:"_stopMusicPlayerNotifications:" name:off_10012B7A8 object:0];
  [(NSNotificationCenter *)v2 addObserver:*(a1 + 32) selector:"_supportedCommandsDidChangeNotification" name:kMRMediaRemoteSupportedCommandsDidChangeNotification object:0];
  [(NSNotificationCenter *)v2 addObserver:*(a1 + 32) selector:"_canShowCloudTracksDidChangeNotification:" name:MPCloudControllerCanShowCloudTracksDidChangeNotification object:0];
  [(NSNotificationCenter *)v2 addObserver:*(a1 + 32) selector:"_nowPlayingInfoChanged:" name:kMRMediaRemoteNowPlayingInfoDidChangeNotification object:0];
  [(NSNotificationCenter *)v2 addObserver:*(a1 + 32) selector:"_nowPlayingAppChanged:" name:kMRMediaRemoteNowPlayingApplicationDidChangeNotification object:0];
  [(NSNotificationCenter *)v2 addObserver:*(a1 + 32) selector:"_nowPlayingAppIsPlayingChanged:" name:kMRMediaRemoteNowPlayingApplicationIsPlayingDidChangeNotification object:0];
  [(NSNotificationCenter *)v2 addObserver:*(a1 + 32) selector:"_playbackQueueDidChangeNotification:" name:kMRMediaRemoteNowPlayingPlaybackQueueDidChangeNotification object:0];
  v9 = [+[MPCloudController sharedCloudController](MPCloudController "sharedCloudController")];
  byte_100129624 = v9;
  NSLog(@"__showCloudTracksSetting after canShowCloudMusic = %d", v9);
  MRMediaRemoteSetWantsSupportedCommandsChangedNotifications();
  v10 = *(a1 + 32);
  if (((v10 + 104) & 7) != 0)
  {
LABEL_9:
    __break(0x5516u);
  }

  else
  {
    v11 = *(v10 + 104);
    v13 = *(a1 + 32);
    MRMediaRemoteCopySupportedCommands();
    if (sub_100036DB4())
    {
      [*(a1 + 32) _startMusicPlayerNotifications:0];
    }

    else
    {
      NSLog(@"not starting music player notifications yet");
    }

    [(NSNotificationCenter *)v2 addObserver:*(a1 + 32) selector:"_itemPlaybackDidEnd:" name:MPMusicPlayerControllerItemPlaybackDidEndNotification object:0];
    [MPMediaQuery setFilteringDisabled:1];
    v12 = +[MPMediaLibrary defaultMediaLibrary];
    [(NSNotificationCenter *)v2 addObserver:*(a1 + 32) selector:"_mediaLibraryChanged:" name:MPMediaLibraryEntitiesAddedOrRemovedNotification object:v12];
    [(MPMediaLibrary *)v12 beginGeneratingLibraryChangeNotifications];
  }
}

void sub_100039710(uint64_t a1, uint64_t a2)
{
  NSLog(@"NowPlaying: Init in handler block for MRMediaRemoteGetNowPlayingInfo, calling _handleNowPlayingInfo");
  [*(a1 + 32) _handleNowPlayingInfo:a2];
  NSLog(@"NowPlaying: Init in handler block for MRMediaRemoteGetNowPlayingInfo, finished _handleNowPlayingInfo");
}

void sub_100039758(uint64_t a1, uint64_t a2)
{
  NSLog(@"NowPlaying: Init in handler block for MRMediaRemoteGetNowPlayingApplicationIsPlaying_Async");
  [*(a1 + 32) _handleNowPlayingAppIsPlayingDidChange:a2];
  NSLog(@"NowPlaying: Init finished handler block for MRMediaRemoteGetNowPlayingApplicationIsPlaying_Async");
}

void sub_1000397A0(uint64_t a1, const void *a2)
{
  [*(a1 + 32) _supportedCommandsDidChange:a2];

  CFRelease(a2);
}

id sub_100039A94(uint64_t a1)
{
  result = [[MPMusicPlayerController alloc] initWithClientIdentifier:@"com.apple.iapd.mediaplayer" queue:{objc_msgSend(*(a1 + 32), "sharedSystemMusicPlayerQueue")}];
  qword_10012BAE8 = result;
  return result;
}

void sub_100039FF4(uint64_t a1)
{
  v2 = +[MediaPlayerHelper sharedSystemMusicPlayer];
  NSLog(@"prepareForPlaybackWithQuery:andFirstItem: allMusic, query=%@ count=%lu firstItem(%llu)=%@", *(a1 + 32), [objc_msgSend(*(a1 + 32) "items")], objc_msgSend(*(a1 + 40), "persistentID"), *(a1 + 40));
  MRSystemAppPlaybackQueueInternalPrepareBundleIDForPlayback();
  [v2 setQueueWithQuery:*(a1 + 32) firstItem:*(a1 + 40)];
  [v2 prepareQueueForPlayback];
  if (![v2 nowPlayingItem])
  {
    *(*(*(a1 + 48) + 8) + 24) = 14;
    NSLog(@"prepareForPlaybackWithQuery:andFirstItem: Playback queue is empty");
  }
}

void sub_10003A2CC()
{
  byte_10012C64C = 0;
  if (qword_10012C650)
  {

    qword_10012C650 = 0;
  }

  if (qword_10012C658)
  {

    qword_10012C658 = 0;
  }

  qword_10012C660 = 0;
}

uint64_t sub_10003AF10(uint64_t result, int a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else if ((*(*result + 592))(result))
  {
    sub_100043BE4(v2, a2);
    if (v4)
    {
      return 1;
    }

    else
    {
      v5 = *(*v2 + 63);

      return v5(v2);
    }
  }

  else
  {
    return [v2[15] currentNowPlayingInfoTrackCountExists] ^ 1;
  }

  return result;
}

void sub_10003C974(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_21;
  }

  v1 = *(a1 + 8);
  v2 = v1 && (*(a1 + 8) & 7) == 0;
  if (v2 && ((v3 = *v1) != 0 ? (v4 = (*v1 & 7) == 0, *v1) : (v4 = 0), v4 && ((*(v3 + 8) = v1[1], (v5 = v1[1]) != 0) ? (v6 = (v1[1] & 7) == 0) : (v6 = 0), v6)))
  {
    *v5 = v3;
    v7 = *(a1 + 16);
    v8 = v7 != 0;
    v9 = v7 - 1;
    if (v8)
    {
      *(a1 + 16) = v9;
      operator delete(v1);
      return;
    }
  }

  else
  {
LABEL_21:
    __break(0x5516u);
  }

  __break(0x5515u);
}

void sub_10003C9E8(uint64_t a1, char a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_22;
  }

  pthread_mutex_lock((a1 + 136));
  v4 = *(a1 + 128);
  if (v4 >= 4)
  {
    goto LABEL_21;
  }

  if (*(a1 + 392) > 1u)
  {
    goto LABEL_21;
  }

  v5 = *(a1 + 393);
  if (v5 > 1)
  {
    goto LABEL_21;
  }

  NSLog(@"MR: %s:%d ENTER _expectedPlayState=%d _expectedPlayStateTimestamp=%u _nowPlayingInfoReceived=%u _nowPlayingAppIsPlayingReceived=%u", "ResetExpectedPlayStateInfo", 4694, v4, *(a1 + 132), *(a1 + 392), v5);
  if (*(a1 + 132))
  {
    if (a2)
    {
      *(a1 + 392) = 1;
      v6 = *(a1 + 393);
    }

    else
    {
      *(a1 + 393) = 1;
      v6 = *(a1 + 392);
    }

    if (v6 > 1)
    {
      goto LABEL_21;
    }

    if (v6)
    {
      v7 = *(a1 + 128);
      if (v7 <= 3)
      {
        if (v7 == [*(a1 + 120) nowPlayingAppPlaybackState])
        {
          *(a1 + 132) = 0;
          *(a1 + 392) = 0;
        }

        goto LABEL_15;
      }

LABEL_21:
      __break(0x550Au);
LABEL_22:
      __break(0x5516u);
      return;
    }
  }

LABEL_15:
  v8 = *(a1 + 128);
  if (v8 > 3)
  {
    goto LABEL_21;
  }

  if (*(a1 + 392) > 1u)
  {
    goto LABEL_21;
  }

  v9 = *(a1 + 393);
  if (v9 > 1)
  {
    goto LABEL_21;
  }

  NSLog(@"MR: %s:%d EXIT _expectedPlayState=%d _expectedPlayStateTimestamp=%u _nowPlayingInfoReceived=%u _nowPlayingAppIsPlayingReceived=%u", "ResetExpectedPlayStateInfo", 4715, v8, *(a1 + 132), *(a1 + 392), v9);

  pthread_mutex_unlock((a1 + 136));
}

uint64_t sub_10003CB30(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
    goto LABEL_8;
  }

  result = pthread_mutex_lock((result + 328));
  *(v1 + 324) = 0;
  v2 = *(v1 + 320);
  if (v2 >= 4)
  {
LABEL_8:
    __break(0x550Au);
    return result;
  }

  NSLog(@"MR: %s:%d _expectedFFRewStateTimestamp=%u _expectedFFRewState=%d", "ResetExpectedFFRewStateInfo", 4786, 0, v2);

  return pthread_mutex_unlock((v1 + 328));
}

uint64_t sub_10003CBB8(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((result + 208));
    NSLog(@"MR: %s:%d _waitForMRNotificationTimestamp=%u", "ResetWaitForMRNotification", 4733, *(v1 + 204));
    if (*(v1 + 204))
    {
      *(v1 + 204) = 0;
      NSLog(@"MR: %s:%d signal _waitForMRNotificationCond", "ResetWaitForMRNotification", 4738);
      pthread_cond_signal((v1 + 272));
    }

    return pthread_mutex_unlock((v1 + 208));
  }

  return result;
}

void sub_10003CC58(uint64_t a1)
{
  if (qword_10012BB28 != -1)
  {
    sub_1000E1F88();
  }

  v2 = qword_10012BB20;
  if (qword_10012BB20)
  {
    v3 = (qword_10012BB20 & 7) == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    [*(a1 + 32) nowPlayingAppPlaybackState];
    v4 = *(*v2 + 56);

    v4(v2, 524301, 0, 0, 0);
  }

  else
  {
    __break(0x5516u);
  }
}

void sub_10003CCFC(id a1)
{
  v1 = +[MediaPlayerHelper sharedSystemMusicPlayer];
  if (sub_100036DB4() && ([v1 isNowPlayingItemFromGeniusMix] & 1) == 0)
  {
    if (qword_10012BB28 != -1)
    {
      sub_1000E1F88();
    }

    if (!qword_10012BB20 || (qword_10012BB20 & 7) != 0)
    {
      __break(0x5516u);
    }

    else
    {
      v2 = *(*qword_10012BB20 + 680);

      v2();
    }
  }

  else if ((sub_100036DB4() & 1) == 0)
  {
    NSLog(@"%s:%d no systemMusicPlayer!", "[MediaPlayerHelper _handleNowPlayingInfo:]_block_invoke_2", 2010);
  }
}

void sub_10003CF88(uint64_t a1)
{
  if (qword_10012BB28 != -1)
  {
    sub_1000E1F88();
  }

  v2 = qword_10012BB20;
  if (qword_10012BB20)
  {
    v3 = (qword_10012BB20 & 7) == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    [*(a1 + 32) nowPlayingAppPlaybackState];
    v4 = *(*v2 + 56);

    v4(v2, 524301, 0, 0, 0);
  }

  else
  {
    __break(0x5516u);
  }
}

id sub_10003D15C(uint64_t a1)
{
  result = [+[MediaPlayerHelper sharedSystemMusicPlayer](MediaPlayerHelper "sharedSystemMusicPlayer")];
  if (((*(a1 + 32) - 112) & 7) == 0)
  {
    v3 = result;
    result = *(*(a1 + 32) + 144);
    if (v3)
    {
      result = [v3 items];
      if (((*(a1 + 32) - 112) & 7) == 0)
      {
        *(*(a1 + 32) + 144) = result;
        return result;
      }
    }

    else if (((*(a1 + 32) - 112) & 7) == 0)
    {
      *(*(a1 + 32) + 144) = 0;
      return result;
    }
  }

  __break(0x5516u);
  return result;
}

id sub_10003D3E4(id *a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || (v3 = a1, (a1 & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    [a1[15] setPodcastAppSelected:0];
    [v3[15] setIBooksAppSelected:0];
    a1 = v3[15];
    a3 = 0;
  }

  return [a1 setITunesUAppSelected:a3];
}

uint64_t sub_10003D828(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_1000459A8(result);
  }

  __break(0x5516u);
  __break(0x5500u);
  return result;
}

id sub_10003D8A8(uint64_t a1, uint64_t a2)
{
  sub_1000DDE90(7u, @"MR: %s:%d call _handleNowPlayingInfo:", "[MediaPlayerHelper _nowPlayingInfoChanged:]_block_invoke", 2207);
  v4 = *(a1 + 32);

  return [v4 _handleNowPlayingInfo:a2];
}

id sub_10003D9BC(uint64_t a1, uint64_t a2)
{
  NSLog(@"MR: %s:%d call _handleNowPlayingAppIsPlayingDidChange:", "[MediaPlayerHelper _nowPlayingAppIsPlayingChanged:]_block_invoke", 2221);
  v4 = *(a1 + 32);

  return [v4 _handleNowPlayingAppIsPlayingDidChange:a2];
}

uint64_t sub_10003DB84(uint64_t result, uint64_t a2)
{
  if (((*(result + 32) - 56) & 7) != 0)
  {
    goto LABEL_12;
  }

  v2 = result;
  v3 = [*(*(result + 32) + 200) applicationInfoForPIDSync:a2];
  result = [v3 objectForKey:BKSApplicationStateDisplayIDKey];
  if (!result)
  {
    return result;
  }

  v4 = result;
  v5 = [+[LSApplicationProxy applicationProxyForIdentifier:](LSApplicationProxy applicationProxyForIdentifier:{result), "localizedNameForContext:", 0}];
  result = [*(v2 + 32) _handleNowPlayingAppDidChange:v4];
  if (!v5)
  {
    return result;
  }

  result = pthread_mutex_lock((*(v2 + 32) + 16));
  v6 = (*(v2 + 32) + 88);
  if ((v6 & 7) != 0)
  {
    goto LABEL_12;
  }

  v7 = *v6;
  if (v7)
  {
  }

  result = v5;
  v8 = *(v2 + 32) + 88;
  if ((v8 & 7) != 0)
  {
LABEL_12:
    __break(0x5516u);
    return result;
  }

  *v8 = result;
  v9 = (*(v2 + 32) + 16);

  return pthread_mutex_unlock(v9);
}

uint64_t sub_10003DD18(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 56))(result, 524310, 0, 0, 0);
  }

  __break(0x5516u);
  return result;
}

void sub_10003DDC4(id a1)
{
  if (qword_10012BB28 != -1)
  {
    sub_1000E1F88();
  }

  v2 = qword_10012BB20;
  if (qword_10012BB20)
  {
    v3 = (qword_10012BB20 & 7) == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {

    sub_10003DE1C(v2);
  }

  else
  {
    __break(0x5516u);
  }
}

uint64_t sub_10003DE1C(uint64_t result)
{
  if (!result)
  {
    goto LABEL_19;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_19;
  }

  if (byte_10012C64C >= 2u)
  {
LABEL_20:
    __break(0x550Au);
    return result;
  }

  if ((byte_10012C64C & 1) == 0)
  {
    goto LABEL_14;
  }

  byte_10012C64C = 0;
  (*(*result + 680))(result);
  v2 = objc_alloc_init(NSAutoreleasePool);
  if (qword_10012BB28 != -1)
  {
    sub_1000E1F88();
  }

  result = qword_10012BB20;
  if (!qword_10012BB20 || (qword_10012BB20 & 7) != 0)
  {
    goto LABEL_19;
  }

  (*(*qword_10012BB20 + 568))();
  v3 = [[MPMediaQuery alloc] initWithEntities:objc_msgSend(qword_10012C650 entityType:{"items"), 0}];
  [v1[15] prepareForPlaybackWithQuery:v3 andFirstItem:qword_10012C658];

  if (qword_10012BB28 != -1)
  {
    sub_1000E1F88();
  }

  result = qword_10012BB20;
  if (!qword_10012BB20 || (qword_10012BB20 & 7) != 0)
  {
LABEL_19:
    __break(0x5516u);
    goto LABEL_20;
  }

  (*(*qword_10012BB20 + 560))(qword_10012BB20);
  sub_10003A2CC();

LABEL_14:
  result = (*(*v1 + 56))(v1);
  if (result)
  {
    v4 = *(*v1 + 42);

    return v4(v1);
  }

  return result;
}

void sub_10003E3EC(uint64_t a1, const void *a2)
{
  [*(a1 + 32) _supportedCommandsDidChange:a2];

  CFRelease(a2);
}

uint64_t sub_10003E700(uint64_t result)
{
  if (!result)
  {
    goto LABEL_43;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_43;
  }

  sub_10001C4A0(result);
  *v1 = off_1001146F0;
  *(v1 + 104) = 0;
  *(v1 + 204) = 0;
  *(v1 + 320) = 0;
  *(v1 + 392) = 0;
  *(v1 + 96) = 0;
  *(v1 + 99) = 0;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 112) = 0;
  *(v1 + 396) = -1;
  if (dword_100129618 == -1)
  {
    dword_100129618 = CFPreferencesGetAppBooleanValue(@"OverrideNowPlayingInfoTimestamp", @"com.apple.iapd", 0) != 0;
  }

  if (dword_10012961C == -1)
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"UseAppNameForNowPlayingInfoEmptyTitle", @"com.apple.iapd", 0);
    dword_10012961C = AppBooleanValue != 0;
    sub_1000DDE90(0, @"%s:%d __useAppNameForNowPlayingInfoEmptyTitle=%d", "MediaPlayer", 2649, AppBooleanValue != 0);
  }

  if (dword_100129628 == -1)
  {
    v3 = CFPreferencesGetAppBooleanValue(@"doNotDebouncePBRatePause", @"com.apple.iapd", 0);
    dword_100129628 = v3 != 0;
    sub_1000DDE90(0, @"%s:%d __doNotDebouncePBRatePause=%d", "MediaPlayer", 2653, v3 != 0);
  }

  if (dword_10012962C == -1)
  {
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"tiltBehavior", @"com.apple.iapd", 0);
    dword_10012962C = AppIntegerValue;
    dword_100129630 = AppIntegerValue;
    sub_1000DDE90(0, @"%s:%d __tiltBehavior=%d", "MediaPlayer", 2658, AppIntegerValue);
  }

  if (dword_100129634 == -1)
  {
    v5 = CFPreferencesGetAppBooleanValue(@"doNotAllowTiltSetIndex", @"com.apple.iapd", 0);
    dword_100129634 = v5 == 0;
    sub_1000DDE90(0, @"%s:%d __tiltAllowSetIndex=%d", "MediaPlayer", 2662, v5 == 0);
  }

  if (dword_1001295A8 == -1)
  {
    v6 = CFPreferencesGetAppBooleanValue(@"doNotFakeTiltPlaylist", @"com.apple.iapd", 0);
    dword_1001295A8 = v6 == 0;
    sub_1000DDE90(0, @"%s:%d __fakeTiltPlaylist=%d", "MediaPlayer", 2667, v6 == 0);
  }

  if (dword_100129638 == -1)
  {
    v7 = CFPreferencesGetAppBooleanValue(@"tiltBehaviorChangeDuringFakeTiltPlaylist", @"com.apple.iapd", 0);
    dword_100129638 = v7 != 0;
    sub_1000DDE90(0, @"%s:%d __fakeTiltPlaylistBehaviorChange=%d", "MediaPlayer", 2672, v7 != 0);
  }

  if (dword_100129620 == -1)
  {
    dword_100129620 = CFPreferencesGetAppBooleanValue(@"HideCloudTracks", @"com.apple.iapd", 0) != 0;
  }

  if (dword_10012963C == -1)
  {
    v8 = CFPreferencesGetAppBooleanValue(@"allowControlDuringCall", @"com.apple.iapd", 0);
    dword_10012963C = v8 == 0;
    sub_1000DDE90(0, @"%s:%d __dontAllowControlDuringCall=%d", "MediaPlayer", 2681, v8 == 0);
  }

  memset(v14, 170, sizeof(v14));
  result = sub_10004B1AC();
  if (!result || (result & 7) != 0)
  {
    goto LABEL_43;
  }

  result = (*(*result + 120))(v14);
  v9 = HIBYTE(v14[2]);
  if (SHIBYTE(v14[2]) < 0)
  {
    v9 = v14[1];
  }

  if (v9 != 3)
  {
    goto LABEL_40;
  }

  v10 = v14;
  if (SHIBYTE(v14[2]) < 0)
  {
    v10 = v14[0];
  }

  if (!v10)
  {
LABEL_43:
    __break(0x5516u);
    goto LABEL_44;
  }

  if (*v10 == 78)
  {
    if ((SHIBYTE(v14[2]) & 0x80000000) == 0 || v14[0] != -1)
    {
      v11 = v14;
      if (SHIBYTE(v14[2]) < 0)
      {
        v11 = v14[0];
      }

      if (*(v11 + 1) != 57)
      {
        goto LABEL_40;
      }

      if (v10 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v12 = v14;
        if (SHIBYTE(v14[2]) < 0)
        {
          v12 = v14[0];
        }

        if ((*(v12 + 2) | 2) == 0x32)
        {
          byte_10012BB08 = 1;
        }

        goto LABEL_40;
      }
    }

LABEL_44:
    __break(0x5513u);
    return result;
  }

LABEL_40:
  pthread_mutex_init((v1 + 136), 0);
  pthread_mutex_init((v1 + 328), 0);
  pthread_mutex_init((v1 + 208), 0);
  pthread_cond_init((v1 + 272), 0);
  *(v1 + 120) = objc_alloc_init(MediaPlayerHelper);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003EC14;
  block[3] = &unk_100111CF8;
  block[4] = v1;
  dispatch_async(&_dispatch_main_q, block);
  if (SHIBYTE(v14[2]) < 0)
  {
    operator delete(v14[0]);
  }

  return v1;
}

uint64_t sub_10003EC14(uint64_t a1)
{
  v1 = *(a1 + 32);
  CTTelephonyCenterSetDefaultDispatchQueue();
  CTTelephonyCenterGetDefault();
  CTTelephonyCenterAddObserver();

  return CTTelephonyCenterAddObserver();
}

uint64_t sub_10003ECB0(int a1, uint64_t a2, int a3, int a4, CFDictionaryRef theDict)
{
  CFDictionaryGetValue(theDict, kCTCall);
  result = CTCallGetStatus();
  if (result >= 0x80000)
  {
    goto LABEL_21;
  }

  if (result == 5)
  {
    result = sub_100067278();
    if (!a2 || (a2 & 7) != 0)
    {
      goto LABEL_22;
    }

    *(a2 + 96) = result;
  }

  result = sub_10003F088();
  if (a2 && !result)
  {
    result = pthread_mutex_lock(&stru_10012B758);
    if ((a2 & 7) != 0)
    {
LABEL_22:
      __break(0x5516u);
      return result;
    }

    result = sub_1000D6B98(*(a2 + 112));
    if (!result)
    {
LABEL_16:
      result = pthread_mutex_unlock(&stru_10012B758);
      *(a2 + 100) = 0;
      *(a2 + 102) = 0;
      *(a2 + 104) = 0;
      *(a2 + 112) = 0;
      return result;
    }

    v7 = *(a2 + 101);
    if (v7 <= 1)
    {
      if (v7)
      {
        (*(*a2 + 64))(a2, 524313, 0, *(a2 + 112), 0);
        goto LABEL_16;
      }

      v8 = *(a2 + 102);
      if (v8 <= 1)
      {
        if (v8)
        {
          (*(*a2 + 64))(a2, 524313, 1, *(a2 + 112), 0);
          goto LABEL_16;
        }

        v9 = *(a2 + 100);
        if (v9 <= 1)
        {
          if (v9)
          {
            (*(*a2 + 304))(a2, *(a2 + 104), 0, 0, 0, *(a2 + 112), 0xFFFFFFFFLL, 1);
          }

          goto LABEL_16;
        }
      }
    }

LABEL_21:
    __break(0x550Au);
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10003EE48(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100112210;
    pthread_mutex_destroy((result + 32));
    sub_1000089F8(v1 + 8);
    return v1;
  }

  return result;
}

uint64_t sub_10003EEBC(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_1001146F0;
    pthread_mutex_destroy((result + 136));
    pthread_mutex_destroy((v1 + 328));
    pthread_cond_destroy((v1 + 272));
    pthread_mutex_destroy((v1 + 208));

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003EFB0;
    block[3] = &unk_100111CF8;
    block[4] = v1;
    dispatch_sync(&_dispatch_main_q, block);
    return sub_10003EE48(v1);
  }

  return result;
}

uint64_t sub_10003EFB0(uint64_t a1)
{
  v1 = *(a1 + 32);
  CTTelephonyCenterSetDefaultDispatchQueue();
  Default = CTTelephonyCenterGetDefault();

  return _CTTelephonyCenterRemoveEveryObserver(Default, v1);
}

uint64_t sub_10003EFF4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_10003EEBC(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10003F008(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_10003EEBC(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10003F088()
{
  v0 = objc_autoreleasePoolPush();
  [NSArray arrayWithObjects:kCTCallTypeNormal, kCTCallTypeVoicemail, kCTCallTypeVideoConference, kCTCallTypeAudioConference, kCTCallTypeVOIP, 0];
  v1 = CTGetCurrentCallCountWithTypes();
  objc_autoreleasePoolPop(v0);
  return v1;
}

NSObject *sub_10003F11C(NSObject *result, unsigned int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!result)
  {
    goto LABEL_23;
  }

  p_isa = &result->isa;
  if ((result & 7) != 0)
  {
    goto LABEL_23;
  }

  v10 = objc_alloc_init(NSAutoreleasePool);
  sub_10003A2CC();
  if (!a3)
  {
    result = objc_autoreleasePoolPush();
    v12 = result;
    if (!dword_1001295A8)
    {
      goto LABEL_11;
    }

    if (a6 && (a6 & 7) == 0)
    {
      *(p_isa + 100) = (*(*a6 + 656))(a6);
      v13 = (*(*a6 + 664))(a6);
      *(p_isa + 99) = v13;
      if ((p_isa[50] & v13) < 0 == v14)
      {
        v11 = 0;
LABEL_21:
        objc_autoreleasePoolPop(v12);
        goto LABEL_22;
      }

LABEL_11:
      (*(*p_isa + 85))(p_isa);
      v15 = sub_10003685C();
      [v15 setGroupingType:0];
      v16 = [v15 items];
      if (v16 && (v17 = v16, [v16 count]))
      {
        if (a2 == -1)
        {
          v19 = 0;
        }

        else
        {
          if ([v17 count] <= a2)
          {
            v18 = 0;
          }

          else
          {
            v18 = a2;
          }

          v19 = [v17 objectAtIndex:v18];
        }

        (*(*p_isa + 82))(p_isa);
        v11 = [p_isa[15] prepareForPlaybackWithQuery:v15 andFirstItem:v19];
      }

      else
      {
        v11 = 2;
      }

      goto LABEL_21;
    }

LABEL_23:
    __break(0x5516u);
    goto LABEL_24;
  }

  result = +[MediaPlayerHelper sharedSystemMusicPlayerQueue];
  if (result)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10003F388;
    v20[3] = &unk_100113280;
    v20[4] = p_isa;
    v21 = a2;
    dispatch_sync(result, v20);
    v11 = 0;
LABEL_22:

    return v11;
  }

LABEL_24:
  __break(0x5510u);
  return result;
}

void sub_10003F388(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[MediaPlayerHelper sharedSystemMusicPlayer];
  (*(*v2 + 680))(v2);
  v4 = [sub_100036868() copy];
  v5 = objc_alloc_init(MPMediaQuery);
  [v5 setFilterPredicates:{+[NSSet setWithArray:](NSSet, "setWithArray:", v4)}];
  v6 = [objc_msgSend(objc_msgSend(v5 "items")];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &stru_100119FF8;
  }

  (*(*v2 + 656))(v2);
  [v5 addFilterPredicate:{+[MPMediaPropertyPredicate predicateWithValue:forProperty:](MPMediaPropertyPredicate, "predicateWithValue:forProperty:", v7, MPMediaItemPropertyTitle)}];
  if (sub_100036874())
  {
    [v5 setIgnoreSystemFilterPredicates:1];
  }

  [v3 setQueueWithQuery:v5];
  [v3 prepareQueueForPlayback];
  if ((sub_100036DB4() & 1) == 0)
  {
    NSLog(@"%s:%d no systemMusicPlayer!...unlikely to be in this case", "PrepareNowPlaying_block_invoke", 2801);
  }
}

uint64_t sub_10003F530(uint64_t result, unsigned int a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    v4 = objc_alloc_init(NSAutoreleasePool);
    sub_10003A2CC();
    if ((a2 & 0x80000000) == 0)
    {
      v5 = +[MPMediaQuery audiobooksQuery];
      [(MPMediaQuery *)v5 setGroupingType:0];
      v6 = [(NSArray *)[(MPMediaQuery *)v5 items] objectAtIndex:a2];
      (*(*v2 + 82))(v2);
      [v2[15] prepareForPlaybackWithQuery:v5 andFirstItem:v6];
      (*(*v2 + 85))(v2);
    }

    return 1;
  }

  return result;
}

NSMutableArray *sub_10003F640(NSMutableArray *result, unsigned int a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (!result || (p_isa = &result->super.super.isa, (result & 7) != 0))
  {
LABEL_30:
    __break(0x5516u);
LABEL_31:
    __break(0x5513u);
    goto LABEL_32;
  }

  result = objc_alloc_init(NSAutoreleasePool);
  v12 = result;
  if (!a3)
  {
    goto LABEL_24;
  }

  if (a2 < 2)
  {
    if ((a3 & 7) == 0)
    {
      result = [NSMutableArray arrayWithCapacity:(a3[1] - *a3) >> 3];
      v13 = *a3;
      if ((*a3 & 7) != 0 || (v14 = a3[1], (v14 & 7) != 0))
      {
LABEL_19:
        __break(0x5517u);
      }

      else
      {
        v5 = result;
        v6 = 0;
        while (v13 < v14)
        {
          if (!v13)
          {
            goto LABEL_30;
          }

          result = sub_1000331F4(*v13);
          if (result)
          {
            v15 = result;
            result = [v5 addObject:result];
            if (v6)
            {
              v16 = 0;
            }

            else
            {
              v16 = *v13 == a4;
            }

            if (v16)
            {
              v6 = v15;
            }
          }

          if (v13 >= 0xFFFFFFFFFFFFFFF8)
          {
            goto LABEL_31;
          }

          ++v13;
          v14 = a3[1];
          if ((v14 & 7) != 0)
          {
            goto LABEL_19;
          }
        }
      }

      if ([v5 count])
      {
        v17 = [MPMediaItemCollection collectionWithItems:v5];
        if (v6)
        {
          if (!a2)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v6 = [v5 objectAtIndex:0];
          if (!a2)
          {
            goto LABEL_28;
          }
        }

        if ((*(*p_isa + 52))(p_isa) == 1)
        {
          byte_10012C64C = 1;
          qword_10012C650 = v17;
          v18 = 0;
          qword_10012C658 = v6;
          qword_10012C660 = a5;
          goto LABEL_29;
        }

LABEL_28:
        sub_10003A2CC();
        (*(*p_isa + 85))(p_isa);
        (*(*p_isa + 82))(p_isa);
        v19 = [[MPMediaQuery alloc] initWithEntities:v5 entityType:0];
        v18 = [p_isa[15] prepareForPlaybackWithQuery:v19 andFirstItem:v6] == 0;

        goto LABEL_29;
      }

LABEL_24:
      v18 = 0;
LABEL_29:

      return v18;
    }

    goto LABEL_30;
  }

LABEL_32:
  __break(0x550Au);
  return result;
}