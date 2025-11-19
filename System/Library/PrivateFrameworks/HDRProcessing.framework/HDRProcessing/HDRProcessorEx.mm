@interface HDRProcessorEx
- (int)processWithMSRColorConfigs:(id *)a3 MSRScaler:(__IOSurfaceAccelerator *)a4 InputSurfaces:(__IOSurface *)a5 OutputSurfaces:(__IOSurface *)a6 CropRects:(id *)a7 NumOfCropRectsInAGroup:(int *)a8 NumOfGroup:(int)a9;
@end

@implementation HDRProcessorEx

- (int)processWithMSRColorConfigs:(id *)a3 MSRScaler:(__IOSurfaceAccelerator *)a4 InputSurfaces:(__IOSurface *)a5 OutputSurfaces:(__IOSurface *)a6 CropRects:(id *)a7 NumOfCropRectsInAGroup:(int *)a8 NumOfGroup:(int)a9
{
  v35[3] = *MEMORY[0x277D85DE8];
  if (a9 < 1)
  {
LABEL_13:
    v23 = 0;
    goto LABEL_15;
  }

  v12 = a3;
  v13 = 0;
  v31 = *MEMORY[0x277D1AE28];
  v30 = *MEMORY[0x277D1AE58];
  v29 = *MEMORY[0x277D1AE90];
  while (1)
  {
    v14 = malloc_type_malloc(0x28uLL, 0x10000407607B2BCuLL);
    *v14 = 3;
    v14[1] = [v12[v13] bytes];
    *(v14 + 4) = [v12[v13] length];
    *(v14 + 28) = 0;
    *(v14 + 20) = 0;
    v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v14 length:40 freeWhenDone:1];
    v33 = v15;
    v34[0] = v31;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
    v35[0] = v16;
    v35[1] = MEMORY[0x277CBEC38];
    v34[1] = v30;
    v34[2] = v29;
    v35[2] = MEMORY[0x277CBEC28];
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:3];

    if (a7)
    {
      if (a8 && a7[v13])
      {
        break;
      }
    }

    v24 = a5[v13];
    v25 = a6[v13];
    v23 = IOSurfaceAcceleratorTransformSurface();
    if (v23)
    {
      goto LABEL_14;
    }

LABEL_12:

    v12 = a3;
    if (++v13 == a9)
    {
      goto LABEL_13;
    }
  }

  if (a8[v13] < 1)
  {
    goto LABEL_12;
  }

  v18 = 0;
  v19 = 0;
  while (1)
  {
    v20 = a5[v13];
    v21 = a6[v13];
    v22 = a7[v13];
    v23 = IOSurfaceAcceleratorTransformSurface();
    if (v23)
    {
      break;
    }

    ++v19;
    v18 += 48;
    if (v19 >= a8[v13])
    {
      goto LABEL_12;
    }
  }

LABEL_14:

LABEL_15:
  v26 = *MEMORY[0x277D85DE8];
  return v23;
}

@end