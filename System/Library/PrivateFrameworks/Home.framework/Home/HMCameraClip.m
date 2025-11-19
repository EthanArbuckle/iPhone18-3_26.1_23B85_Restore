@interface HMCameraClip
@end

@implementation HMCameraClip

void __63__HMCameraClip_HFAdditions__hf_allEventsContainingPeopleInClip__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 faceClassification];
  v4 = [v3 person];
  v5 = [v4 name];

  if (v5)
  {
    [*(a1 + 32) addObject:v6];
  }
}

void __53__HMCameraClip_HFAdditions__hf_faceCropNameAtOffset___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 40);
  v12 = v6;
  [v6 timeOffsetWithinClip];
  if (vabdd_f64(v7, v8) < 4.0)
  {
    v9 = [v12 hf_faceClassificationName];
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *a4 = 1;
  }
}

void __54__HMCameraClip_HFAdditions__hf_faceCropNamesAtOffset___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 48);
  v13 = v6;
  [v6 timeOffsetWithinClip];
  v9 = vabdd_f64(v7, v8);
  if (v9 < 4.0)
  {
    v10 = [v13 hf_faceClassificationName];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    if (*(*(*(a1 + 40) + 8) + 40))
    {
      [*(a1 + 32) addObject:?];
    }
  }

  if (v9 > 8.0)
  {
    *a4 = 1;
  }
}

void __58__HMCameraClip_HFAdditions__hf_familiarFaceEventAtOffset___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 40);
  v11 = v7;
  [v7 timeOffsetWithinClip];
  if (vabdd_f64(v8, v9) < 4.0)
  {
    v10 = [v11 hf_faceClassificationName];

    if (v10)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

uint64_t __60__HMCameraClip_HFAdditions__hf_stateDumpBuilderWithContext___block_invoke(uint64_t a1, void *a2)
{
  [a2 reason];

  return HMStringFromCameraSignificantEventReason();
}

@end