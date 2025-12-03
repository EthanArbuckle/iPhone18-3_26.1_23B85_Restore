@interface LocationService
- (void)completerDidUpdateResults:(id)results;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
@end

@implementation LocationService

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  sub_24B8F37E8(0, &qword_27F064520);
  v5 = sub_24BAAA12C();
  if (v5 >> 62)
  {
    v17 = v5;
    v6 = sub_24BAAA52C();
    v5 = v17;
    if (v6)
    {
LABEL_3:
      v7 = v6 - 1;
      if (__OFSUB__(v6, 1))
      {
        __break(1u);
      }

      else if ((v5 & 0xC000000000000001) == 0)
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v7 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v8 = *(v5 + 8 * v7 + 32);
          managerCopy = manager;
          selfCopy = self;
          v11 = v8;
LABEL_8:
          v12 = v11;

          [v12 coordinate];
          v14 = v13;
          v16 = v15;
          [manager stopUpdatingLocation];
          v22[0] = v14;
          v22[1] = v16;
          v23 = vdupq_n_s64(0x3FB999999999999AuLL);
          v24 = 0;
          sub_24B911FC8(v22);

          return;
        }

        __break(1u);
        return;
      }

      v18 = v5;
      managerCopy2 = manager;
      selfCopy2 = self;
      v11 = MEMORY[0x24C2506E0](v7, v18);
      goto LABEL_8;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }
  }
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  managerCopy = manager;
  errorCopy = error;
  selfCopy = self;
  sub_24B911D04(managerCopy, errorCopy);
}

- (void)completerDidUpdateResults:(id)results
{
  resultsCopy = results;
  selfCopy = self;
  results = [resultsCopy results];
  sub_24B8F37E8(0, &qword_27F064518);
  sub_24BAAA12C();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81CC();
}

@end