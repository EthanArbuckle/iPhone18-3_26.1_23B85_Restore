@interface CUIThemePixelRendition
@end

@implementation CUIThemePixelRendition

NSDictionary *__77___CUIThemePixelRendition_newImageFromCSIDataSlice_ofBitmap_usingColorspace___block_invoke()
{
  v3 = kCGImageProviderAlphaIsOne;
  v4 = kCFBooleanTrue;
  qword_1ED4EC018 = [NSDictionary dictionaryWithObjects:&v4 forKeys:&v3 count:1];
  v1 = kCGImageProviderAlphaIsPremultiplied;
  v2 = kCFBooleanTrue;
  result = [NSDictionary dictionaryWithObjects:&v2 forKeys:&v1 count:1];
  qword_1ED4EC020 = result;
  return result;
}

void __46___CUIThemePixelRendition_setSharedBlockData___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  _CUILog(3, "CoreUI: dispatch_async to clear caches started", a3, a4, a5, a6, a7, a8, v31);
  v10 = *(a1 + 40);
  if (v10 > 2)
  {
    v13 = 0;
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = *off_1E72514F8[v10];
    v13 = *(v11 + v12);
    *(v11 + v12) = 0;
    if (*(*(a1 + 32) + 352))
    {
      v14 = v13 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (!v14)
    {
      CGImageGetImageProvider();
      Info = CGImageProviderGetInfo();
      if (Info)
      {
        v16 = Info;
        os_unfair_lock_lock(Info + 10);
        WeakRetained = objc_loadWeakRetained(&v16[12]);
        v18 = WeakRetained;
        if (WeakRetained)
        {
          if (*(v13 + 176))
          {
            v19 = [WeakRetained bitmapEncoding];
            v20 = [NSString stringWithFormat:@"%p-%d", *(*(a1 + 32) + 352), *(a1 + 40)];
            if (v20)
            {
              if (v19 - 2 <= 5)
              {
                v21 = v20;
                if (![+[_CSIRenditionBlockData sharedCache]() objectForKey:v20])
                {
                  v22 = *(v13 + 32) * *(v13 + 24);
                  if (v22 <= 0x17FEA3)
                  {
                    v23 = v21;
                    [+[_CSIRenditionBlockData sharedCache]() setObject:v13 forKey:v21 cost:v22];
                    v24 = *(a1 + 40);
                    if (v24 == 2)
                    {

                      *&v16[26]._os_unfair_lock_opaque = v21;
                    }

                    else if (v24 == 1)
                    {

                      *&v16[24]._os_unfair_lock_opaque = v21;
                    }

                    else if (v24)
                    {
                    }

                    else
                    {

                      *&v16[22]._os_unfair_lock_opaque = v21;
                    }
                  }
                }
              }
            }
          }
        }

        os_unfair_lock_unlock(v16 + 10);
      }
    }
  }

  _CUILog(3, "CoreUI: dispatch_async to clear caches ended", v25, v26, v27, v28, v29, v30, a9);
}

@end