@interface HDRProcessorEx
- (int)processWithMSRColorConfigs:(id *)configs MSRScaler:(__IOSurfaceAccelerator *)scaler InputSurfaces:(__IOSurface *)surfaces OutputSurfaces:(__IOSurface *)outputSurfaces CropRects:(id *)rects NumOfCropRectsInAGroup:(int *)group NumOfGroup:(int)ofGroup;
@end

@implementation HDRProcessorEx

- (int)processWithMSRColorConfigs:(id *)configs MSRScaler:(__IOSurfaceAccelerator *)scaler InputSurfaces:(__IOSurface *)surfaces OutputSurfaces:(__IOSurface *)outputSurfaces CropRects:(id *)rects NumOfCropRectsInAGroup:(int *)group NumOfGroup:(int)ofGroup
{
  v35[3] = *MEMORY[0x277D85DE8];
  if (ofGroup < 1)
  {
LABEL_13:
    v23 = 0;
    goto LABEL_15;
  }

  configsCopy2 = configs;
  v13 = 0;
  v31 = *MEMORY[0x277D1AE28];
  v30 = *MEMORY[0x277D1AE58];
  v29 = *MEMORY[0x277D1AE90];
  while (1)
  {
    v14 = malloc_type_malloc(0x28uLL, 0x10000407607B2BCuLL);
    *v14 = 3;
    v14[1] = [configsCopy2[v13] bytes];
    *(v14 + 4) = [configsCopy2[v13] length];
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

    if (rects)
    {
      if (group && rects[v13])
      {
        break;
      }
    }

    v24 = surfaces[v13];
    v25 = outputSurfaces[v13];
    v23 = IOSurfaceAcceleratorTransformSurface();
    if (v23)
    {
      goto LABEL_14;
    }

LABEL_12:

    configsCopy2 = configs;
    if (++v13 == ofGroup)
    {
      goto LABEL_13;
    }
  }

  if (group[v13] < 1)
  {
    goto LABEL_12;
  }

  v18 = 0;
  v19 = 0;
  while (1)
  {
    v20 = surfaces[v13];
    v21 = outputSurfaces[v13];
    v22 = rects[v13];
    v23 = IOSurfaceAcceleratorTransformSurface();
    if (v23)
    {
      break;
    }

    ++v19;
    v18 += 48;
    if (v19 >= group[v13])
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