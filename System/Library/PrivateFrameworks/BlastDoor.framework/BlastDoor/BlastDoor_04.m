unint64_t sub_214033364()
{
  result = qword_280B34C08;
  if (!qword_280B34C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B34C08);
  }

  return result;
}

uint64_t MediaMetadata.LargeImageContextualInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F90, &qword_2146E9DA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214033364();
  sub_2146DAA08();
  if (!v2)
  {
    v19 = 0;
    v11 = sub_2146DA1A8();
    v18 = 1;
    v16 = sub_2146DA1A8();
    v17 = 2;
    v13 = sub_2146DA1A8();
    (*(v6 + 8))(v9, v5);
    v14 = v16;
    *a2 = v11;
    a2[1] = v14;
    a2[2] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 MediaMetadata.largeImageContextualInfo.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  v3 = v1[1].n128_u8[8];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

__n128 MediaMetadata.largeImageContextualInfo.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u8[8] = v3;
  return result;
}

uint64_t type metadata accessor for MediaMetadata()
{
  result = qword_280B34E38;
  if (!qword_280B34E38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MediaMetadata.timezoneOffset.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 24));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.timezoneOffset.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 24);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.subsecTimeOriginal.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.subsecTimeOriginal.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.rawOrientation.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 32));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.rawOrientation.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.rawPixelWidth.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 36));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.rawPixelWidth.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.rawPixelHeight.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 40));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.rawPixelHeight.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 40);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.lensModel.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MediaMetadata.lensModel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaMetadata() + 44));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MediaMetadata.lensMake.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MediaMetadata.lensMake.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaMetadata() + 48));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MediaMetadata.profileName.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 52));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MediaMetadata.profileName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaMetadata() + 52));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MediaMetadata.processingFlags.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 56));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.processingFlags.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 56);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.isCustomRendered.setter(char a1)
{
  result = type metadata accessor for MediaMetadata();
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t MediaMetadata.apertureValue.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 64));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.apertureValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 64);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.exposureBiasValue.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 68));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.exposureBiasValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 68);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.flash.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 72));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.flash.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 72);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.focalLength.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 76));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.focalLength.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 76);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.focalLenIn35mmFilm.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 80));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.focalLenIn35mmFilm.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 80);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.isoRatingValue.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 84));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.isoRatingValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 84);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.meteringMode.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 88));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.meteringMode.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 88);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.shutterSpeed.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 92));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.shutterSpeed.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 92);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.model.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 96));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MediaMetadata.model.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaMetadata() + 96));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MediaMetadata.make.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 100));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MediaMetadata.make.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaMetadata() + 100));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MediaMetadata.whiteBalance.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 104));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.whiteBalance.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 104);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.lightSource.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 108));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.lightSource.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 108);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.ciffWhiteBalanceIndex.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 112));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.ciffWhiteBalanceIndex.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 112);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.videoDynamicRange.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 116));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.videoDynamicRange.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 116);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.hdrGain.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 120));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.hdrGain.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 120);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.hasHDRGainMap.setter(char a1)
{
  result = type metadata accessor for MediaMetadata();
  *(v1 + *(result + 124)) = a1;
  return result;
}

uint64_t MediaMetadata.videoContainsCinematicData.setter(char a1)
{
  result = type metadata accessor for MediaMetadata();
  *(v1 + *(result + 128)) = a1;
  return result;
}

uint64_t MediaMetadata.videoComplementMediaGroupId.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 132));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MediaMetadata.videoComplementMediaGroupId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaMetadata() + 132));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MediaMetadata.gifDelayTime.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 136));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.gifDelayTime.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 136);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.variationIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 140));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.variationIdentifier.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 140);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.videoComplementDurationValue.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 144));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.videoComplementDurationValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 144);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.videoComplementDurationTimescale.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 148));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.videoComplementDurationTimescale.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 148);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.videoComplementImageDisplayValue.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 152));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.videoComplementImageDisplayValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 152);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.videoComplementImageDisplayTimescale.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 156));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.videoComplementImageDisplayTimescale.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 156);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.avDuration.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 160));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.avDuration.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 160);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.avFPS.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 164));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.avFPS.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 164);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.codecFourCharCode.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 168));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MediaMetadata.codecFourCharCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaMetadata() + 168));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MediaMetadata.captureMode.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 172));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MediaMetadata.captureMode.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaMetadata() + 172));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MediaMetadata.isVideoMontage.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 176));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MediaMetadata.isVideoMontage.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaMetadata() + 176));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MediaMetadata.isProRes.setter(char a1)
{
  result = type metadata accessor for MediaMetadata();
  *(v1 + *(result + 180)) = a1;
  return result;
}

uint64_t MediaMetadata.videoDurationValue.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 184));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.videoDurationValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 184);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.videoDurationTimescale.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 188));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.videoDurationTimescale.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 188);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.originatingAssetIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 192));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MediaMetadata.originatingAssetIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaMetadata() + 192));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MediaMetadata.longitude.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 196));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.longitude.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 196);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.latitude.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 200));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.latitude.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 200);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.altitude.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 204));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.altitude.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 204);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.gpsSpeed.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 208));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.gpsSpeed.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 208);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.gpsSpeedRef.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 212));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MediaMetadata.gpsSpeedRef.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaMetadata() + 212));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MediaMetadata.gpsHPositioningError.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 220));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.gpsHPositioningError.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 220);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.imageDirection.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 224));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.imageDirection.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 224);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.imageDirectionRef.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 228));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MediaMetadata.imageDirectionRef.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaMetadata() + 228));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MediaMetadata.uniformTypeIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 232));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MediaMetadata.uniformTypeIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaMetadata() + 232));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MediaMetadata.fileSize.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 236));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.fileSize.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 236);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.originalFileName.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 240));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MediaMetadata.originalFileName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaMetadata() + 240));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MediaMetadata.isPhotoBooth.setter(char a1)
{
  result = type metadata accessor for MediaMetadata();
  *(v1 + *(result + 244)) = a1;
  return result;
}

uint64_t MediaMetadata.userComment.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 252));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MediaMetadata.userComment.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaMetadata() + 252));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MediaMetadata.isFrontFacingCamera.setter(char a1)
{
  result = type metadata accessor for MediaMetadata();
  *(v1 + *(result + 256)) = a1;
  return result;
}

uint64_t MediaMetadata.spatialOverCaptureIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 260));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MediaMetadata.spatialOverCaptureIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaMetadata() + 260));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MediaMetadata.semanticStyleSceneBias.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 264));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.semanticStyleSceneBias.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 264);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.semanticStyleWarmthBias.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 268));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.semanticStyleWarmthBias.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 268);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.semanticStyleRenderingVersion.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 272));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.semanticStyleRenderingVersion.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 272);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.semanticStylePreset.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 276));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.semanticStylePreset.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 276);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.hasSmartStyle.setter(char a1)
{
  result = type metadata accessor for MediaMetadata();
  *(v1 + *(result + 280)) = a1;
  return result;
}

uint64_t MediaMetadata.smartStyleToneBias.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 284));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.smartStyleToneBias.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 284);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.smartStyleColorBias.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 288));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.smartStyleColorBias.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 288);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.smartStyleIntensity.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 292));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.smartStyleIntensity.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 292);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.smartStyleCast.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 296));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.smartStyleCast.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 296);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.smartStyleRenderingVersion.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 300));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.smartStyleRenderingVersion.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 300);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.smartStyleIsReversible.setter(char a1)
{
  result = type metadata accessor for MediaMetadata();
  *(v1 + *(result + 304)) = a1;
  return result;
}

uint64_t MediaMetadata.smartStyleVideoCastValue.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 308));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.smartStyleVideoCastValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 308);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.isHDR.setter(char a1)
{
  result = type metadata accessor for MediaMetadata();
  *(v1 + *(result + 312)) = a1;
  return result;
}

uint64_t MediaMetadata.hasISOGainMap.setter(char a1)
{
  result = type metadata accessor for MediaMetadata();
  *(v1 + *(result + 316)) = a1;
  return result;
}

uint64_t MediaMetadata.isAnimatedImage.setter(char a1)
{
  result = type metadata accessor for MediaMetadata();
  *(v1 + *(result + 320)) = a1;
  return result;
}

uint64_t MediaMetadata.stillImageCaptureFlags.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 324));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.stillImageCaptureFlags.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 324);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

BlastDoor::MediaMetadata::AppleMakerNoteCamera_optional __swiftcall MediaMetadata.AppleMakerNoteCamera.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t MediaMetadata.cameraUsedForCapture.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MediaMetadata();
  *a1 = *(v1 + *(result + 328));
  return result;
}

uint64_t MediaMetadata.cameraUsedForCapture.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for MediaMetadata();
  *(v1 + *(result + 328)) = v2;
  return result;
}

uint64_t MediaMetadata.exifFlashFired.setter(char a1)
{
  result = type metadata accessor for MediaMetadata();
  *(v1 + *(result + 332)) = a1;
  return result;
}

uint64_t MediaMetadata.exifAuxFlashCompensation.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 336));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.exifAuxFlashCompensation.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 336);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.captureModeTimelapse.setter(char a1)
{
  result = type metadata accessor for MediaMetadata();
  *(v1 + *(result + 340)) = a1;
  return result;
}

uint64_t MediaMetadata.hasSpatialAudio.setter(char a1)
{
  result = type metadata accessor for MediaMetadata();
  *(v1 + *(result + 344)) = a1;
  return result;
}

uint64_t MediaMetadata.isAlchemist.setter(char a1)
{
  result = type metadata accessor for MediaMetadata();
  *(v1 + *(result + 348)) = a1;
  return result;
}

uint64_t MediaMetadata.isThreeImageStereoHEIC.setter(char a1)
{
  result = type metadata accessor for MediaMetadata();
  *(v1 + *(result + 352)) = a1;
  return result;
}

uint64_t MediaMetadata.generativeAIImageType.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 356));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MediaMetadata.generativeAIImageType.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata();
  v6 = v2 + *(result + 356);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.IPTCCredit.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaMetadata() + 360));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MediaMetadata.IPTCCredit.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaMetadata() + 360));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

__n128 MediaMetadata.init(largeImageContextualInfo:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = *a1;
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 1;
  v5 = type metadata accessor for MediaMetadata();
  v6 = v5[5];
  v7 = sub_2146D8B08();
  v8 = *(*(v7 - 8) + 56);
  v8(a2 + v6, 1, 1, v7);
  v9 = a2 + v5[6];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a2 + v5[7];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a2 + v5[8];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a2 + v5[9];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a2 + v5[10];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = (a2 + v5[11]);
  *v14 = 0;
  v14[1] = 0;
  v15 = (a2 + v5[12]);
  *v15 = 0;
  v15[1] = 0;
  v16 = (a2 + v5[13]);
  *v16 = 0;
  v16[1] = 0;
  v17 = a2 + v5[14];
  *v17 = 0;
  *(v17 + 8) = 1;
  *(a2 + v5[15]) = 2;
  v18 = a2 + v5[16];
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = a2 + v5[17];
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = a2 + v5[18];
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = a2 + v5[19];
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = a2 + v5[20];
  *v22 = 0;
  *(v22 + 8) = 1;
  v23 = a2 + v5[21];
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = a2 + v5[22];
  *v24 = 0;
  *(v24 + 8) = 1;
  v25 = a2 + v5[23];
  *v25 = 0;
  *(v25 + 8) = 1;
  v26 = (a2 + v5[24]);
  *v26 = 0;
  v26[1] = 0;
  v27 = (a2 + v5[25]);
  *v27 = 0;
  v27[1] = 0;
  v28 = a2 + v5[26];
  *v28 = 0;
  *(v28 + 8) = 1;
  v29 = a2 + v5[27];
  *v29 = 0;
  *(v29 + 8) = 1;
  v30 = a2 + v5[28];
  *v30 = 0;
  *(v30 + 8) = 1;
  v31 = a2 + v5[29];
  *v31 = 0;
  *(v31 + 8) = 1;
  v32 = a2 + v5[30];
  *v32 = 0;
  *(v32 + 8) = 1;
  *(a2 + v5[31]) = 2;
  *(a2 + v5[32]) = 2;
  v33 = (a2 + v5[33]);
  *v33 = 0;
  v33[1] = 0;
  v34 = a2 + v5[34];
  *v34 = 0;
  *(v34 + 8) = 1;
  v35 = a2 + v5[35];
  *v35 = 0;
  *(v35 + 8) = 1;
  v36 = a2 + v5[36];
  *v36 = 0;
  *(v36 + 8) = 1;
  v37 = a2 + v5[37];
  *v37 = 0;
  *(v37 + 8) = 1;
  v38 = a2 + v5[38];
  *v38 = 0;
  *(v38 + 8) = 1;
  v39 = a2 + v5[39];
  *v39 = 0;
  *(v39 + 8) = 1;
  v40 = a2 + v5[40];
  *v40 = 0;
  *(v40 + 8) = 1;
  v41 = a2 + v5[41];
  *v41 = 0;
  *(v41 + 8) = 1;
  v42 = (a2 + v5[42]);
  *v42 = 0;
  v42[1] = 0;
  v43 = (a2 + v5[43]);
  *v43 = 0;
  v43[1] = 0;
  v44 = (a2 + v5[44]);
  *v44 = 0;
  v44[1] = 0;
  *(a2 + v5[45]) = 2;
  v45 = a2 + v5[46];
  *v45 = 0;
  *(v45 + 8) = 1;
  v46 = a2 + v5[47];
  *v46 = 0;
  *(v46 + 8) = 1;
  v47 = (a2 + v5[48]);
  *v47 = 0;
  v47[1] = 0;
  v48 = a2 + v5[49];
  *v48 = 0;
  *(v48 + 8) = 1;
  v49 = a2 + v5[50];
  *v49 = 0;
  *(v49 + 8) = 1;
  v50 = a2 + v5[51];
  *v50 = 0;
  *(v50 + 8) = 1;
  v51 = a2 + v5[52];
  *v51 = 0;
  *(v51 + 8) = 1;
  v52 = (a2 + v5[53]);
  *v52 = 0;
  v52[1] = 0;
  v8(a2 + v5[54], 1, 1, v7);
  v53 = a2 + v5[55];
  *v53 = 0;
  *(v53 + 8) = 1;
  v54 = a2 + v5[56];
  *v54 = 0;
  *(v54 + 8) = 1;
  v55 = (a2 + v5[57]);
  *v55 = 0;
  v55[1] = 0;
  v56 = (a2 + v5[58]);
  *v56 = 0;
  v56[1] = 0;
  v57 = a2 + v5[59];
  *v57 = 0;
  *(v57 + 8) = 1;
  v58 = (a2 + v5[60]);
  *v58 = 0;
  v58[1] = 0;
  *(a2 + v5[61]) = 2;
  v59 = v5[62];
  v60 = sub_2146D8B88();
  (*(*(v60 - 8) + 56))(a2 + v59, 1, 1, v60);
  v61 = (a2 + v5[63]);
  *v61 = 0;
  v61[1] = 0;
  *(a2 + v5[64]) = 2;
  v62 = (a2 + v5[65]);
  *v62 = 0;
  v62[1] = 0;
  v63 = a2 + v5[66];
  *v63 = 0;
  *(v63 + 8) = 1;
  v64 = a2 + v5[67];
  *v64 = 0;
  *(v64 + 8) = 1;
  v65 = a2 + v5[68];
  *v65 = 0;
  *(v65 + 8) = 1;
  v66 = a2 + v5[69];
  *v66 = 0;
  *(v66 + 8) = 1;
  *(a2 + v5[70]) = 2;
  v67 = a2 + v5[71];
  *v67 = 0;
  *(v67 + 8) = 1;
  v68 = a2 + v5[72];
  *v68 = 0;
  *(v68 + 8) = 1;
  v69 = a2 + v5[73];
  *v69 = 0;
  *(v69 + 8) = 1;
  v70 = a2 + v5[74];
  *v70 = 0;
  *(v70 + 8) = 1;
  v71 = a2 + v5[75];
  *v71 = 0;
  *(v71 + 8) = 1;
  *(a2 + v5[76]) = 2;
  v72 = a2 + v5[77];
  *v72 = 0;
  *(v72 + 8) = 1;
  *(a2 + v5[78]) = 2;
  *(a2 + v5[79]) = 2;
  *(a2 + v5[80]) = 2;
  v73 = a2 + v5[81];
  *v73 = 0;
  *(v73 + 8) = 1;
  *(a2 + v5[82]) = 7;
  *(a2 + v5[83]) = 2;
  v74 = a2 + v5[84];
  *v74 = 0;
  *(v74 + 8) = 1;
  *(a2 + v5[85]) = 2;
  *(a2 + v5[86]) = 2;
  *(a2 + v5[87]) = 2;
  *(a2 + v5[88]) = 2;
  v75 = a2 + v5[89];
  *v75 = 0;
  *(v75 + 8) = 1;
  v76 = (a2 + v5[90]);
  *v76 = 0;
  v76[1] = 0;
  result = v78;
  *a2 = v78;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  return result;
}

uint64_t sub_214037BA4(char a1)
{
  result = 0x7461446567616D69;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x656E6F7A656D6974;
      break;
    case 3:
    case 16:
    case 42:
    case 67:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x6E6569724F776172;
      break;
    case 5:
    case 6:
      result = 0x6C65786950776172;
      break;
    case 7:
      result = 0x65646F4D736E656CLL;
      break;
    case 8:
      result = 0x656B614D736E656CLL;
      break;
    case 9:
      result = 0x4E656C69666F7270;
      break;
    case 10:
      result = 0x69737365636F7270;
      break;
    case 11:
    case 56:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x6572757472657061;
      break;
    case 13:
    case 25:
    case 38:
    case 53:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0x6873616C66;
      break;
    case 15:
      result = 0x6E654C6C61636F66;
      break;
    case 17:
      result = 0x6E697461526F7369;
      break;
    case 18:
      result = 0x676E69726574656DLL;
      break;
    case 19:
      result = 0x5372657474756873;
      break;
    case 20:
      result = 0x6C65646F6DLL;
      break;
    case 21:
      result = 1701536109;
      break;
    case 22:
      result = 0x6C61426574696877;
      break;
    case 23:
      result = 0x756F53746867696CLL;
      break;
    case 24:
    case 54:
    case 85:
      result = 0xD000000000000015;
      break;
    case 26:
      result = 0x6E696147726468;
      break;
    case 27:
      v3 = 0x524448736168;
      goto LABEL_14;
    case 28:
    case 44:
    case 71:
      result = 0xD00000000000001ALL;
      break;
    case 29:
      result = 0xD00000000000001BLL;
      break;
    case 30:
      result = 0x79616C6544666967;
      break;
    case 31:
      result = 0xD000000000000013;
      break;
    case 32:
    case 61:
      result = 0xD00000000000001CLL;
      break;
    case 33:
    case 34:
      result = 0xD000000000000020;
      break;
    case 35:
      result = 0xD000000000000024;
      break;
    case 36:
      result = 0x6974617275447661;
      break;
    case 37:
      result = 0x5350467661;
      break;
    case 39:
      result = 0x4D65727574706163;
      break;
    case 40:
      result = 0x4D6F656469567369;
      break;
    case 41:
      result = 0x7365526F72507369;
      break;
    case 43:
    case 62:
    case 72:
    case 77:
    case 84:
      result = 0xD000000000000016;
      break;
    case 45:
      result = 0x64757469676E6F6CLL;
      break;
    case 46:
      result = 0x656475746974616CLL;
      break;
    case 47:
      result = 0x6564757469746C61;
      break;
    case 48:
    case 49:
      result = 0x6465657053737067;
      break;
    case 50:
      result = 0x73656D6954737067;
      break;
    case 51:
    case 78:
    case 81:
      result = 0xD000000000000014;
      break;
    case 52:
      result = 0x7269446567616D69;
      break;
    case 55:
      result = 0x657A6953656C6966;
      break;
    case 57:
      result = 0x426F746F68507369;
      break;
    case 58:
      result = 0x6975557473727562;
      break;
    case 59:
      result = 0x6D6D6F4372657375;
      break;
    case 60:
      result = 0xD000000000000013;
      break;
    case 63:
      result = 0xD000000000000017;
      break;
    case 64:
      result = 0xD00000000000001DLL;
      break;
    case 65:
      result = 0xD000000000000013;
      break;
    case 66:
      result = 0x7472616D53736168;
      break;
    case 68:
      result = 0xD000000000000013;
      break;
    case 69:
      result = 0xD000000000000013;
      break;
    case 70:
      result = 0x7974537472616D73;
      break;
    case 74:
      result = 0x5244487369;
      break;
    case 75:
      v3 = 0x4F5349736168;
LABEL_14:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6147000000000000;
      break;
    case 76:
      result = 0x74616D696E417369;
      break;
    case 79:
      result = 0x73616C4666697865;
      break;
    case 82:
      result = 0x6974617053736168;
      break;
    case 83:
      result = 0x6D6568636C417369;
      break;
    case 86:
      result = 0x6465724343545049;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

uint64_t sub_214038454()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](v1);
  return sub_2146DA9B8();
}

uint64_t sub_21403849C()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](v1);
  return sub_2146DA9B8();
}

uint64_t sub_2140384E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21403C7B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21403851C(uint64_t a1)
{
  v2 = sub_214039858();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214038558(uint64_t a1)
{
  v2 = sub_214039858();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F98, &qword_2146E9DC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v232 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214039858();
  sub_2146DAA28();
  v11 = *(v3 + 2);
  v12 = *(v3 + 24);
  v232 = *v3;
  v233 = v11;
  v234 = v12;
  v235 = 0;
  sub_2140398AC();
  sub_2146DA308();
  if (!v2)
  {
    v13 = type metadata accessor for MediaMetadata();
    v14 = v13[5];
    LOBYTE(v232) = 1;
    sub_2146D8B08();
    sub_21403BAD8(&qword_280B34C68, MEMORY[0x277CC9578]);
    sub_2146DA308();
    v15 = (v3 + v13[6]);
    v16 = *v15;
    v17 = *(v15 + 8);
    LOBYTE(v232) = 2;
    sub_2146DA2E8();
    v18 = (v3 + v13[7]);
    v19 = *v18;
    v20 = *(v18 + 8);
    LOBYTE(v232) = 3;
    sub_2146DA2D8();
    v21 = (v3 + v13[8]);
    v22 = *v21;
    v23 = *(v21 + 8);
    LOBYTE(v232) = 4;
    sub_2146DA2E8();
    v24 = (v3 + v13[9]);
    v25 = *v24;
    v26 = *(v24 + 8);
    LOBYTE(v232) = 5;
    sub_2146DA2F8();
    v27 = (v3 + v13[10]);
    v28 = *v27;
    v29 = *(v27 + 8);
    LOBYTE(v232) = 6;
    sub_2146DA2F8();
    v30 = (v3 + v13[11]);
    v31 = *v30;
    v32 = v30[1];
    LOBYTE(v232) = 7;
    sub_2146DA2B8();
    v33 = (v3 + v13[12]);
    v34 = *v33;
    v35 = v33[1];
    LOBYTE(v232) = 8;
    sub_2146DA2B8();
    v36 = (v3 + v13[13]);
    v37 = *v36;
    v38 = v36[1];
    LOBYTE(v232) = 9;
    sub_2146DA2B8();
    v39 = (v3 + v13[14]);
    v40 = *v39;
    v41 = *(v39 + 8);
    LOBYTE(v232) = 10;
    sub_2146DA2F8();
    v42 = *(v3 + v13[15]);
    LOBYTE(v232) = 11;
    sub_2146DA2C8();
    v43 = (v3 + v13[16]);
    v44 = *v43;
    v45 = *(v43 + 8);
    LOBYTE(v232) = 12;
    sub_2146DA2D8();
    v46 = (v3 + v13[17]);
    v47 = *v46;
    v48 = *(v46 + 8);
    LOBYTE(v232) = 13;
    sub_2146DA2E8();
    v49 = (v3 + v13[18]);
    v50 = *v49;
    v51 = *(v49 + 8);
    LOBYTE(v232) = 14;
    sub_2146DA2E8();
    v52 = (v3 + v13[19]);
    v53 = *v52;
    v54 = *(v52 + 8);
    LOBYTE(v232) = 15;
    sub_2146DA2D8();
    v55 = (v3 + v13[20]);
    v56 = *v55;
    v57 = *(v55 + 8);
    LOBYTE(v232) = 16;
    sub_2146DA2D8();
    v58 = (v3 + v13[21]);
    v59 = *v58;
    v60 = *(v58 + 8);
    LOBYTE(v232) = 17;
    sub_2146DA2E8();
    v61 = (v3 + v13[22]);
    v62 = *v61;
    v63 = *(v61 + 8);
    LOBYTE(v232) = 18;
    sub_2146DA2E8();
    v64 = (v3 + v13[23]);
    v65 = *v64;
    v66 = *(v64 + 8);
    LOBYTE(v232) = 19;
    sub_2146DA2D8();
    v67 = (v3 + v13[24]);
    v68 = *v67;
    v69 = v67[1];
    LOBYTE(v232) = 20;
    sub_2146DA2B8();
    v70 = (v3 + v13[25]);
    v71 = *v70;
    v72 = v70[1];
    LOBYTE(v232) = 21;
    sub_2146DA2B8();
    v73 = (v3 + v13[26]);
    v74 = *v73;
    v75 = *(v73 + 8);
    LOBYTE(v232) = 22;
    sub_2146DA2E8();
    v76 = (v3 + v13[27]);
    v77 = *v76;
    v78 = *(v76 + 8);
    LOBYTE(v232) = 23;
    sub_2146DA2E8();
    v79 = (v3 + v13[28]);
    v80 = *v79;
    v81 = *(v79 + 8);
    LOBYTE(v232) = 24;
    sub_2146DA2E8();
    v82 = (v3 + v13[29]);
    v83 = *v82;
    v84 = *(v82 + 8);
    LOBYTE(v232) = 25;
    sub_2146DA2E8();
    v85 = (v3 + v13[30]);
    v86 = *v85;
    v87 = *(v85 + 8);
    LOBYTE(v232) = 26;
    sub_2146DA2D8();
    v88 = *(v3 + v13[31]);
    LOBYTE(v232) = 27;
    sub_2146DA2C8();
    v89 = *(v3 + v13[32]);
    LOBYTE(v232) = 28;
    sub_2146DA2C8();
    v90 = (v3 + v13[33]);
    v91 = *v90;
    v92 = v90[1];
    LOBYTE(v232) = 29;
    sub_2146DA2B8();
    v93 = (v3 + v13[34]);
    v94 = *v93;
    v95 = *(v93 + 8);
    LOBYTE(v232) = 30;
    sub_2146DA2D8();
    v96 = (v3 + v13[35]);
    v97 = *v96;
    v98 = *(v96 + 8);
    LOBYTE(v232) = 31;
    sub_2146DA2F8();
    v99 = (v3 + v13[36]);
    v100 = *v99;
    v101 = *(v99 + 8);
    LOBYTE(v232) = 32;
    sub_2146DA2D8();
    v102 = (v3 + v13[37]);
    v103 = *v102;
    v104 = *(v102 + 8);
    LOBYTE(v232) = 33;
    sub_2146DA2D8();
    v105 = (v3 + v13[38]);
    v106 = *v105;
    v107 = *(v105 + 8);
    LOBYTE(v232) = 34;
    sub_2146DA2D8();
    v108 = (v3 + v13[39]);
    v109 = *v108;
    v110 = *(v108 + 8);
    LOBYTE(v232) = 35;
    sub_2146DA2D8();
    v111 = (v3 + v13[40]);
    v112 = *v111;
    v113 = *(v111 + 8);
    LOBYTE(v232) = 36;
    sub_2146DA2D8();
    v115 = (v3 + v13[41]);
    v116 = *v115;
    v117 = *(v115 + 8);
    LOBYTE(v232) = 37;
    sub_2146DA2D8();
    v118 = (v3 + v13[42]);
    v119 = *v118;
    v120 = v118[1];
    LOBYTE(v232) = 38;
    sub_2146DA2B8();
    v121 = (v3 + v13[43]);
    v122 = *v121;
    v123 = v121[1];
    LOBYTE(v232) = 39;
    sub_2146DA2B8();
    v124 = (v3 + v13[44]);
    v125 = *v124;
    v126 = v124[1];
    LOBYTE(v232) = 40;
    sub_2146DA2B8();
    v127 = *(v3 + v13[45]);
    LOBYTE(v232) = 41;
    sub_2146DA2C8();
    v128 = (v3 + v13[46]);
    v129 = *v128;
    v130 = *(v128 + 8);
    LOBYTE(v232) = 42;
    sub_2146DA2D8();
    v131 = (v3 + v13[47]);
    v132 = *v131;
    v133 = *(v131 + 8);
    LOBYTE(v232) = 43;
    sub_2146DA2D8();
    v134 = (v3 + v13[48]);
    v135 = *v134;
    v136 = v134[1];
    LOBYTE(v232) = 44;
    sub_2146DA2B8();
    v137 = (v3 + v13[49]);
    v138 = *v137;
    v139 = *(v137 + 8);
    LOBYTE(v232) = 45;
    sub_2146DA2D8();
    v140 = (v3 + v13[50]);
    v141 = *v140;
    v142 = *(v140 + 8);
    LOBYTE(v232) = 46;
    sub_2146DA2D8();
    v143 = (v3 + v13[51]);
    v144 = *v143;
    v145 = *(v143 + 8);
    LOBYTE(v232) = 47;
    sub_2146DA2D8();
    v146 = (v3 + v13[52]);
    v147 = *v146;
    v148 = *(v146 + 8);
    LOBYTE(v232) = 48;
    sub_2146DA2D8();
    v149 = (v3 + v13[53]);
    v150 = *v149;
    v151 = v149[1];
    LOBYTE(v232) = 49;
    sub_2146DA2B8();
    v152 = v13[54];
    LOBYTE(v232) = 50;
    sub_2146DA308();
    v153 = (v3 + v13[55]);
    v154 = *v153;
    v155 = *(v153 + 8);
    LOBYTE(v232) = 51;
    sub_2146DA2D8();
    v156 = (v3 + v13[56]);
    v157 = *v156;
    v158 = *(v156 + 8);
    LOBYTE(v232) = 52;
    sub_2146DA2D8();
    v159 = (v3 + v13[57]);
    v160 = *v159;
    v161 = v159[1];
    LOBYTE(v232) = 53;
    sub_2146DA2B8();
    v162 = (v3 + v13[58]);
    v163 = *v162;
    v164 = v162[1];
    LOBYTE(v232) = 54;
    sub_2146DA2B8();
    v165 = (v3 + v13[59]);
    v166 = *v165;
    v167 = *(v165 + 8);
    LOBYTE(v232) = 55;
    sub_2146DA2F8();
    v168 = (v3 + v13[60]);
    v169 = *v168;
    v170 = v168[1];
    LOBYTE(v232) = 56;
    sub_2146DA2B8();
    v171 = *(v3 + v13[61]);
    LOBYTE(v232) = 57;
    sub_2146DA2C8();
    v172 = v13[62];
    LOBYTE(v232) = 58;
    sub_2146D8B88();
    sub_21403BAD8(&qword_280B34D20, MEMORY[0x277CC95F0]);
    sub_2146DA308();
    v173 = (v3 + v13[63]);
    v174 = *v173;
    v175 = v173[1];
    LOBYTE(v232) = 59;
    sub_2146DA2B8();
    v176 = *(v3 + v13[64]);
    LOBYTE(v232) = 60;
    sub_2146DA2C8();
    v177 = (v3 + v13[65]);
    v178 = *v177;
    v179 = v177[1];
    LOBYTE(v232) = 61;
    sub_2146DA2B8();
    v180 = (v3 + v13[66]);
    v181 = *v180;
    v182 = *(v180 + 8);
    LOBYTE(v232) = 62;
    sub_2146DA2D8();
    v183 = (v3 + v13[67]);
    v184 = *v183;
    v185 = *(v183 + 8);
    LOBYTE(v232) = 63;
    sub_2146DA2D8();
    v186 = (v3 + v13[68]);
    v187 = *v186;
    v188 = *(v186 + 8);
    LOBYTE(v232) = 64;
    sub_2146DA2E8();
    v189 = (v3 + v13[69]);
    v190 = *v189;
    v191 = *(v189 + 8);
    LOBYTE(v232) = 65;
    sub_2146DA2E8();
    v192 = *(v3 + v13[70]);
    LOBYTE(v232) = 66;
    sub_2146DA2C8();
    v193 = (v3 + v13[71]);
    v194 = *v193;
    v195 = *(v193 + 8);
    LOBYTE(v232) = 67;
    sub_2146DA2D8();
    v196 = (v3 + v13[72]);
    v197 = *v196;
    v198 = *(v196 + 8);
    LOBYTE(v232) = 68;
    sub_2146DA2D8();
    v199 = (v3 + v13[73]);
    v200 = *v199;
    v201 = *(v199 + 8);
    LOBYTE(v232) = 69;
    sub_2146DA2D8();
    v202 = (v3 + v13[74]);
    v203 = *v202;
    v204 = *(v202 + 8);
    LOBYTE(v232) = 70;
    sub_2146DA2D8();
    v205 = (v3 + v13[75]);
    v206 = *v205;
    v207 = *(v205 + 8);
    LOBYTE(v232) = 71;
    sub_2146DA2E8();
    v208 = *(v3 + v13[76]);
    LOBYTE(v232) = 72;
    sub_2146DA2C8();
    v209 = (v3 + v13[77]);
    v210 = *v209;
    v211 = *(v209 + 8);
    LOBYTE(v232) = 73;
    sub_2146DA2D8();
    v212 = *(v3 + v13[78]);
    LOBYTE(v232) = 74;
    sub_2146DA2C8();
    v213 = *(v3 + v13[79]);
    LOBYTE(v232) = 75;
    sub_2146DA2C8();
    v214 = *(v3 + v13[80]);
    LOBYTE(v232) = 76;
    sub_2146DA2C8();
    v215 = (v3 + v13[81]);
    v216 = *v215;
    v217 = *(v215 + 8);
    LOBYTE(v232) = 77;
    sub_2146DA2F8();
    LOBYTE(v232) = *(v3 + v13[82]);
    v235 = 78;
    sub_214039900();
    sub_2146DA308();
    v218 = *(v3 + v13[83]);
    LOBYTE(v232) = 79;
    sub_2146DA2C8();
    v219 = (v3 + v13[84]);
    v220 = *v219;
    v221 = *(v219 + 8);
    LOBYTE(v232) = 80;
    sub_2146DA2D8();
    v222 = *(v3 + v13[85]);
    LOBYTE(v232) = 81;
    sub_2146DA2C8();
    v223 = *(v3 + v13[86]);
    LOBYTE(v232) = 82;
    sub_2146DA2C8();
    v224 = *(v3 + v13[87]);
    LOBYTE(v232) = 83;
    sub_2146DA2C8();
    v225 = *(v3 + v13[88]);
    LOBYTE(v232) = 84;
    sub_2146DA2C8();
    v226 = (v3 + v13[89]);
    v227 = *v226;
    v228 = *(v226 + 8);
    LOBYTE(v232) = 85;
    sub_2146DA2D8();
    v229 = (v3 + v13[90]);
    v230 = *v229;
    v231 = v229[1];
    LOBYTE(v232) = 86;
    sub_2146DA2B8();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_214039858()
{
  result = qword_280B346B8[0];
  if (!qword_280B346B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280B346B8);
  }

  return result;
}

unint64_t sub_2140398AC()
{
  result = qword_280B34BF8;
  if (!qword_280B34BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B34BF8);
  }

  return result;
}

unint64_t sub_214039900()
{
  result = qword_280B34C20;
  if (!qword_280B34C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B34C20);
  }

  return result;
}

uint64_t MediaMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v396 = a1;
  v374 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v328 = v300 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v352 = v300 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v391 = v300 - v9;
  v392 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FA0, &qword_2146E9DC8);
  v390 = *(v392 - 8);
  v10 = *(v390 + 64);
  MEMORY[0x28223BE20](v392);
  v395 = v300 - v11;
  v12 = type metadata accessor for MediaMetadata();
  v13 = (v12 - 8);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v300 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  *v16 = 0;
  v16[24] = 1;
  v17 = v13[7];
  v18 = sub_2146D8B08();
  v19 = *(*(v18 - 8) + 56);
  v388 = v17;
  v19(&v16[v17], 1, 1, v18);
  v20 = &v16[v13[8]];
  *v20 = 0;
  v387 = v20;
  v20[8] = 1;
  v21 = &v16[v13[9]];
  *v21 = 0;
  v386 = v21;
  v21[8] = 1;
  v22 = &v16[v13[10]];
  *v22 = 0;
  v385 = v22;
  v22[8] = 1;
  v23 = &v16[v13[11]];
  *v23 = 0;
  v384 = v23;
  v23[8] = 1;
  v24 = &v16[v13[12]];
  *v24 = 0;
  v383 = v24;
  v24[8] = 1;
  v25 = &v16[v13[13]];
  *v25 = 0;
  *(v25 + 1) = 0;
  v382 = v25;
  v26 = &v16[v13[14]];
  *v26 = 0;
  *(v26 + 1) = 0;
  v381 = v26;
  v27 = &v16[v13[15]];
  *v27 = 0;
  *(v27 + 1) = 0;
  v380 = v27;
  v28 = &v16[v13[16]];
  *v28 = 0;
  v379 = v28;
  v28[8] = 1;
  v378 = v13[17];
  v16[v378] = 2;
  v29 = &v16[v13[18]];
  *v29 = 0;
  v377 = v29;
  v29[8] = 1;
  v30 = &v16[v13[19]];
  *v30 = 0;
  v376 = v30;
  v30[8] = 1;
  v31 = &v16[v13[20]];
  *v31 = 0;
  v375 = v31;
  v31[8] = 1;
  v32 = &v16[v13[21]];
  *v32 = 0;
  v305 = v32;
  v32[8] = 1;
  v33 = &v16[v13[22]];
  *v33 = 0;
  v306 = v33;
  v33[8] = 1;
  v34 = &v16[v13[23]];
  *v34 = 0;
  v307 = v34;
  v34[8] = 1;
  v35 = &v16[v13[24]];
  *v35 = 0;
  v308 = v35;
  v35[8] = 1;
  v36 = &v16[v13[25]];
  *v36 = 0;
  v309 = v36;
  v36[8] = 1;
  v37 = &v16[v13[26]];
  *v37 = 0;
  *(v37 + 1) = 0;
  v310 = v37;
  v38 = &v16[v13[27]];
  *v38 = 0;
  *(v38 + 1) = 0;
  v311 = v38;
  v39 = &v16[v13[28]];
  *v39 = 0;
  v312 = v39;
  v39[8] = 1;
  v40 = &v16[v13[29]];
  *v40 = 0;
  v313 = v40;
  v40[8] = 1;
  v41 = &v16[v13[30]];
  *v41 = 0;
  v314 = v41;
  v41[8] = 1;
  v42 = &v16[v13[31]];
  *v42 = 0;
  v315 = v42;
  v42[8] = 1;
  v43 = &v16[v13[32]];
  *v43 = 0;
  v316 = v43;
  v43[8] = 1;
  v317 = v13[33];
  v16[v317] = 2;
  v318 = v13[34];
  v16[v318] = 2;
  v44 = &v16[v13[35]];
  *v44 = 0;
  *(v44 + 1) = 0;
  v319 = v44;
  v45 = &v16[v13[36]];
  *v45 = 0;
  v320 = v45;
  v45[8] = 1;
  v46 = &v16[v13[37]];
  *v46 = 0;
  v321 = v46;
  v46[8] = 1;
  v47 = &v16[v13[38]];
  *v47 = 0;
  v322 = v47;
  v47[8] = 1;
  v48 = &v16[v13[39]];
  *v48 = 0;
  v323 = v48;
  v48[8] = 1;
  v49 = &v16[v13[40]];
  *v49 = 0;
  v324 = v49;
  v49[8] = 1;
  v50 = &v16[v13[41]];
  *v50 = 0;
  v325 = v50;
  v50[8] = 1;
  v51 = &v16[v13[42]];
  *v51 = 0;
  v326 = v51;
  v51[8] = 1;
  v52 = &v16[v13[43]];
  *v52 = 0;
  v327 = v52;
  v52[8] = 1;
  v53 = &v16[v13[44]];
  *v53 = 0;
  *(v53 + 1) = 0;
  v329 = v53;
  v54 = &v16[v13[45]];
  *v54 = 0;
  *(v54 + 1) = 0;
  v330 = v54;
  v55 = &v16[v13[46]];
  *v55 = 0;
  *(v55 + 1) = 0;
  v331 = v55;
  v332 = v13[47];
  v16[v332] = 2;
  v56 = &v16[v13[48]];
  *v56 = 0;
  v333 = v56;
  v56[8] = 1;
  v57 = &v16[v13[49]];
  *v57 = 0;
  v334 = v57;
  v57[8] = 1;
  v58 = &v16[v13[50]];
  *v58 = 0;
  *(v58 + 1) = 0;
  v335 = v58;
  v59 = &v16[v13[51]];
  *v59 = 0;
  v336 = v59;
  v59[8] = 1;
  v60 = &v16[v13[52]];
  *v60 = 0;
  v337 = v60;
  v60[8] = 1;
  v61 = &v16[v13[53]];
  *v61 = 0;
  v338 = v61;
  v61[8] = 1;
  v62 = &v16[v13[54]];
  *v62 = 0;
  v339 = v62;
  v62[8] = 1;
  v63 = &v16[v13[55]];
  *v63 = 0;
  *(v63 + 1) = 0;
  v340 = v63;
  v341 = v13[56];
  v389 = v18;
  v19(&v16[v341], 1, 1, v18);
  v64 = &v16[v13[57]];
  *v64 = 0;
  v342 = v64;
  v64[8] = 1;
  v65 = &v16[v13[58]];
  *v65 = 0;
  v343 = v65;
  v65[8] = 1;
  v66 = &v16[v13[59]];
  *v66 = 0;
  *(v66 + 1) = 0;
  v344 = v66;
  v67 = &v16[v13[60]];
  *v67 = 0;
  *(v67 + 1) = 0;
  v345 = v67;
  v68 = &v16[v13[61]];
  *v68 = 0;
  v346 = v68;
  v68[8] = 1;
  v69 = &v16[v13[62]];
  *v69 = 0;
  *(v69 + 1) = 0;
  v347 = v69;
  v348 = v13[63];
  v16[v348] = 2;
  v70 = v13[64];
  v71 = sub_2146D8B88();
  v72 = *(*(v71 - 8) + 56);
  v350 = v70;
  v349 = v71;
  v72(&v16[v70], 1, 1);
  v73 = &v16[v13[65]];
  *v73 = 0;
  *(v73 + 1) = 0;
  v351 = v73;
  v353 = v13[66];
  v16[v353] = 2;
  v74 = &v16[v13[67]];
  *v74 = 0;
  *(v74 + 1) = 0;
  v354 = v74;
  v75 = &v16[v13[68]];
  *v75 = 0;
  v355 = v75;
  v75[8] = 1;
  v76 = &v16[v13[69]];
  *v76 = 0;
  v356 = v76;
  v76[8] = 1;
  v77 = &v16[v13[70]];
  *v77 = 0;
  v358 = v77;
  v77[8] = 1;
  v78 = &v16[v13[71]];
  *v78 = 0;
  v359 = v78;
  v78[8] = 1;
  v360 = v13[72];
  v16[v360] = 2;
  v79 = &v16[v13[73]];
  *v79 = 0;
  v361 = v79;
  v79[8] = 1;
  v80 = &v16[v13[74]];
  *v80 = 0;
  v362 = v80;
  v80[8] = 1;
  v81 = &v16[v13[75]];
  *v81 = 0;
  v363 = v81;
  v81[8] = 1;
  v82 = &v16[v13[76]];
  *v82 = 0;
  v364 = v82;
  v82[8] = 1;
  v83 = &v16[v13[77]];
  *v83 = 0;
  v365 = v83;
  v83[8] = 1;
  v366 = v13[78];
  v16[v366] = 2;
  v84 = &v16[v13[79]];
  *v84 = 0;
  v84[8] = 1;
  v367 = v13[80];
  v16[v367] = 2;
  v368 = v13[81];
  v16[v368] = 2;
  v369 = v13[82];
  v16[v369] = 2;
  v85 = &v16[v13[83]];
  *v85 = 0;
  v85[8] = 1;
  v371 = v13[84];
  v16[v371] = 7;
  v372 = v13[85];
  v16[v372] = 2;
  v86 = &v16[v13[86]];
  *v86 = 0;
  v86[8] = 1;
  v373 = v13[87];
  v16[v373] = 2;
  v370 = v13[88];
  v16[v370] = 2;
  v357 = v13[89];
  v16[v357] = 2;
  v87 = v13[90];
  v16[v87] = 2;
  v88 = &v16[v13[91]];
  *v88 = 0;
  v88[8] = 1;
  v89 = v13[92];
  v394 = v16;
  v90 = &v16[v89];
  *v90 = 0;
  *(v90 + 1) = 0;
  v91 = v396[4];
  __swift_project_boxed_opaque_existential_1(v396, v396[3]);
  sub_214039858();
  v92 = v393;
  sub_2146DAA08();
  if (v92)
  {
    v95 = v394;
    __swift_destroy_boxed_opaque_existential_1(v396);
    v299 = v95;
  }

  else
  {
    v93 = v391;
    v302 = v84;
    v303 = v86;
    v301 = v87;
    v304 = v88;
    v393 = v90;
    v94 = v390;
    v400 = 0;
    sub_21403B77C();
    sub_2146DA148();
    v97 = v398;
    v98 = v399;
    v99 = v394;
    *v394 = v397;
    *(v99 + 2) = v97;
    *(v99 + 24) = v98;
    LOBYTE(v397) = 1;
    v100 = sub_21403BAD8(&qword_280B34D28, MEMORY[0x277CC9578]);
    sub_2146DA148();
    v300[1] = v100;
    sub_21402EDB8(v93, v99 + v388, &qword_27C913090, &unk_2146E9DB0);
    LOBYTE(v397) = 2;
    v101 = sub_2146DA128();
    v102 = v387;
    *v387 = v101;
    *(v102 + 8) = v103 & 1;
    LOBYTE(v397) = 3;
    v104 = sub_2146DA118();
    v105 = v386;
    *v386 = v104;
    *(v105 + 8) = v106 & 1;
    LOBYTE(v397) = 4;
    v107 = sub_2146DA128();
    v108 = v385;
    *v385 = v107;
    *(v108 + 8) = v109 & 1;
    LOBYTE(v397) = 5;
    v110 = sub_2146DA138();
    v111 = v384;
    *v384 = v110;
    *(v111 + 8) = v112 & 1;
    LOBYTE(v397) = 6;
    v113 = sub_2146DA138();
    v114 = v383;
    *v383 = v113;
    *(v114 + 8) = v115 & 1;
    LOBYTE(v397) = 7;
    v116 = sub_2146DA0F8();
    v117 = v382;
    *v382 = v116;
    v117[1] = v118;
    LOBYTE(v397) = 8;
    v119 = sub_2146DA0F8();
    v120 = v381;
    *v381 = v119;
    v120[1] = v121;
    LOBYTE(v397) = 9;
    v122 = sub_2146DA0F8();
    v123 = v380;
    *v380 = v122;
    v123[1] = v124;
    LOBYTE(v397) = 10;
    v125 = sub_2146DA138();
    v126 = v379;
    *v379 = v125;
    *(v126 + 8) = v127 & 1;
    LOBYTE(v397) = 11;
    *(v394 + v378) = sub_2146DA108();
    LOBYTE(v397) = 12;
    v128 = sub_2146DA118();
    v129 = v377;
    *v377 = v128;
    *(v129 + 8) = v130 & 1;
    LOBYTE(v397) = 13;
    v131 = sub_2146DA128();
    v132 = v376;
    *v376 = v131;
    *(v132 + 8) = v133 & 1;
    LOBYTE(v397) = 14;
    v134 = sub_2146DA128();
    v135 = v375;
    *v375 = v134;
    *(v135 + 8) = v136 & 1;
    LOBYTE(v397) = 15;
    v137 = sub_2146DA118();
    v138 = v305;
    *v305 = v137;
    *(v138 + 8) = v139 & 1;
    LOBYTE(v397) = 16;
    v140 = sub_2146DA118();
    v141 = v306;
    *v306 = v140;
    *(v141 + 8) = v142 & 1;
    LOBYTE(v397) = 17;
    v143 = sub_2146DA128();
    v144 = v307;
    *v307 = v143;
    *(v144 + 8) = v145 & 1;
    LOBYTE(v397) = 18;
    v146 = sub_2146DA128();
    v147 = v308;
    *v308 = v146;
    *(v147 + 8) = v148 & 1;
    LOBYTE(v397) = 19;
    v149 = sub_2146DA118();
    v150 = v309;
    *v309 = v149;
    *(v150 + 8) = v151 & 1;
    LOBYTE(v397) = 20;
    v152 = sub_2146DA0F8();
    v153 = v310;
    *v310 = v152;
    v153[1] = v154;
    LOBYTE(v397) = 21;
    v155 = sub_2146DA0F8();
    v156 = v311;
    *v311 = v155;
    v156[1] = v157;
    LOBYTE(v397) = 22;
    v158 = sub_2146DA128();
    v159 = v312;
    *v312 = v158;
    *(v159 + 8) = v160 & 1;
    LOBYTE(v397) = 23;
    v161 = sub_2146DA128();
    v162 = v313;
    *v313 = v161;
    *(v162 + 8) = v163 & 1;
    LOBYTE(v397) = 24;
    v164 = sub_2146DA128();
    v165 = v314;
    *v314 = v164;
    *(v165 + 8) = v166 & 1;
    LOBYTE(v397) = 25;
    v167 = sub_2146DA128();
    v168 = v315;
    *v315 = v167;
    *(v168 + 8) = v169 & 1;
    LOBYTE(v397) = 26;
    v170 = sub_2146DA118();
    v171 = v316;
    *v316 = v170;
    *(v171 + 8) = v172 & 1;
    LOBYTE(v397) = 27;
    *(v394 + v317) = sub_2146DA108();
    LOBYTE(v397) = 28;
    *(v394 + v318) = sub_2146DA108();
    LOBYTE(v397) = 29;
    v173 = sub_2146DA0F8();
    v174 = v319;
    *v319 = v173;
    v174[1] = v175;
    LOBYTE(v397) = 30;
    v176 = sub_2146DA118();
    v177 = v320;
    *v320 = v176;
    *(v177 + 8) = v178 & 1;
    LOBYTE(v397) = 31;
    v179 = sub_2146DA138();
    v180 = v321;
    *v321 = v179;
    *(v180 + 8) = v181 & 1;
    LOBYTE(v397) = 32;
    v182 = sub_2146DA118();
    v183 = v322;
    *v322 = v182;
    *(v183 + 8) = v184 & 1;
    LOBYTE(v397) = 33;
    v185 = sub_2146DA118();
    v186 = v323;
    *v323 = v185;
    *(v186 + 8) = v187 & 1;
    LOBYTE(v397) = 34;
    v188 = sub_2146DA118();
    v189 = v324;
    *v324 = v188;
    *(v189 + 8) = v190 & 1;
    LOBYTE(v397) = 35;
    v191 = sub_2146DA118();
    v192 = v325;
    *v325 = v191;
    *(v192 + 8) = v193 & 1;
    LOBYTE(v397) = 36;
    v194 = sub_2146DA118();
    v195 = v326;
    *v326 = v194;
    *(v195 + 8) = v196 & 1;
    LOBYTE(v397) = 37;
    v197 = sub_2146DA118();
    v198 = v327;
    *v327 = v197;
    *(v198 + 8) = v199 & 1;
    LOBYTE(v397) = 38;
    v200 = sub_2146DA0F8();
    v201 = v329;
    *v329 = v200;
    v201[1] = v202;
    LOBYTE(v397) = 39;
    v203 = sub_2146DA0F8();
    v204 = v330;
    *v330 = v203;
    v204[1] = v205;
    LOBYTE(v397) = 40;
    v206 = sub_2146DA0F8();
    v207 = v331;
    *v331 = v206;
    v207[1] = v208;
    LOBYTE(v397) = 41;
    *(v394 + v332) = sub_2146DA108();
    LOBYTE(v397) = 42;
    v209 = sub_2146DA118();
    v210 = v333;
    *v333 = v209;
    *(v210 + 8) = v211 & 1;
    LOBYTE(v397) = 43;
    v212 = sub_2146DA118();
    v213 = v334;
    *v334 = v212;
    *(v213 + 8) = v214 & 1;
    LOBYTE(v397) = 44;
    v215 = sub_2146DA0F8();
    v216 = v335;
    *v335 = v215;
    v216[1] = v217;
    LOBYTE(v397) = 45;
    v218 = sub_2146DA118();
    v219 = v336;
    *v336 = v218;
    *(v219 + 8) = v220 & 1;
    LOBYTE(v397) = 46;
    v221 = sub_2146DA118();
    v222 = v337;
    *v337 = v221;
    *(v222 + 8) = v223 & 1;
    LOBYTE(v397) = 47;
    v224 = sub_2146DA118();
    v225 = v338;
    *v338 = v224;
    *(v225 + 8) = v226 & 1;
    LOBYTE(v397) = 48;
    v227 = sub_2146DA118();
    v228 = v339;
    *v339 = v227;
    *(v228 + 8) = v229 & 1;
    LOBYTE(v397) = 49;
    v230 = sub_2146DA0F8();
    v231 = v340;
    *v340 = v230;
    v231[1] = v232;
    LOBYTE(v397) = 50;
    sub_2146DA148();
    sub_21402EDB8(v352, v394 + v341, &qword_27C913090, &unk_2146E9DB0);
    LOBYTE(v397) = 51;
    v233 = sub_2146DA118();
    v234 = v342;
    *v342 = v233;
    *(v234 + 8) = v235 & 1;
    LOBYTE(v397) = 52;
    v236 = sub_2146DA118();
    v237 = v343;
    *v343 = v236;
    *(v237 + 8) = v238 & 1;
    LOBYTE(v397) = 53;
    v239 = sub_2146DA0F8();
    v240 = v344;
    *v344 = v239;
    v240[1] = v241;
    LOBYTE(v397) = 54;
    v242 = sub_2146DA0F8();
    v243 = v345;
    *v345 = v242;
    v243[1] = v244;
    LOBYTE(v397) = 55;
    v245 = sub_2146DA138();
    v246 = v346;
    *v346 = v245;
    *(v246 + 8) = v247 & 1;
    LOBYTE(v397) = 56;
    v248 = sub_2146DA0F8();
    v249 = v347;
    *v347 = v248;
    v249[1] = v250;
    LOBYTE(v397) = 57;
    *(v394 + v348) = sub_2146DA108();
    LOBYTE(v397) = 58;
    sub_21403BAD8(&qword_280B35350, MEMORY[0x277CC95F0]);
    sub_2146DA148();
    sub_21402EDB8(v328, v394 + v350, &unk_27C904F30, &unk_2146EFA20);
    LOBYTE(v397) = 59;
    v251 = sub_2146DA0F8();
    v252 = v351;
    *v351 = v251;
    v252[1] = v253;
    LOBYTE(v397) = 60;
    *(v394 + v353) = sub_2146DA108();
    LOBYTE(v397) = 61;
    v254 = sub_2146DA0F8();
    v255 = v354;
    *v354 = v254;
    v255[1] = v256;
    LOBYTE(v397) = 62;
    v257 = sub_2146DA118();
    v258 = v355;
    *v355 = v257;
    *(v258 + 8) = v259 & 1;
    LOBYTE(v397) = 63;
    v260 = sub_2146DA118();
    v261 = v356;
    *v356 = v260;
    *(v261 + 8) = v262 & 1;
    LOBYTE(v397) = 64;
    v263 = sub_2146DA128();
    v264 = v358;
    *v358 = v263;
    *(v264 + 8) = v265 & 1;
    LOBYTE(v397) = 65;
    v266 = sub_2146DA128();
    v267 = v359;
    *v359 = v266;
    *(v267 + 8) = v268 & 1;
    LOBYTE(v397) = 66;
    *(v394 + v360) = sub_2146DA108();
    LOBYTE(v397) = 67;
    v269 = sub_2146DA118();
    v270 = v361;
    *v361 = v269;
    *(v270 + 8) = v271 & 1;
    LOBYTE(v397) = 68;
    v272 = sub_2146DA118();
    v273 = v362;
    *v362 = v272;
    *(v273 + 8) = v274 & 1;
    LOBYTE(v397) = 69;
    v275 = sub_2146DA118();
    v276 = v363;
    *v363 = v275;
    *(v276 + 8) = v277 & 1;
    LOBYTE(v397) = 70;
    v278 = sub_2146DA118();
    v279 = v364;
    *v364 = v278;
    *(v279 + 8) = v280 & 1;
    LOBYTE(v397) = 71;
    v281 = sub_2146DA128();
    v282 = v365;
    *v365 = v281;
    *(v282 + 8) = v283 & 1;
    LOBYTE(v397) = 72;
    *(v394 + v366) = sub_2146DA108();
    LOBYTE(v397) = 73;
    v284 = sub_2146DA118();
    v285 = v302;
    *v302 = v284;
    *(v285 + 8) = v286 & 1;
    LOBYTE(v397) = 74;
    *(v394 + v367) = sub_2146DA108();
    LOBYTE(v397) = 75;
    *(v394 + v368) = sub_2146DA108();
    LOBYTE(v397) = 76;
    *(v394 + v369) = sub_2146DA108();
    LOBYTE(v397) = 77;
    *v85 = sub_2146DA138();
    v85[8] = v287 & 1;
    v400 = 78;
    sub_21403B7D0();
    sub_2146DA148();
    *(v394 + v371) = v397;
    LOBYTE(v397) = 79;
    *(v394 + v372) = sub_2146DA108();
    LOBYTE(v397) = 80;
    v288 = sub_2146DA118();
    v289 = v303;
    *v303 = v288;
    *(v289 + 8) = v290 & 1;
    LOBYTE(v397) = 81;
    *(v394 + v373) = sub_2146DA108();
    LOBYTE(v397) = 82;
    *(v394 + v370) = sub_2146DA108();
    LOBYTE(v397) = 83;
    *(v394 + v357) = sub_2146DA108();
    LOBYTE(v397) = 84;
    *(v394 + v301) = sub_2146DA108();
    LOBYTE(v397) = 85;
    v291 = sub_2146DA118();
    v292 = v304;
    *v304 = v291;
    *(v292 + 8) = v293 & 1;
    LOBYTE(v397) = 86;
    v294 = sub_2146DA0F8();
    v296 = v295;
    (*(v94 + 8))(v395, v392);
    v297 = v393;
    v298 = v394;
    *v393 = v294;
    v297[1] = v296;
    sub_21403B824(v298, v374);
    __swift_destroy_boxed_opaque_existential_1(v396);
    v299 = v298;
  }

  return sub_21403B720(v299);
}

uint64_t sub_21403B720(uint64_t a1)
{
  v2 = type metadata accessor for MediaMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21403B77C()
{
  result = qword_280B34BF0;
  if (!qword_280B34BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B34BF0);
  }

  return result;
}

unint64_t sub_21403B7D0()
{
  result = qword_280B34C18;
  if (!qword_280B34C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B34C18);
  }

  return result;
}

uint64_t sub_21403B824(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21403B8C8()
{
  result = qword_27C903FA8;
  if (!qword_27C903FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C903FA8);
  }

  return result;
}

unint64_t sub_21403B91C(uint64_t a1)
{
  *(a1 + 8) = sub_21403B7D0();
  result = sub_214039900();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21403B950()
{
  result = qword_280B34678;
  if (!qword_280B34678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B34678);
  }

  return result;
}

unint64_t sub_21403B9A8()
{
  result = qword_280B34680;
  if (!qword_280B34680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B34680);
  }

  return result;
}

uint64_t sub_21403B9FC(uint64_t a1)
{
  result = sub_21403BAD8(&qword_280B34668, type metadata accessor for MediaMetadata);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21403BA54(uint64_t a1)
{
  *(a1 + 8) = sub_21403BAD8(&qword_280B34BE8, type metadata accessor for MediaMetadata);
  result = sub_21403BAD8(&qword_280B34670, type metadata accessor for MediaMetadata);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21403BAD8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21403BB48()
{
  sub_21403BEC8(319, &qword_280B34E48);
  if (v0 <= 0x3F)
  {
    sub_21403BE74(319, &qword_280B35230, MEMORY[0x277CC9578]);
    if (v1 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B34BC8);
      if (v2 <= 0x3F)
      {
        sub_21403BEC8(319, &qword_280B34BD0);
        if (v3 <= 0x3F)
        {
          sub_21403BEC8(319, &qword_280B34BB8);
          if (v4 <= 0x3F)
          {
            sub_21403BEC8(319, &qword_280B34BE0);
            if (v5 <= 0x3F)
            {
              sub_21403BEC8(319, &qword_280B34BD8);
              if (v6 <= 0x3F)
              {
                sub_21403BE74(319, &qword_280B353F8, MEMORY[0x277CC95F0]);
                if (v7 <= 0x3F)
                {
                  sub_21403BEC8(319, &qword_280B34C10);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_21403BE74(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2146D9D38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21403BEC8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2146D9D38();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ValidatorContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t getEnumTagSinglePayload for MediaMetadata.AppleMakerNoteCamera(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaMetadata.AppleMakerNoteCamera(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xAA)
  {
    goto LABEL_17;
  }

  if (a2 + 86 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 86) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 86;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 86;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 86;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x57;
  v8 = v6 - 87;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 86 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 86) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xAA)
  {
    v4 = 0;
  }

  if (a2 > 0xA9)
  {
    v5 = ((a2 - 170) >> 8) + 1;
    *result = a2 + 86;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 86;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaMetadata.Context.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for MediaMetadata.Context.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_21403C370()
{
  result = qword_27C903FB0;
  if (!qword_27C903FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C903FB0);
  }

  return result;
}

unint64_t sub_21403C3C8()
{
  result = qword_27C903FB8;
  if (!qword_27C903FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C903FB8);
  }

  return result;
}

unint64_t sub_21403C420()
{
  result = qword_27C903FC0;
  if (!qword_27C903FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C903FC0);
  }

  return result;
}

unint64_t sub_21403C478()
{
  result = qword_280B34C28;
  if (!qword_280B34C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B34C28);
  }

  return result;
}

unint64_t sub_21403C4D0()
{
  result = qword_280B346B0;
  if (!qword_280B346B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B346B0);
  }

  return result;
}

unint64_t sub_21403C528()
{
  result = qword_280B34C00;
  if (!qword_280B34C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B34C00);
  }

  return result;
}

unint64_t sub_21403C580()
{
  result = qword_280B346A0;
  if (!qword_280B346A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B346A0);
  }

  return result;
}

unint64_t sub_21403C5D8()
{
  result = qword_280B34688;
  if (!qword_280B34688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B34688);
  }

  return result;
}

unint64_t sub_21403C630()
{
  result = qword_280B34690;
  if (!qword_280B34690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B34690);
  }

  return result;
}

uint64_t sub_21403C684(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6469576C65786970 && a2 == 0xEA00000000006874;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6965486C65786970 && a2 == 0xEB00000000746867 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7942726566667562 && a2 == 0xEE00657A69536574)
  {

    return 2;
  }

  else
  {
    v6 = sub_2146DA6A8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_21403C7B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000018 && 0x800000021478A3F0 == a2;
  if (v3 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461446567616D69 && a2 == 0xE900000000000065 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E6F7A656D6974 && a2 == 0xEE0074657366664FLL || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000021478A410 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6569724F776172 && a2 == 0xEE006E6F69746174 || (sub_2146DA6A8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C65786950776172 && a2 == 0xED00006874646957 || (sub_2146DA6A8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C65786950776172 && a2 == 0xEE00746867696548 || (sub_2146DA6A8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65646F4D736E656CLL && a2 == 0xE90000000000006CLL || (sub_2146DA6A8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656B614D736E656CLL && a2 == 0xE800000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x4E656C69666F7270 && a2 == 0xEB00000000656D61 || (sub_2146DA6A8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x69737365636F7270 && a2 == 0xEF7367616C46676ELL || (sub_2146DA6A8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021478A430 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6572757472657061 && a2 == 0xED000065756C6156 || (sub_2146DA6A8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021478A450 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6873616C66 && a2 == 0xE500000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6E654C6C61636F66 && a2 == 0xEB00000000687467 || (sub_2146DA6A8() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000012 && 0x800000021478A470 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6E697461526F7369 && a2 == 0xEE0065756C615667 || (sub_2146DA6A8() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x676E69726574656DLL && a2 == 0xEC00000065646F4DLL || (sub_2146DA6A8() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x5372657474756873 && a2 == 0xEC00000064656570 || (sub_2146DA6A8() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 1701536109 && a2 == 0xE400000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x6C61426574696877 && a2 == 0xEC00000065636E61 || (sub_2146DA6A8() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x756F53746867696CLL && a2 == 0xEB00000000656372 || (sub_2146DA6A8() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000015 && 0x800000021478A490 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021478A4B0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x6E696147726468 && a2 == 0xE700000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x6147524448736168 && a2 == 0xED000070614D6E69 || (sub_2146DA6A8() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000021478A4D0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000021478A4F0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x79616C6544666967 && a2 == 0xEC000000656D6954 || (sub_2146DA6A8() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021478A510 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000021478A530 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0xD000000000000020 && 0x800000021478A550 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0xD000000000000020 && 0x800000021478A580 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0xD000000000000024 && 0x800000021478A5B0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0x6974617275447661 && a2 == 0xEA00000000006E6FLL || (sub_2146DA6A8() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0x5350467661 && a2 == 0xE500000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021478A5E0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0x4D65727574706163 && a2 == 0xEB0000000065646FLL || (sub_2146DA6A8() & 1) != 0)
  {

    return 39;
  }

  else if (a1 == 0x4D6F656469567369 && a2 == 0xEE00656761746E6FLL || (sub_2146DA6A8() & 1) != 0)
  {

    return 40;
  }

  else if (a1 == 0x7365526F72507369 && a2 == 0xE800000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 41;
  }

  else if (a1 == 0xD000000000000012 && 0x800000021478A600 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 42;
  }

  else if (a1 == 0xD000000000000016 && 0x800000021478A620 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 43;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000021478A640 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 44;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (sub_2146DA6A8() & 1) != 0)
  {

    return 45;
  }

  else if (a1 == 0x656475746974616CLL && a2 == 0xE800000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 46;
  }

  else if (a1 == 0x6564757469746C61 && a2 == 0xE800000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 47;
  }

  else if (a1 == 0x6465657053737067 && a2 == 0xE800000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 48;
  }

  else if (a1 == 0x6465657053737067 && a2 == 0xEB00000000666552 || (sub_2146DA6A8() & 1) != 0)
  {

    return 49;
  }

  else if (a1 == 0x73656D6954737067 && a2 == 0xEC000000706D6174 || (sub_2146DA6A8() & 1) != 0)
  {

    return 50;
  }

  else if (a1 == 0xD000000000000014 && 0x800000021478A660 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 51;
  }

  else if (a1 == 0x7269446567616D69 && a2 == 0xEE006E6F69746365 || (sub_2146DA6A8() & 1) != 0)
  {

    return 52;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021478A680 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 53;
  }

  else if (a1 == 0xD000000000000015 && 0x800000021478A6A0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 54;
  }

  else if (a1 == 0x657A6953656C6966 && a2 == 0xE800000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 55;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021478A6C0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 56;
  }

  else if (a1 == 0x426F746F68507369 && a2 == 0xEC00000068746F6FLL || (sub_2146DA6A8() & 1) != 0)
  {

    return 57;
  }

  else if (a1 == 0x6975557473727562 && a2 == 0xE900000000000064 || (sub_2146DA6A8() & 1) != 0)
  {

    return 58;
  }

  else if (a1 == 0x6D6D6F4372657375 && a2 == 0xEB00000000746E65 || (sub_2146DA6A8() & 1) != 0)
  {

    return 59;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021478A6E0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 60;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000021478A700 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 61;
  }

  else if (a1 == 0xD000000000000016 && 0x800000021478A720 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 62;
  }

  else if (a1 == 0xD000000000000017 && 0x800000021478A740 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 63;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000021478A760 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 64;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021478A780 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 65;
  }

  else if (a1 == 0x7472616D53736168 && a2 == 0xED0000656C797453 || (sub_2146DA6A8() & 1) != 0)
  {

    return 66;
  }

  else if (a1 == 0xD000000000000012 && 0x800000021478A7A0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 67;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021478A7C0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 68;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021478A7E0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 69;
  }

  else if (a1 == 0x7974537472616D73 && a2 == 0xEE0074736143656CLL || (sub_2146DA6A8() & 1) != 0)
  {

    return 70;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000021478A800 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 71;
  }

  else if (a1 == 0xD000000000000016 && 0x800000021478A820 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 72;
  }

  else if (a1 == 0xD000000000000018 && 0x800000021478A840 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 73;
  }

  else if (a1 == 0x5244487369 && a2 == 0xE500000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 74;
  }

  else if (a1 == 0x61474F5349736168 && a2 == 0xED000070614D6E69 || (sub_2146DA6A8() & 1) != 0)
  {

    return 75;
  }

  else if (a1 == 0x74616D696E417369 && a2 == 0xEF6567616D496465 || (sub_2146DA6A8() & 1) != 0)
  {

    return 76;
  }

  else if (a1 == 0xD000000000000016 && 0x800000021478A860 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 77;
  }

  else if (a1 == 0xD000000000000014 && 0x800000021478A880 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 78;
  }

  else if (a1 == 0x73616C4666697865 && a2 == 0xEE00646572694668 || (sub_2146DA6A8() & 1) != 0)
  {

    return 79;
  }

  else if (a1 == 0xD000000000000018 && 0x800000021478A8A0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 80;
  }

  else if (a1 == 0xD000000000000014 && 0x800000021478A8C0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 81;
  }

  else if (a1 == 0x6974617053736168 && a2 == 0xEF6F696475416C61 || (sub_2146DA6A8() & 1) != 0)
  {

    return 82;
  }

  else if (a1 == 0x6D6568636C417369 && a2 == 0xEB00000000747369 || (sub_2146DA6A8() & 1) != 0)
  {

    return 83;
  }

  else if (a1 == 0xD000000000000016 && 0x800000021478A8E0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 84;
  }

  else if (a1 == 0xD000000000000015 && 0x800000021478A900 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 85;
  }

  else if (a1 == 0x6465724343545049 && a2 == 0xEA00000000007469)
  {

    return 86;
  }

  else
  {
    v6 = sub_2146DA6A8();

    if (v6)
    {
      return 86;
    }

    else
    {
      return 87;
    }
  }
}

unint64_t sub_21403E260()
{
  result = qword_280B346A8;
  if (!qword_280B346A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B346A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MachPort(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MachPort(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t MBDBrandInfo.bridgedToObjectiveC.getter()
{
  MBDBrandInfo.dictionaryRepresentation.getter();
  v0 = sub_2146D9468();

  return v0;
}

unint64_t MBDBrandInfo.dictionaryRepresentation.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[7];
  v6 = v0[11];
  v62 = v0[10];
  v63 = v0[14];
  v7 = v0[16];
  v58 = v0[13];
  v59 = v0[15];
  v64 = *(v0 + 136);
  v65 = v0[21];
  v66 = v0[20];
  v75 = v0[25];
  v76 = v0[30];
  v78 = v0[26];
  v79 = v0[31];
  v77 = v0[35];
  v8 = v0[40];
  v80 = v0[36];
  v81 = v0[41];
  v67 = v0[46];
  v68 = v0[45];
  v69 = v0[51];
  v70 = v0[50];
  v71 = v0[54];
  v72 = v0[58];
  v60 = v0[53];
  v61 = v0[60];
  v73 = v0[57];
  v74 = v0[61];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
  inited = swift_initStackObject();
  *(inited + 32) = 0x495255646E617262;
  *(inited + 16) = xmmword_2146EA700;
  v10 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  *(inited + 72) = v10;
  *(inited + 80) = 1701667182;
  *(inited + 88) = 0xE400000000000000;
  if (!v3)
  {
    goto LABEL_57;
  }

  v11 = inited;
  *(inited + 96) = v4;
  *(inited + 104) = v3;
  *(inited + 120) = v10;
  *(inited + 128) = 0x69726F6765746163;
  *(inited + 136) = 0xEA00000000007365;
  if (v5)
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    v13 = v5;
  }

  else
  {
    v13 = 0;
    v12 = 0;
    *(v11 + 152) = 0;
    *(v11 + 160) = 0;
  }

  *(v11 + 144) = v13;
  *(v11 + 168) = v12;
  *(v11 + 176) = 0xD000000000000012;
  *(v11 + 184) = 0x8000000214785DF0;
  if (v6 == 1)
  {
    goto LABEL_57;
  }

  if (v6)
  {
    v14 = MEMORY[0x277D837D0];
    v15 = v62;
    v16 = v6;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v14 = 0;
    *(v11 + 208) = 0;
  }

  *(v11 + 192) = v15;
  *(v11 + 200) = v16;
  *(v11 + 216) = v14;
  *(v11 + 224) = 0xD00000000000001ALL;
  *(v11 + 232) = 0x8000000214785E10;
  if (v63)
  {
    v17 = MEMORY[0x277D837D0];
    v18 = v63;
    v19 = v58;
  }

  else
  {
    v19 = 0;
    v18 = 0;
    v17 = 0;
    *(v11 + 256) = 0;
  }

  *(v11 + 240) = v19;
  *(v11 + 248) = v18;
  *(v11 + 264) = v17;
  *(v11 + 272) = 0xD00000000000001CLL;
  *(v11 + 280) = 0x8000000214785E30;
  if (v7)
  {
    v20 = MEMORY[0x277D837D0];
    v21 = v59;
  }

  else
  {
    v21 = 0;
    v20 = 0;
    *(v11 + 304) = 0;
  }

  *(v11 + 288) = v21;
  *(v11 + 296) = v7;
  *(v11 + 312) = v20;
  *(v11 + 320) = 0x6966697265567369;
  *(v11 + 328) = 0xEA00000000006465;

  sub_213FDC9D0(v62, v6);

  v22 = sub_2146D9988();
  v23 = sub_21403EBDC();
  *(v11 + 336) = v22;
  *(v11 + 360) = v23;
  *(v11 + 368) = 0xD000000000000014;
  *(v11 + 376) = 0x8000000214785E60;
  if (v65 == 1)
  {
    goto LABEL_57;
  }

  if (v65)
  {
    v24 = MEMORY[0x277D837D0];
    v25 = v66;
    v26 = v65;
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v24 = 0;
    *(v11 + 400) = 0;
  }

  *(v11 + 384) = v25;
  *(v11 + 392) = v26;
  *(v11 + 408) = v24;
  *(v11 + 416) = 0x6465696669726576;
  *(v11 + 424) = 0xEA00000000007942;
  if (v78 == 1)
  {
    goto LABEL_57;
  }

  if (v78)
  {
    v27 = MEMORY[0x277D837D0];
    v28 = v75;
    v29 = v78;
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v27 = 0;
    *(v11 + 448) = 0;
  }

  *(v11 + 432) = v28;
  *(v11 + 440) = v29;
  *(v11 + 456) = v27;
  *(v11 + 464) = 0x65746973626577;
  *(v11 + 472) = 0xE700000000000000;
  if (v79 == 1)
  {
    goto LABEL_57;
  }

  if (v79)
  {
    v30 = MEMORY[0x277D837D0];
    v31 = v76;
    v32 = v79;
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v30 = 0;
    *(v11 + 496) = 0;
  }

  *(v11 + 480) = v31;
  *(v11 + 488) = v32;
  *(v11 + 504) = v30;
  strcpy((v11 + 512), "messageNumber");
  *(v11 + 526) = -4864;
  if (v80 == 1)
  {
    goto LABEL_57;
  }

  if (v80)
  {
    v33 = MEMORY[0x277D837D0];
    v34 = v77;
    v35 = v80;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v33 = 0;
    *(v11 + 544) = 0;
  }

  *(v11 + 528) = v34;
  *(v11 + 536) = v35;
  *(v11 + 552) = v33;
  strcpy((v11 + 560), "emailAddress");
  *(v11 + 573) = 0;
  *(v11 + 574) = -5120;
  if (v81 == 1)
  {
    goto LABEL_57;
  }

  if (v81)
  {
    v36 = MEMORY[0x277D837D0];
    v37 = v8;
    v38 = v81;
  }

  else
  {
    v37 = 0;
    v38 = 0;
    v36 = 0;
    *(v11 + 592) = 0;
  }

  *(v11 + 576) = v37;
  *(v11 + 584) = v38;
  *(v11 + 600) = v36;
  *(v11 + 608) = 0x73736572646461;
  *(v11 + 616) = 0xE700000000000000;
  if (v67 == 1)
  {
    goto LABEL_57;
  }

  if (v67)
  {
    v39 = MEMORY[0x277D837D0];
    v40 = v68;
    v41 = v67;
  }

  else
  {
    v40 = 0;
    v41 = 0;
    v39 = 0;
    *(v11 + 640) = 0;
  }

  *(v11 + 624) = v40;
  *(v11 + 632) = v41;
  *(v11 + 648) = v39;
  *(v11 + 656) = 0xD000000000000015;
  *(v11 + 664) = 0x8000000214785EB0;
  if (v69 == 1)
  {
    goto LABEL_57;
  }

  if (v69)
  {
    v42 = MEMORY[0x277D837D0];
    v43 = v70;
    v44 = v69;
  }

  else
  {
    v43 = 0;
    v44 = 0;
    v42 = 0;
    *(v11 + 688) = 0;
  }

  *(v11 + 672) = v43;
  *(v11 + 680) = v44;
  *(v11 + 696) = v42;
  *(v11 + 704) = 0xD000000000000015;
  *(v11 + 712) = 0x8000000214785ED0;
  if (v71)
  {
    v45 = MEMORY[0x277D837D0];
    v46 = v71;
    v47 = v60;
  }

  else
  {
    v47 = 0;
    v46 = 0;
    v45 = 0;
    *(v11 + 736) = 0;
  }

  *(v11 + 720) = v47;
  *(v11 + 728) = v46;
  *(v11 + 744) = v45;
  *(v11 + 752) = 0xD000000000000015;
  *(v11 + 760) = 0x8000000214785EF0;
  if (v72 == 1)
  {
LABEL_57:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    if (v72)
    {
      v48 = MEMORY[0x277D837D0];
      v49 = v73;
      v50 = v72;
    }

    else
    {
      v49 = 0;
      v50 = 0;
      v48 = 0;
      *(v11 + 784) = 0;
    }

    *(v11 + 768) = v49;
    *(v11 + 776) = v50;
    *(v11 + 792) = v48;
    strcpy((v11 + 800), "brandLogoGuid");
    *(v11 + 814) = -4864;
    if (v74)
    {
      v51 = MEMORY[0x277D837D0];
      v52 = v61;
    }

    else
    {
      v52 = 0;
      v51 = 0;
      *(v11 + 832) = 0;
    }

    *(v11 + 816) = v52;
    *(v11 + 824) = v74;
    *(v11 + 840) = v51;
    sub_213FDC9D0(v66, v65);
    sub_213FDC9D0(v75, v78);
    sub_213FDC9D0(v76, v79);
    sub_213FDC9D0(v77, v80);
    sub_213FDC9D0(v8, v81);
    sub_213FDC9D0(v68, v67);
    sub_213FDC9D0(v70, v69);

    sub_213FDC9D0(v73, v72);

    v53 = sub_214045690(v11);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
    swift_arrayDestroy();
    v54 = sub_2140418B8(v53);

    if (*(v54 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
      v55 = swift_initStackObject();
      *(v55 + 16) = xmmword_2146EA710;
      *(v55 + 32) = 0xD00000000000001BLL;
      *(v55 + 40) = 0x800000021478A920;
      *(v55 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
      *(v55 + 48) = v54;
      v56 = sub_2140457C0(v55);
      swift_setDeallocating();
      sub_213FB2DF4(v55 + 32, &qword_27C903FE0, &unk_2146EA760);
      return v56;
    }

    else
    {

      return sub_2140457C0(MEMORY[0x277D84F90]);
    }
  }

  return result;
}

unint64_t sub_21403EBDC()
{
  result = qword_280B2E360;
  if (!qword_280B2E360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280B2E360);
  }

  return result;
}

unint64_t sub_21403EC28(char a1)
{
  result = 0x495255646E617262;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x69726F6765746163;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0x6966697265567369;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0x6465696669726576;
      break;
    case 9:
      result = 0x65746973626577;
      break;
    case 10:
      result = 0x4E6567617373656DLL;
      break;
    case 11:
      result = 0x6464416C69616D65;
      break;
    case 12:
      result = 0x73736572646461;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0xD000000000000015;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0x676F4C646E617262;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21403EE2C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_21403EC28(*a1);
  v5 = v4;
  if (v3 == sub_21403EC28(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();
  }

  return v8 & 1;
}

uint64_t sub_21403EEB4()
{
  v1 = *v0;
  sub_2146DA958();
  sub_21403EC28(v1);
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21403EF18()
{
  sub_21403EC28(*v0);
  sub_2146D9698();
}

uint64_t sub_21403EF6C()
{
  v1 = *v0;
  sub_2146DA958();
  sub_21403EC28(v1);
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21403EFCC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_214046ED4();
  *a2 = result;
  return result;
}

unint64_t sub_21403EFFC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21403EC28(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21403F044@<X0>(_BYTE *a1@<X8>)
{
  result = sub_214046ED4();
  *a1 = result;
  return result;
}

uint64_t sub_21403F06C(uint64_t a1)
{
  v2 = sub_2140458F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21403F0A8(uint64_t a1)
{
  v2 = sub_2140458F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MBDBrandInfo.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FE8, &qword_2146EA770);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v95 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v283 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2140458F0();
  sub_2146DAA08();
  if (!v2)
  {
    v12 = v6;
    LOBYTE(v178) = 0;
    v13 = sub_2146DA168();
    v177 = v14;
    LOBYTE(v178) = 1;
    v175 = sub_2146DA168();
    v176 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    LOBYTE(v267) = 2;
    sub_214045A54(&qword_280B2FE60);
    sub_2146DA148();
    v16 = v178;
    LOBYTE(v178) = 3;
    v173 = sub_2146DA0F8();
    v174 = v17;
    LOBYTE(v178) = 4;
    v171 = sub_2146DA0F8();
    v172 = v18;
    LOBYTE(v178) = 5;
    v169 = sub_2146DA0F8();
    v170 = v19;
    LOBYTE(v178) = 6;
    v20 = sub_2146DA108();
    v168 = v16;
    LOBYTE(v178) = 7;
    v165 = sub_2146DA0F8();
    v167 = v22;
    LOBYTE(v178) = 8;
    v164 = sub_2146DA0F8();
    v166 = v23;
    LOBYTE(v178) = 9;
    v162 = sub_2146DA0F8();
    v163 = v24;
    LOBYTE(v178) = 10;
    v160 = sub_2146DA0F8();
    v161 = v25;
    LOBYTE(v178) = 11;
    v158 = sub_2146DA0F8();
    v159 = v26;
    LOBYTE(v178) = 12;
    v156 = sub_2146DA0F8();
    v157 = v27;
    LOBYTE(v178) = 13;
    v154 = sub_2146DA0F8();
    v155 = v28;
    LOBYTE(v178) = 14;
    v152 = sub_2146DA0F8();
    v153 = v29;
    LOBYTE(v178) = 15;
    v150 = sub_2146DA0F8();
    v151 = v30;
    LOBYTE(v178) = 16;
    v147 = sub_2146DA0F8();
    v148 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
    v149 = swift_allocObject();
    *(v149 + 16) = xmmword_2146E9BF0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
    v32 = swift_allocObject();
    LOBYTE(v178) = 0;
    v33 = swift_allocObject();
    *(v33 + 16) = 100;
    *(v33 + 24) = v178;
    *(v32 + 16) = sub_214045944;
    *(v32 + 24) = v33;
    v34 = v149;
    *(v149 + 32) = v32;
    sub_214042B80(v34, &v178);
    v145 = v178;
    v35 = v179;
    v96 = v180;
    v149 = v181;
    v146 = v182;
    sub_21449E824(&v267);
    v138 = v267;
    v140 = v268;
    v141 = v269;
    v142 = v270;
    v139 = v271;
    sub_21449E858(v265);
    v133 = v265[0];
    v135 = v265[1];
    v136 = v265[2];
    v137 = v265[3];
    v134 = v266;
    sub_21449E9A4(v263);
    v128 = v263[0];
    v130 = v263[1];
    v131 = v263[2];
    v132 = v263[3];
    v129 = v264;
    sub_21449EAF0(v261);
    v123 = v261[0];
    v125 = v261[1];
    v126 = v261[2];
    v127 = v261[3];
    v124 = v262;
    sub_21449EC44(v259);
    v118 = v259[0];
    v120 = v259[1];
    v121 = v259[2];
    v122 = v259[3];
    v119 = v260;
    sub_21449F000(v257);
    v113 = v257[0];
    v115 = v257[1];
    v116 = v257[2];
    v117 = v257[3];
    v114 = v258;
    sub_21449F034(v255);
    v108 = v255[0];
    v110 = v255[1];
    v111 = v255[2];
    v112 = v255[3];
    v109 = v256;
    sub_21449F180(v253);
    v103 = v253[0];
    v105 = v253[1];
    v106 = v253[2];
    v107 = v253[3];
    v104 = v254;
    sub_21449F2D4(v251);
    v98 = v251[0];
    v100 = v251[2];
    v101 = v251[3];
    v102 = v251[1];
    v99 = v252;
    v97 = v20 & 1;
    v267 = v175;
    v268 = v176;
    LOBYTE(v265[0]) = v146;
    v95 = 0xD000000000000011;
    v178 = 0xD000000000000011;
    v179 = 0x800000021478A940;
    v180 = 0xD00000000000001CLL;
    v143 = 0x800000021478A360;
    v181 = 0x800000021478A360;

    v144 = v35;
    if (v145(&v267, v265, &v178))
    {

      v267 = v173;
      v268 = v174;
      LOBYTE(v265[0]) = v139;
      v178 = 0xD00000000000001FLL;
      v179 = 0x800000021478A960;
      v180 = 0xD00000000000001CLL;
      v181 = v143;

      sub_213FDC9D0(v141, v142);
      if (v138(&v267, v265, &v178))
      {
        v36 = v141;
        sub_213FDC6D0(v141, v142);

        sub_213FDC6D0(v36, v142);
        v267 = v165;
        v268 = v167;
        LOBYTE(v265[0]) = v134;
        v178 = 0xD000000000000021;
        v179 = 0x800000021478A980;
        v180 = 0xD00000000000001CLL;
        v181 = v143;

        sub_213FDC9D0(v136, v137);
        if (v133(&v267, v265, &v178))
        {
          v37 = v136;
          sub_213FDC6D0(v136, v137);

          sub_213FDC6D0(v37, v137);
          v267 = v164;
          v268 = v166;
          LOBYTE(v265[0]) = v129;
          v149 = 0xD000000000000017;
          v178 = 0xD000000000000017;
          v179 = 0x800000021478A9B0;
          v180 = 0xD00000000000001CLL;
          v181 = v143;

          sub_213FDC9D0(v131, v132);
          if (v128(&v267, v265, &v178))
          {
            v38 = v131;
            sub_213FDC6D0(v131, v132);

            sub_213FDC6D0(v38, v132);
            v267 = v162;
            v268 = v163;
            LOBYTE(v265[0]) = v124;
            v149 = 0xD000000000000014;
            v178 = 0xD000000000000014;
            v179 = 0x800000021478A9D0;
            v180 = 0xD00000000000001CLL;
            v181 = v143;

            sub_213FDC9D0(v126, v127);
            if (v123(&v267, v265, &v178))
            {
              v39 = v126;
              sub_213FDC6D0(v126, v127);

              sub_213FDC6D0(v39, v127);
              v267 = v160;
              v268 = v161;
              LOBYTE(v265[0]) = v119;
              v142 = 0xD00000000000001ALL;
              v178 = 0xD00000000000001ALL;
              v179 = 0x800000021478A9F0;
              v180 = 0xD00000000000001CLL;
              v181 = v143;

              sub_213FDC9D0(v121, v122);
              if (v118(&v267, v265, &v178))
              {
                v40 = v121;
                sub_213FDC6D0(v121, v122);

                sub_213FDC6D0(v40, v122);
                v267 = v158;
                v268 = v159;
                LOBYTE(v265[0]) = v114;
                v142 = 0xD000000000000019;
                v178 = 0xD000000000000019;
                v179 = 0x800000021478AA10;
                v180 = 0xD00000000000001CLL;
                v181 = v143;

                sub_213FDC9D0(v116, v117);
                if (v113(&v267, v265, &v178))
                {
                  v41 = v116;
                  sub_213FDC6D0(v116, v117);

                  sub_213FDC6D0(v41, v117);
                  v267 = v156;
                  v268 = v157;
                  LOBYTE(v265[0]) = v109;
                  v178 = v149;
                  v179 = 0x800000021478AA30;
                  v180 = 0xD00000000000001CLL;
                  v181 = v143;

                  sub_213FDC9D0(v111, v112);
                  if (v108(&v267, v265, &v178))
                  {
                    v42 = v111;
                    sub_213FDC6D0(v111, v112);

                    sub_213FDC6D0(v42, v112);
                    v267 = v154;
                    v268 = v155;
                    LOBYTE(v265[0]) = v104;
                    v178 = 0xD000000000000022;
                    v179 = 0x800000021478AA50;
                    v180 = 0xD00000000000001CLL;
                    v181 = v143;

                    sub_213FDC9D0(v106, v107);
                    if (v103(&v267, v265, &v178))
                    {
                      v43 = v106;
                      sub_213FDC6D0(v106, v107);

                      sub_213FDC6D0(v43, v107);
                      v267 = v150;
                      v268 = v151;
                      LOBYTE(v265[0]) = v99;
                      v178 = 0xD000000000000022;
                      v179 = 0x800000021478AA80;
                      v180 = 0xD00000000000001CLL;
                      v181 = v143;

                      sub_213FDC9D0(v100, v101);
                      if (v98(&v267, v265, &v178))
                      {
                        v44 = v101;
                        sub_213FDC6D0(v100, v101);
                        (*(v12 + 8))(v9, v5);
                        v45 = v102;

                        sub_213FDC6D0(v100, v44);
                        v46 = v177;
                        *a2 = v13;
                        *(a2 + 8) = v46;
                        v47 = v144;
                        *(a2 + 16) = v145;
                        *(a2 + 24) = v47;
                        v48 = v176;
                        *(a2 + 32) = v175;
                        *(a2 + 40) = v48;
                        *(a2 + 48) = v146;
                        v49 = v138;
                        *(a2 + 56) = v168;
                        *(a2 + 64) = v49;
                        v50 = v173;
                        *(a2 + 72) = v140;
                        *(a2 + 80) = v50;
                        *(a2 + 88) = v174;
                        *(a2 + 96) = v139;
                        v51 = v172;
                        *(a2 + 104) = v171;
                        *(a2 + 112) = v51;
                        v52 = v170;
                        *(a2 + 120) = v169;
                        *(a2 + 128) = v52;
                        *(a2 + 136) = v97;
                        v53 = v135;
                        *(a2 + 144) = v133;
                        *(a2 + 152) = v53;
                        v54 = v167;
                        *(a2 + 160) = v165;
                        *(a2 + 168) = v54;
                        *(a2 + 176) = v134;
                        v55 = v130;
                        *(a2 + 184) = v128;
                        *(a2 + 192) = v55;
                        v56 = v166;
                        *(a2 + 200) = v164;
                        *(a2 + 208) = v56;
                        *(a2 + 216) = v129;
                        v57 = v125;
                        *(a2 + 224) = v123;
                        *(a2 + 232) = v57;
                        v58 = v163;
                        *(a2 + 240) = v162;
                        *(a2 + 248) = v58;
                        *(a2 + 256) = v124;
                        *(a2 + 260) = *&v277[3];
                        *(a2 + 257) = *v277;
                        *(a2 + 49) = v282[0];
                        *(a2 + 52) = *(v282 + 3);
                        *(a2 + 100) = *(v281 + 3);
                        *(a2 + 97) = v281[0];
                        *(a2 + 140) = *(v280 + 3);
                        *(a2 + 137) = v280[0];
                        *(a2 + 180) = *&v279[3];
                        *(a2 + 177) = *v279;
                        *(a2 + 220) = *&v278[3];
                        *(a2 + 217) = *v278;
                        v59 = v120;
                        *(a2 + 264) = v118;
                        *(a2 + 272) = v59;
                        v60 = v161;
                        *(a2 + 280) = v160;
                        *(a2 + 288) = v60;
                        *(a2 + 296) = v119;
                        v61 = *v276;
                        *(a2 + 300) = *&v276[3];
                        *(a2 + 297) = v61;
                        v62 = v115;
                        *(a2 + 304) = v113;
                        *(a2 + 312) = v62;
                        v63 = v159;
                        *(a2 + 320) = v158;
                        *(a2 + 328) = v63;
                        *(a2 + 336) = v114;
                        v64 = *v275;
                        *(a2 + 340) = *&v275[3];
                        *(a2 + 337) = v64;
                        v65 = v110;
                        *(a2 + 344) = v108;
                        *(a2 + 352) = v65;
                        v66 = v157;
                        *(a2 + 360) = v156;
                        *(a2 + 368) = v66;
                        *(a2 + 376) = v109;
                        v67 = *v274;
                        *(a2 + 380) = *&v274[3];
                        *(a2 + 377) = v67;
                        v68 = v105;
                        *(a2 + 384) = v103;
                        *(a2 + 392) = v68;
                        v69 = v155;
                        *(a2 + 400) = v154;
                        *(a2 + 408) = v69;
                        *(a2 + 416) = v104;
                        v70 = v273[0];
                        *(a2 + 420) = *(v273 + 3);
                        *(a2 + 417) = v70;
                        v71 = v153;
                        *(a2 + 424) = v152;
                        *(a2 + 432) = v71;
                        *(a2 + 440) = v98;
                        *(a2 + 448) = v45;
                        v72 = v151;
                        *(a2 + 456) = v150;
                        *(a2 + 464) = v72;
                        *(a2 + 472) = v99;
                        v73 = v272[0];
                        *(a2 + 476) = *(v272 + 3);
                        *(a2 + 473) = v73;
                        v74 = v148;
                        *(a2 + 480) = v147;
                        *(a2 + 488) = v74;
                        return __swift_destroy_boxed_opaque_existential_1(v283);
                      }

                      sub_214031C4C();
                      swift_allocError();
                      *v93 = 0xD000000000000022;
                      v93[1] = 0x800000021478AA80;
                      v94 = v143;
                      v93[2] = 0xD00000000000001CLL;
                      v93[3] = v94;
                      swift_willThrow();

                      (*(v12 + 8))(v9, v5);

                      sub_213FDC6D0(v100, v101);
                      v149 = v176;
                      v141 = v173;
                      v142 = v174;
                      v136 = v165;
                      v137 = v167;
                      v131 = v164;
                      v132 = v166;
                      v126 = v162;
                      v127 = v163;
                      v121 = v160;
                      v122 = v161;
                      v116 = v158;
                      v117 = v159;
                      v111 = v156;
                      v112 = v157;
                      v106 = v154;
                      v107 = v155;
                    }

                    else
                    {
                      sub_214031C4C();
                      swift_allocError();
                      *v91 = 0xD000000000000022;
                      v91[1] = 0x800000021478AA50;
                      v92 = v143;
                      v91[2] = 0xD00000000000001CLL;
                      v91[3] = v92;
                      swift_willThrow();

                      (*(v12 + 8))(v9, v5);

                      sub_213FDC6D0(v106, v107);
                      v149 = v176;
                      v141 = v173;
                      v142 = v174;
                      v136 = v165;
                      v137 = v167;
                      v131 = v164;
                      v132 = v166;
                      v126 = v162;
                      v127 = v163;
                      v121 = v160;
                      v122 = v161;
                      v116 = v158;
                      v117 = v159;
                      v111 = v156;
                      v112 = v157;
                    }
                  }

                  else
                  {
                    sub_214031C4C();
                    swift_allocError();
                    *v89 = v149;
                    v89[1] = 0x800000021478AA30;
                    v90 = v143;
                    v89[2] = 0xD00000000000001CLL;
                    v89[3] = v90;
                    swift_willThrow();

                    (*(v12 + 8))(v9, v5);

                    sub_213FDC6D0(v111, v112);
                    v149 = v176;
                    v141 = v173;
                    v142 = v174;
                    v136 = v165;
                    v137 = v167;
                    v131 = v164;
                    v132 = v166;
                    v126 = v162;
                    v127 = v163;
                    v121 = v160;
                    v122 = v161;
                    v116 = v158;
                    v117 = v159;
                  }
                }

                else
                {
                  sub_214031C4C();
                  swift_allocError();
                  v87 = v143;
                  *v88 = v142;
                  v88[1] = 0x800000021478AA10;
                  v88[2] = 0xD00000000000001CLL;
                  v88[3] = v87;
                  swift_willThrow();

                  (*(v12 + 8))(v9, v5);

                  sub_213FDC6D0(v116, v117);
                  v149 = v176;
                  v141 = v173;
                  v142 = v174;
                  v136 = v165;
                  v137 = v167;
                  v131 = v164;
                  v132 = v166;
                  v126 = v162;
                  v127 = v163;
                  v121 = v160;
                  v122 = v161;
                }
              }

              else
              {
                sub_214031C4C();
                swift_allocError();
                v85 = v143;
                *v86 = v142;
                v86[1] = 0x800000021478A9F0;
                v86[2] = 0xD00000000000001CLL;
                v86[3] = v85;
                swift_willThrow();

                (*(v12 + 8))(v9, v5);

                sub_213FDC6D0(v121, v122);
                v149 = v176;
                v141 = v173;
                v142 = v174;
                v136 = v165;
                v137 = v167;
                v131 = v164;
                v132 = v166;
                v126 = v162;
                v127 = v163;
              }
            }

            else
            {
              sub_214031C4C();
              swift_allocError();
              *v83 = v149;
              v83[1] = 0x800000021478A9D0;
              v84 = v143;
              v83[2] = 0xD00000000000001CLL;
              v83[3] = v84;
              swift_willThrow();

              (*(v12 + 8))(v9, v5);

              sub_213FDC6D0(v126, v127);
              v149 = v176;
              v141 = v173;
              v142 = v174;
              v136 = v165;
              v137 = v167;
              v131 = v164;
              v132 = v166;
            }
          }

          else
          {
            sub_214031C4C();
            swift_allocError();
            *v81 = v149;
            v81[1] = 0x800000021478A9B0;
            v82 = v143;
            v81[2] = 0xD00000000000001CLL;
            v81[3] = v82;
            swift_willThrow();

            (*(v12 + 8))(v9, v5);

            sub_213FDC6D0(v131, v132);
            v149 = v176;
            v141 = v173;
            v142 = v174;
            v136 = v165;
            v137 = v167;
          }
        }

        else
        {
          sub_214031C4C();
          swift_allocError();
          *v79 = 0xD000000000000021;
          v79[1] = 0x800000021478A980;
          v80 = v143;
          v79[2] = 0xD00000000000001CLL;
          v79[3] = v80;
          swift_willThrow();

          (*(v12 + 8))(v9, v5);

          sub_213FDC6D0(v136, v137);
          v149 = v176;
          v141 = v173;
          v142 = v174;
        }
      }

      else
      {
        sub_214031C4C();
        swift_allocError();
        *v77 = 0xD00000000000001FLL;
        v77[1] = 0x800000021478A960;
        v78 = v143;
        v77[2] = 0xD00000000000001CLL;
        v77[3] = v78;
        swift_willThrow();

        (*(v12 + 8))(v9, v5);

        sub_213FDC6D0(v141, v142);
        v149 = v176;
      }
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v75 = v95;
      v75[1] = 0x800000021478A940;
      v76 = v143;
      v75[2] = 0xD00000000000001CLL;
      v75[3] = v76;
      swift_willThrow();

      (*(v12 + 8))(v9, v5);

      v175 = v96;
    }

    v178 = v13;
    v179 = v177;
    v180 = v145;
    v181 = v144;
    v182 = v175;
    v183 = v149;
    v184 = v146;
    v186 = v168;
    v187 = v138;
    v188 = v140;
    v189 = v141;
    v190 = v142;
    v191 = v139;
    v193 = v171;
    v194 = v172;
    v195 = v169;
    v196 = v170;
    v197 = v97;
    v199 = v133;
    v200 = v135;
    v201 = v136;
    v202 = v137;
    v203 = v134;
    v205 = v128;
    v206 = v130;
    v207 = v131;
    v208 = v132;
    v209 = v129;
    v211 = v123;
    v212 = v125;
    v213 = v126;
    v214 = v127;
    *&v198[3] = *(v280 + 3);
    *v198 = v280[0];
    *&v204[3] = *&v279[3];
    *v204 = *v279;
    *&v210[3] = *&v278[3];
    *v210 = *v278;
    *v216 = *v277;
    *v185 = v282[0];
    *&v185[3] = *(v282 + 3);
    *&v192[3] = *(v281 + 3);
    *v192 = v281[0];
    v215 = v124;
    *&v216[3] = *&v277[3];
    v217 = v118;
    v218 = v120;
    v219 = v121;
    v220 = v122;
    v221 = v119;
    *v222 = *v276;
    *&v222[3] = *&v276[3];
    v223 = v113;
    v224 = v115;
    v225 = v116;
    v226 = v117;
    v227 = v114;
    *v228 = *v275;
    *&v228[3] = *&v275[3];
    v229 = v108;
    v230 = v110;
    v231 = v111;
    v232 = v112;
    v233 = v109;
    *v234 = *v274;
    *&v234[3] = *&v274[3];
    v235 = v103;
    v236 = v105;
    v237 = v106;
    v238 = v107;
    v239 = v104;
    *v240 = v273[0];
    *&v240[3] = *(v273 + 3);
    v241 = v152;
    v242 = v153;
    v243 = v98;
    v244 = v102;
    v245 = v100;
    v246 = v101;
    v247 = v99;
    *v248 = v272[0];
    *&v248[3] = *(v272 + 3);
    v249 = v147;
    v250 = v148;
    sub_214045958(&v178);
  }

  return __swift_destroy_boxed_opaque_existential_1(v283);
}

uint64_t MBDBrandInfo.encode(to:configuration:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FF8, &qword_2146EA778);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[5];
  v61 = v1[4];
  v62 = v10;
  v11 = v1[7];
  v12 = v1[10];
  v59 = v1[11];
  v60 = v11;
  v13 = v1[13];
  v57 = v1[14];
  v58 = v12;
  v14 = v1[15];
  v55 = v1[16];
  v56 = v13;
  v66 = *(v1 + 136);
  v15 = v1[20];
  v50 = v1[21];
  v51 = v15;
  v16 = v1[26];
  v53 = v1[25];
  v54 = v14;
  v17 = v1[31];
  v52 = v1[30];
  v48 = v17;
  v49 = v16;
  v18 = v1[36];
  v46 = v1[35];
  v47 = v18;
  v19 = v1[41];
  v44 = v1[40];
  v45 = v19;
  v20 = v1[46];
  v42 = v1[45];
  v43 = v20;
  v21 = v1[51];
  v40 = v1[50];
  v41 = v21;
  v22 = v1[54];
  v38 = v1[53];
  v39 = v22;
  v23 = v1[58];
  v36 = v1[57];
  v37 = v23;
  v24 = v1[61];
  v35 = v1[60];
  v25 = a1[3];
  v26 = a1[4];
  v27 = a1;
  v29 = v28;
  __swift_project_boxed_opaque_existential_1(v27, v25);
  sub_2140458F0();
  sub_2146DAA28();
  LOBYTE(v64) = 0;
  v30 = v63;
  sub_2146DA328();
  if (v30)
  {
    return (*(v4 + 8))(v7, v29);
  }

  v32 = v60;
  v33 = v59;
  v63 = v24;
  if (!v62)
  {
    goto LABEL_14;
  }

  LOBYTE(v64) = 1;

  sub_2146DA328();

  v64 = v32;
  v67 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
  sub_2140459AC();
  sub_2146DA388();
  if (v33 == 1)
  {
    goto LABEL_14;
  }

  v64 = v58;
  v65 = v33;
  v67 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  v64 = v56;
  v65 = v57;
  v67 = 4;
  sub_2146DA388();
  v64 = v54;
  v65 = v55;
  v67 = 5;
  sub_2146DA388();
  LOBYTE(v64) = 6;
  sub_2146DA338();
  if (v50 == 1)
  {
    goto LABEL_14;
  }

  v64 = v51;
  v65 = v50;
  v67 = 7;
  sub_2146DA388();
  v34 = v52;
  if (v49 == 1)
  {
    goto LABEL_14;
  }

  v64 = v53;
  v65 = v49;
  v67 = 8;
  sub_2146DA388();
  if (v48 == 1)
  {
    goto LABEL_14;
  }

  v64 = v34;
  v65 = v48;
  v67 = 9;
  sub_2146DA388();
  if (v47 == 1)
  {
    goto LABEL_14;
  }

  v64 = v46;
  v65 = v47;
  v67 = 10;
  sub_2146DA388();
  if (v45 == 1)
  {
    goto LABEL_14;
  }

  v64 = v44;
  v65 = v45;
  v67 = 11;
  sub_2146DA388();
  if (v43 == 1)
  {
    goto LABEL_14;
  }

  v64 = v42;
  v65 = v43;
  v67 = 12;
  sub_2146DA388();
  if (v41 == 1)
  {
    goto LABEL_14;
  }

  v64 = v40;
  v65 = v41;
  v67 = 13;
  sub_2146DA388();
  v64 = v38;
  v65 = v39;
  v67 = 14;
  sub_2146DA388();
  if (v37 == 1)
  {
LABEL_14:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v64 = v36;
    v65 = v37;
    v67 = 15;
    sub_2146DA388();
    v64 = v35;
    v65 = v63;
    v67 = 16;
    sub_2146DA388();
    return (*(v4 + 8))(v7, v29);
  }

  return result;
}

uint64_t sub_2140418B8(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v39 = MEMORY[0x277D84F98];
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_11;
  }

  do
  {
LABEL_7:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v9 >= v6)
    {

      return v1;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
  }

  while (!v5);
  v40 = v1;
  v8 = v9;
  while (1)
  {
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v8 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_213FB2E54(*(a1 + 56) + 32 * v11, v38, &qword_27C913170, &qword_2146EAB20);
    *&v37 = v14;
    *(&v37 + 1) = v13;
    v34 = v37;
    v35 = v38[0];
    v36 = v38[1];
    sub_213FB2E54(&v35, &v28, &qword_27C913170, &qword_2146EAB20);
    if (!v29)
    {

      sub_213FB2DF4(&v34, &qword_27C9041B8, &qword_2146EAB28);
      result = sub_213FB2DF4(&v28, &qword_27C913170, &qword_2146EAB20);
      v1 = v40;
      if (!v5)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }

    sub_213FDC730(&v28, v33);
    v31 = v34;
    v32[0] = v35;
    v32[1] = v36;
    sub_213FDC730(v33, v30);
    v1 = v40;
    v15 = *(v40 + 16);
    if (*(v40 + 24) <= v15)
    {

      sub_2140506C8(v15 + 1, 1);
      v1 = v39;
    }

    else
    {
    }

    v16 = v31;
    v17 = *(v1 + 40);
    sub_2146DA958();
    sub_2146D9698();
    result = sub_2146DA9B8();
    v18 = v1 + 64;
    v19 = -1 << *(v1 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v1 + 64 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v1 + 64 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v1 + 48) + 16 * v22) = v16;
    sub_213FDC730(v30, (*(v1 + 56) + 32 * v22));
    ++*(v1 + 16);
    result = sub_213FB2DF4(v32, &qword_27C913170, &qword_2146EAB20);
    if (!v5)
    {
      goto LABEL_7;
    }

LABEL_11:
    v40 = v1;
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v18 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_26;
    }
  }

LABEL_30:
  __break(1u);
  return result;
}

BOOL sub_214041BDC(char a1, unint64_t a2, float a3)
{
  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_15:
    v7 = sub_2146DA028();
  }

  else
  {
    v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  do
  {
    v9 = v8;
    if (v7 == v8)
    {
      break;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x216054E00](v8, a2);
      if (__OFADD__(v9, 1))
      {
LABEL_12:
        __break(1u);
        return v7 == v9;
      }
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v10 = *(a2 + 8 * v8 + 32);

      if (__OFADD__(v9, 1))
      {
        goto LABEL_12;
      }
    }

    v15 = a3;
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    v14 = a1;
    LOBYTE(v12) = v11(&v15, &v14);

    v8 = v9 + 1;
  }

  while ((v12 & 1) != 0);
  return v7 == v9;
}

BOOL sub_214041CE8(char a1, unint64_t a2, double a3)
{
  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_15:
    v7 = sub_2146DA028();
  }

  else
  {
    v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  do
  {
    v9 = v8;
    if (v7 == v8)
    {
      break;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x216054E00](v8, a2);
      if (__OFADD__(v9, 1))
      {
LABEL_12:
        __break(1u);
        return v7 == v9;
      }
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v10 = *(a2 + 8 * v8 + 32);

      if (__OFADD__(v9, 1))
      {
        goto LABEL_12;
      }
    }

    v15 = a3;
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    v14 = a1;
    LOBYTE(v12) = v11(&v15, &v14);

    v8 = v9 + 1;
  }

  while ((v12 & 1) != 0);
  return v7 == v9;
}

BOOL sub_214041DF8(int a1, char a2, unint64_t a3)
{
  v6 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_15:
    v7 = sub_2146DA028();
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  do
  {
    v9 = v8;
    if (v7 == v8)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x216054E00](v8, a3);
      if (__OFADD__(v9, 1))
      {
LABEL_12:
        __break(1u);
        return v7 == v9;
      }
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v10 = *(a3 + 8 * v8 + 32);

      if (__OFADD__(v9, 1))
      {
        goto LABEL_12;
      }
    }

    v15 = a1;
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    v14 = a2;
    LOBYTE(v12) = v11(&v15, &v14);

    v8 = v9 + 1;
  }

  while ((v12 & 1) != 0);
  return v7 == v9;
}

BOOL sub_214041F04(char a1, char a2, unint64_t a3)
{
  v6 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_15:
    v7 = sub_2146DA028();
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  do
  {
    v9 = v8;
    if (v7 == v8)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x216054E00](v8, a3);
      if (__OFADD__(v9, 1))
      {
LABEL_12:
        __break(1u);
        return v7 == v9;
      }
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v10 = *(a3 + 8 * v8 + 32);

      if (__OFADD__(v9, 1))
      {
        goto LABEL_12;
      }
    }

    v15 = a1;
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    v14 = a2;
    LOBYTE(v12) = v11(&v15, &v14);

    v8 = v9 + 1;
  }

  while ((v12 & 1) != 0);
  return v7 == v9;
}

BOOL sub_214042010(uint64_t a1, uint64_t a2, char a3, unint64_t a4)
{
  v7 = a4 & 0xFFFFFFFFFFFFFF8;
  if (a4 >> 62)
  {
LABEL_15:
    v16 = a2;
    v17 = sub_2146DA028();
    a2 = v16;
    v8 = v17;
  }

  else
  {
    v8 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  v10 = a2 & 1;
  do
  {
    v11 = v9;
    if (v8 == v9)
    {
      break;
    }

    if ((a4 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x216054E00](v9, a4);
      if (__OFADD__(v11, 1))
      {
LABEL_12:
        __break(1u);
        return v8 == v11;
      }
    }

    else
    {
      if (v9 >= *(v7 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v12 = *(a4 + 8 * v9 + 32);

      if (__OFADD__(v11, 1))
      {
        goto LABEL_12;
      }
    }

    v19 = a1;
    v20 = v10;
    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    v18 = a3;
    LOBYTE(v14) = v13(&v19, &v18);

    v9 = v11 + 1;
  }

  while ((v14 & 1) != 0);
  return v8 == v11;
}

BOOL sub_21404212C(uint64_t a1, char a2, unint64_t a3)
{
  v6 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_15:
    v7 = sub_2146DA028();
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  do
  {
    v9 = v8;
    if (v7 == v8)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x216054E00](v8, a3);
      if (__OFADD__(v9, 1))
      {
LABEL_12:
        __break(1u);
        return v7 == v9;
      }
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v10 = *(a3 + 8 * v8 + 32);

      if (__OFADD__(v9, 1))
      {
        goto LABEL_12;
      }
    }

    v15 = a1;
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    v14 = a2;
    LOBYTE(v12) = v11(&v15, &v14);

    v8 = v9 + 1;
  }

  while ((v12 & 1) != 0);
  return v7 == v9;
}

BOOL sub_214042238(uint64_t a1, char a2, unint64_t a3)
{
  v6 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_15:
    v7 = sub_2146DA028();
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  do
  {
    v9 = v8;
    if (v7 == v8)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x216054E00](v8, a3);
      if (__OFADD__(v9, 1))
      {
LABEL_12:
        __break(1u);
        return v7 == v9;
      }
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v10 = *(a3 + 8 * v8 + 32);

      if (__OFADD__(v9, 1))
      {
        goto LABEL_12;
      }
    }

    v15 = a1;
    v16 = BYTE4(a1) & 1;
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    v14 = a2;
    LOBYTE(v12) = v11(&v15, &v14);

    v8 = v9 + 1;
  }

  while ((v12 & 1) != 0);
  return v7 == v9;
}

BOOL sub_21404234C(__int16 a1, char a2, unint64_t a3)
{
  v6 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_15:
    v7 = sub_2146DA028();
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  do
  {
    v9 = v8;
    if (v7 == v8)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x216054E00](v8, a3);
      if (__OFADD__(v9, 1))
      {
LABEL_12:
        __break(1u);
        return v7 == v9;
      }
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v10 = *(a3 + 8 * v8 + 32);

      if (__OFADD__(v9, 1))
      {
        goto LABEL_12;
      }
    }

    v15 = a1;
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    v14 = a2;
    LOBYTE(v12) = v11(&v15, &v14);

    v8 = v9 + 1;
  }

  while ((v12 & 1) != 0);
  return v7 == v9;
}

uint64_t sub_214042458(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    for (i = (a3 + 40); ; i += 2)
    {
      v8 = *i;
      v13[0] = *(i - 1);
      v13[1] = v8;

      v9 = a1(v13);

      if (v3)
      {
        break;
      }

      v11 = v6-- != 0;
      if ((v9 & v11 & 1) == 0)
      {
        return v9 & 1;
      }
    }

    LOBYTE(v9) = 0;
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9 & 1;
}

uint64_t sub_214042508(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 1;
  }

  v6 = (a3 + 32);
  v7 = v4 - 1;
  do
  {
    v8 = *v6++;
    v13 = v8;
    sub_21402D9F8(v8, *(&v8 + 1));
    v9 = a1(&v13);
    sub_213FB54FC(v13, *(&v13 + 1));
    result = (v3 == 0) & v9;
    v12 = v7-- != 0;
  }

  while (result == 1 && v12);
  return result;
}

uint64_t sub_2140425C0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  v24 = a3;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = (v11 << 10) | (16 * __clz(__rbit64(v7)));
      v13 = (*(v24 + 48) + v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(v24 + 56) + v12);
      v17 = *v16;
      v18 = v16[1];
      v23[0] = v14;
      v23[1] = v15;
      v23[2] = v17;
      v23[3] = v18;

      v19 = a1(v23);
      if (v3)
      {

        return v21 & 1;
      }

      v20 = v19;

      if ((v20 & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    v21 = 0;
    return v21 & 1;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        v21 = 1;
        return v21 & 1;
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_214042744(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_15:
    v5 = sub_2146DA028();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      for (i = 0; ; ++i)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x216054E00](i, a3);
          v8 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            v9 = 0;
            return v9 & 1;
          }
        }

        else
        {
          if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v7 = *(a3 + 8 * i + 32);

          v8 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_12;
          }
        }

        v12 = v7;
        v9 = a1(&v12);

        if (v3)
        {
          goto LABEL_13;
        }

        if ((v9 & (v8 != v5)) == 0)
        {
          return v9 & 1;
        }
      }
    }
  }

  v9 = 1;
  return v9 & 1;
}

uint64_t sub_21404287C()
{
  MBDBrandInfo.dictionaryRepresentation.getter();
  v0 = sub_2146D9468();

  return v0;
}

unint64_t sub_2140428D0@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = sub_2142DFFBC(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F30, &unk_2147319A0);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v7;
    *(v3 + 16) = sub_214047B78;
    *(v3 + 24) = result;
    goto LABEL_10;
  }

  v4 = result;
  v5 = sub_2146DA028();
  result = v4;
  if (v5 != 1)
  {
    goto LABEL_9;
  }

  v6 = sub_2146DA028();
  result = v4;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

LABEL_10:
    *a2 = sub_214047A1C;
    *(a2 + 8) = v3;
    *(a2 + 16) = 0;
    *(a2 + 24) = 256;
    *(a2 + 26) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214042A28@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = sub_2142E0034(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v7;
    *(v3 + 16) = sub_21404733C;
    *(v3 + 24) = result;
    goto LABEL_10;
  }

  v4 = result;
  v5 = sub_2146DA028();
  result = v4;
  if (v5 != 1)
  {
    goto LABEL_9;
  }

  v6 = sub_2146DA028();
  result = v4;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

LABEL_10:
    *a2 = sub_214047A70;
    *(a2 + 8) = v3;
    *(a2 + 16) = xmmword_2146EA720;
    *(a2 + 32) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214042B80@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v8 = sub_2142E0070(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v8;
    *(v3 + 16) = sub_2140478EC;
    *(v3 + 24) = result;
    v4 = sub_214047950;
    goto LABEL_10;
  }

  v5 = result;
  v6 = sub_2146DA028();
  result = v5;
  if (v6 != 1)
  {
    goto LABEL_9;
  }

  v7 = sub_2146DA028();
  result = v5;
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

    v4 = sub_214047B34;
LABEL_10:
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214042CD0@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v8 = sub_2142E00AC(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v8;
    *(v3 + 16) = sub_2140477B0;
    *(v3 + 24) = result;
    v4 = sub_21404708C;
    goto LABEL_10;
  }

  v5 = result;
  v6 = sub_2146DA028();
  result = v5;
  if (v6 != 1)
  {
    goto LABEL_9;
  }

  v7 = sub_2146DA028();
  result = v5;
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

    v4 = sub_214047A70;
LABEL_10:
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 16) = xmmword_2146E68C0;
    *(a2 + 32) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214042E28@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v8 = sub_2142E00E8(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v8;
    *(v3 + 16) = sub_214047074;
    *(v3 + 24) = result;
    v4 = sub_21404708C;
    goto LABEL_10;
  }

  v5 = result;
  v6 = sub_2146DA028();
  result = v5;
  if (v6 != 1)
  {
    goto LABEL_9;
  }

  v7 = sub_2146DA028();
  result = v5;
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

    v4 = sub_214047A70;
LABEL_10:
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 16) = xmmword_2146EA730;
    *(a2 + 32) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214042F80@<X0>(unint64_t result@<X0>, uint64_t (**a2)(uint64_t a1, char *a2)@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = sub_2142E0124(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
    v3 = swift_allocObject();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v3 + 16) = sub_21404745C;
    *(v3 + 24) = v8;
    goto LABEL_10;
  }

  v4 = result;
  v5 = sub_2146DA028();
  result = v4;
  if (v5 != 1)
  {
    goto LABEL_9;
  }

  v6 = sub_2146DA028();
  result = v4;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

LABEL_10:
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
    v10 = *(v9 + 28);
    v11 = sub_2146D8958();
    result = (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
    *(a2 + *(v9 + 32)) = 2;
    *a2 = sub_214047A00;
    a2[1] = v3;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214043138@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = sub_2142E0160(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904108, &qword_2146EBA40);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v7;
    *(v3 + 16) = sub_2140470C4;
    *(v3 + 24) = result;
    goto LABEL_10;
  }

  v4 = result;
  v5 = sub_2146DA028();
  result = v4;
  if (v5 != 1)
  {
    goto LABEL_9;
  }

  v6 = sub_2146DA028();
  result = v4;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

LABEL_10:
    *a2 = sub_214047A8C;
    *(a2 + 8) = v3;
    *(a2 + 16) = 1;
    *(a2 + 24) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_21404328C@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v8 = sub_2142DFFF8(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v8;
    *(v3 + 16) = sub_2140478C4;
    *(v3 + 24) = result;
    v4 = sub_21404714C;
    goto LABEL_10;
  }

  v5 = result;
  v6 = sub_2146DA028();
  result = v5;
  if (v6 != 1)
  {
    goto LABEL_9;
  }

  v7 = sub_2146DA028();
  result = v5;
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

    v4 = sub_214047A8C;
LABEL_10:
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 16) = 0;
    *(a2 + 24) = 513;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_2140433DC@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = sub_2142E01D8(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v7;
    *(v3 + 16) = sub_214047838;
    *(v3 + 24) = result;
    goto LABEL_10;
  }

  v4 = result;
  v5 = sub_2146DA028();
  result = v4;
  if (v5 != 1)
  {
    goto LABEL_9;
  }

  v6 = sub_2146DA028();
  result = v4;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

LABEL_10:
    *a2 = sub_214047A8C;
    *(a2 + 8) = v3;
    *(a2 + 16) = 0;
    *(a2 + 24) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_21404352C@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v8 = sub_2142E0214(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040A8, &unk_2146EA9F0);
    v3 = swift_allocObject();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v3 + 16) = sub_214046F28;
    *(v3 + 24) = v9;
    v4 = sub_214046F40;
    goto LABEL_10;
  }

  v5 = result;
  v6 = sub_2146DA028();
  result = v5;
  if (v6 != 1)
  {
    goto LABEL_9;
  }

  v7 = sub_2146DA028();
  result = v5;
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

    v4 = sub_214047A00;
LABEL_10:
    v10 = v4;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
    v12 = *(v11 + 28);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
    result = (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
    a2[*(v11 + 32)] = 2;
    *a2 = v10;
    *(a2 + 1) = v3;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_2140436F0@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = sub_2142E0250(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904130, &unk_2146EAA90);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v7;
    *(v3 + 16) = sub_2140470C4;
    *(v3 + 24) = result;
    goto LABEL_10;
  }

  v4 = result;
  v5 = sub_2146DA028();
  result = v4;
  if (v5 != 1)
  {
    goto LABEL_9;
  }

  v6 = sub_2146DA028();
  result = v4;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

LABEL_10:
    *a2 = sub_214047A8C;
    *(a2 + 8) = v3;
    *(a2 + 16) = 0;
    *(a2 + 24) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214043840@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = sub_2142E028C(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904170, &unk_2146EAAD0);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v7;
    *(v3 + 16) = sub_2140470C4;
    *(v3 + 24) = result;
    goto LABEL_10;
  }

  v4 = result;
  v5 = sub_2146DA028();
  result = v4;
  if (v5 != 1)
  {
    goto LABEL_9;
  }

  v6 = sub_2146DA028();
  result = v4;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

LABEL_10:
    *a2 = sub_214047A8C;
    *(a2 + 8) = v3;
    *(a2 + 16) = 0;
    *(a2 + 24) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214043990@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = sub_2142E02C8(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904138, qword_2147384F0);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v7;
    *(v3 + 16) = sub_2140470C4;
    *(v3 + 24) = result;
    goto LABEL_10;
  }

  v4 = result;
  v5 = sub_2146DA028();
  result = v4;
  if (v5 != 1)
  {
    goto LABEL_9;
  }

  v6 = sub_2146DA028();
  result = v4;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

LABEL_10:
    *a2 = sub_214047A8C;
    *(a2 + 8) = v3;
    *(a2 + 16) = 0;
    *(a2 + 24) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214043AE0@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v8 = sub_2142E0304(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904150, &unk_2146EAAB0);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v8;
    *(v3 + 16) = sub_2140476AC;
    *(v3 + 24) = result;
    v4 = sub_2140476C0;
    goto LABEL_10;
  }

  v5 = result;
  v6 = sub_2146DA028();
  result = v5;
  if (v6 != 1)
  {
    goto LABEL_9;
  }

  v7 = sub_2146DA028();
  result = v5;
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

    v4 = sub_214047AE0;
LABEL_10:
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 16) = 0;
    *(a2 + 20) = 513;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214043C30@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v8 = sub_2142E0340(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904100, &unk_2146EAA50);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v8;
    *(v3 + 16) = sub_214047258;
    *(v3 + 24) = result;
    v4 = sub_214047260;
    goto LABEL_10;
  }

  v5 = result;
  v6 = sub_2146DA028();
  result = v5;
  if (v6 != 1)
  {
    goto LABEL_9;
  }

  v7 = sub_2146DA028();
  result = v5;
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

    v4 = sub_214047AC4;
LABEL_10:
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 1;
    *(a2 + 40) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214043D88@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = sub_2142E03B8(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904158, &qword_2146F4580);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v7;
    *(v3 + 16) = sub_2140470C4;
    *(v3 + 24) = result;
    goto LABEL_10;
  }

  v4 = result;
  v5 = sub_2146DA028();
  result = v4;
  if (v5 != 1)
  {
    goto LABEL_9;
  }

  v6 = sub_2146DA028();
  result = v4;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

LABEL_10:
    *a2 = sub_214047A8C;
    *(a2 + 8) = v3;
    *(a2 + 16) = 0;
    *(a2 + 24) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214043ED8@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = sub_2142E03F4(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904140, &unk_2146EAAA0);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v7;
    *(v3 + 16) = sub_2140470C4;
    *(v3 + 24) = result;
    goto LABEL_10;
  }

  v4 = result;
  v5 = sub_2146DA028();
  result = v4;
  if (v5 != 1)
  {
    goto LABEL_9;
  }

  v6 = sub_2146DA028();
  result = v4;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

LABEL_10:
    *a2 = sub_214047A8C;
    *(a2 + 8) = v3;
    *(a2 + 16) = 0;
    *(a2 + 24) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214044028@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = sub_2142E0430(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904160, &unk_2146EAAC0);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v7;
    *(v3 + 16) = sub_2140470C4;
    *(v3 + 24) = result;
    goto LABEL_10;
  }

  v4 = result;
  v5 = sub_2146DA028();
  result = v4;
  if (v5 != 1)
  {
    goto LABEL_9;
  }

  v6 = sub_2146DA028();
  result = v4;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

LABEL_10:
    *a2 = sub_214047A8C;
    *(a2 + 8) = v3;
    *(a2 + 16) = 0;
    *(a2 + 24) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214044178@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = sub_2142E046C(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904120, &unk_2146EAA80);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v7;
    *(v3 + 16) = sub_2140470C4;
    *(v3 + 24) = result;
    goto LABEL_10;
  }

  v4 = result;
  v5 = sub_2146DA028();
  result = v4;
  if (v5 != 1)
  {
    goto LABEL_9;
  }

  v6 = sub_2146DA028();
  result = v4;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

LABEL_10:
    *a2 = sub_214047A8C;
    *(a2 + 8) = v3;
    *(a2 + 16) = 1;
    *(a2 + 24) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_2140442CC@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v8 = sub_2142E04E4(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904188, &unk_2146F3E90);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v8;
    *(v3 + 16) = sub_214047840;
    *(v3 + 24) = result;
    v4 = sub_214047854;
    goto LABEL_10;
  }

  v5 = result;
  v6 = sub_2146DA028();
  result = v5;
  if (v6 != 1)
  {
    goto LABEL_9;
  }

  v7 = sub_2146DA028();
  result = v5;
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

    v4 = sub_214047B18;
LABEL_10:
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 16) = 0;
    *(a2 + 24) = 513;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_21404441C@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v8 = sub_2142E0520(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904128, qword_2147557C0);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v8;
    *(v3 + 16) = sub_2140475DC;
    *(v3 + 24) = result;
    v4 = sub_2140475E0;
    goto LABEL_10;
  }

  v5 = result;
  v6 = sub_2146DA028();
  result = v5;
  if (v6 != 1)
  {
    goto LABEL_9;
  }

  v7 = sub_2146DA028();
  result = v5;
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

    v4 = sub_214047A1C;
LABEL_10:
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 16) = 0;
    *(a2 + 24) = 256;
    *(a2 + 26) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214044574@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = sub_2142E055C(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904118, &qword_2146EAA78);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v7;
    *(v3 + 16) = sub_2140470C4;
    *(v3 + 24) = result;
    goto LABEL_10;
  }

  v4 = result;
  v5 = sub_2146DA028();
  result = v4;
  if (v5 != 1)
  {
    goto LABEL_9;
  }

  v6 = sub_2146DA028();
  result = v4;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

LABEL_10:
    *a2 = sub_214047A8C;
    *(a2 + 8) = v3;
    *(a2 + 16) = 1;
    *(a2 + 24) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_2140446C8@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = sub_2142E05D4(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904148, qword_21476AE20);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v7;
    *(v3 + 16) = sub_214047B50;
    *(v3 + 24) = result;
    goto LABEL_10;
  }

  v4 = result;
  v5 = sub_2146DA028();
  result = v4;
  if (v5 != 1)
  {
    goto LABEL_9;
  }

  v6 = sub_2146DA028();
  result = v4;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

LABEL_10:
    *a2 = sub_214047A54;
    *(a2 + 8) = v3;
    *(a2 + 16) = 0;
    *(a2 + 20) = 513;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214044818@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v8 = sub_2142E0610(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040F0, &qword_2146EAA40);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v8;
    *(v3 + 16) = sub_2140470DC;
    *(v3 + 24) = result;
    v4 = sub_21404714C;
    goto LABEL_10;
  }

  v5 = result;
  v6 = sub_2146DA028();
  result = v5;
  if (v6 != 1)
  {
    goto LABEL_9;
  }

  v7 = sub_2146DA028();
  result = v5;
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

    v4 = sub_214047A8C;
LABEL_10:
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 16) = 0;
    *(a2 + 24) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214044968@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = sub_2142E064C(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040F8, &qword_2146EAA48);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v7;
    *(v3 + 16) = sub_214047B78;
    *(v3 + 24) = result;
    goto LABEL_10;
  }

  v4 = result;
  v5 = sub_2146DA028();
  result = v4;
  if (v5 != 1)
  {
    goto LABEL_9;
  }

  v6 = sub_2146DA028();
  result = v4;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

LABEL_10:
    *a2 = sub_214047A1C;
    *(a2 + 8) = v3;
    *(a2 + 16) = 0;
    *(a2 + 24) = 256;
    *(a2 + 26) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214044AC0@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = sub_2142E06C4(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040D8, &qword_2146EAA28);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v7;
    *(v3 + 16) = sub_2140470C4;
    *(v3 + 24) = result;
    goto LABEL_10;
  }

  v4 = result;
  v5 = sub_2146DA028();
  result = v4;
  if (v5 != 1)
  {
    goto LABEL_9;
  }

  v6 = sub_2146DA028();
  result = v4;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

LABEL_10:
    *a2 = sub_214047A8C;
    *(a2 + 8) = v3;
    *(a2 + 16) = 0;
    *(a2 + 24) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214044C10@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v8 = sub_2142E0700(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040B8, &qword_2146EAA08);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v8;
    *(v3 + 16) = sub_214047030;
    *(v3 + 24) = result;
    v4 = sub_214047058;
    goto LABEL_10;
  }

  v5 = result;
  v6 = sub_2146DA028();
  result = v5;
  if (v6 != 1)
  {
    goto LABEL_9;
  }

  v7 = sub_2146DA028();
  result = v5;
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

    v4 = sub_214047A54;
LABEL_10:
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 16) = 0;
    *(a2 + 20) = 513;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214044D60@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v8 = sub_2142E073C(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040B0, &qword_2146EAA00);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v8;
    *(v3 + 16) = sub_214046FB0;
    *(v3 + 24) = result;
    v4 = sub_214046FC0;
    goto LABEL_10;
  }

  v5 = result;
  v6 = sub_2146DA028();
  result = v5;
  if (v6 != 1)
  {
    goto LABEL_9;
  }

  v7 = sub_2146DA028();
  result = v5;
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

    v4 = sub_214047A38;
LABEL_10:
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 16) = 526;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214044EAC@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = sub_2142E0778(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040E0, &unk_2146EAA30);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v7;
    *(v3 + 16) = sub_214047B78;
    *(v3 + 24) = result;
    goto LABEL_10;
  }

  v4 = result;
  v5 = sub_2146DA028();
  result = v4;
  if (v5 != 1)
  {
    goto LABEL_9;
  }

  v6 = sub_2146DA028();
  result = v4;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

LABEL_10:
    *a2 = sub_214047A1C;
    *(a2 + 8) = v3;
    *(a2 + 16) = 0;
    *(a2 + 24) = 256;
    *(a2 + 26) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214045004@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v8 = sub_2142E07F0(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040E8, &unk_2147319D0);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v8;
    *(v3 + 16) = sub_2140471B8;
    *(v3 + 24) = result;
    v4 = sub_2140471E0;
    goto LABEL_10;
  }

  v5 = result;
  v6 = sub_2146DA028();
  result = v5;
  if (v6 != 1)
  {
    goto LABEL_9;
  }

  v7 = sub_2146DA028();
  result = v5;
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

    v4 = sub_214047AA8;
LABEL_10:
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 20) = 256;
    *(a2 + 16) = 0;
    *(a2 + 22) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_21404515C@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v8 = sub_2142E082C(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040D0, &qword_2146EAA20);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v8;
    *(v3 + 16) = sub_2140470DC;
    *(v3 + 24) = result;
    v4 = sub_21404714C;
    goto LABEL_10;
  }

  v5 = result;
  v6 = sub_2146DA028();
  result = v5;
  if (v6 != 1)
  {
    goto LABEL_9;
  }

  v7 = sub_2146DA028();
  result = v5;
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

    v4 = sub_214047A8C;
LABEL_10:
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 16) = 1;
    *(a2 + 24) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_2140452B0@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = sub_2142E08A4(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C8, &unk_2147319B0);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v7;
    *(v3 + 16) = sub_2140470C4;
    *(v3 + 24) = result;
    goto LABEL_10;
  }

  v4 = result;
  v5 = sub_2146DA028();
  result = v4;
  if (v5 != 1)
  {
    goto LABEL_9;
  }

  v6 = sub_2146DA028();
  result = v4;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

LABEL_10:
    *a2 = sub_214047A8C;
    *(a2 + 8) = v3;
    *(a2 + 16) = 1;
    *(a2 + 24) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214045404@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v8 = sub_2142E08E0(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904168, &qword_2146F4550);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v8;
    *(v3 + 16) = sub_214047730;
    *(v3 + 24) = result;
    v4 = sub_214047740;
    goto LABEL_10;
  }

  v5 = result;
  v6 = sub_2146DA028();
  result = v5;
  if (v6 != 1)
  {
    goto LABEL_9;
  }

  v7 = sub_2146DA028();
  result = v5;
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

    v4 = sub_214047AFC;
LABEL_10:
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 16) = 33619968;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_214045568(__int128 *a1, char *a2, unint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  v8 = *a1;
  v6[2] = &v8;
  v7 = v3;
  return sub_214042744(sub_214047814, v6, v4) & 1;
}

uint64_t sub_2140455CC(__int128 *a1, char *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *a4;
  v10 = *a1;
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  v9 = v4;
  return v6(&v10, &v9) & 1;
}

uint64_t sub_214045624(__int128 *a1, char *a2, unint64_t *a3)
{
  v3 = *(a1 + 2);
  v4 = *a2;
  v5 = *a3;
  v9 = *a1;
  v10 = v3;
  v7[2] = &v9;
  v8 = v4;
  return sub_214042744(sub_2140472D8, v7, v5) & 1;
}

unint64_t sub_214045690(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041C0, &qword_2146EAB30);
    v3 = sub_2146DA058();
    v4 = a1 + 32;

    while (1)
    {
      sub_213FB2E54(v4, &v15, &qword_27C903FD0, &unk_2146F14B0);
      v5 = v15;
      v6 = v16;
      result = sub_21408C300(v15, v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2140457C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914350, &qword_21474D950);
    v3 = sub_2146DA058();
    v4 = a1 + 32;

    while (1)
    {
      sub_213FB2E54(v4, &v13, &qword_27C903FE0, &unk_2146EA760);
      v5 = v13;
      v6 = v14;
      result = sub_21408C300(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_213FDC730(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2140458F0()
{
  result = qword_27C903FF0;
  if (!qword_27C903FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C903FF0);
  }

  return result;
}

unint64_t sub_2140459AC()
{
  result = qword_280B30B98;
  if (!qword_280B30B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C904000, &unk_2146EA780);
    sub_214045A54(&qword_280B30BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30B98);
  }

  return result;
}

uint64_t sub_214045A54(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C904F20, &qword_2146EE8A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_214045AC0()
{
  result = qword_280B30BA8;
  if (!qword_280B30BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C904008, &qword_2146EC050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30BA8);
  }

  return result;
}

uint64_t _s19CodingConfigurationV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s19CodingConfigurationV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_214045CA0()
{
  result = qword_27C904010;
  if (!qword_27C904010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904010);
  }

  return result;
}

unint64_t sub_214045CF8()
{
  result = qword_27C904018;
  if (!qword_27C904018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904018);
  }

  return result;
}

unint64_t sub_214045D50()
{
  result = qword_27C904020;
  if (!qword_27C904020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904020);
  }

  return result;
}

unint64_t sub_214045DA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041A8, &unk_2146EAEA0);
    v3 = sub_2146DA058();
    v4 = a1 + 32;

    while (1)
    {
      sub_213FB2E54(v4, v13, &qword_27C9041B0, &unk_2146EAB10);
      result = sub_21408C378(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_213FDC730(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_214045EE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904098, &unk_2146EA9E0);
    v3 = sub_2146DA058();
    v4 = a1 + 32;

    while (1)
    {
      sub_213FB2E54(v4, &v11, &qword_27C9040A0, &unk_214771CE0);
      v5 = v11;
      result = sub_21408C3BC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_213FDC730(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_214046008(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041A0, &qword_2146EAAF8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9042F0, &unk_2146EAB00);
    v8 = sub_2146DA058();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_213FB2E54(v10, v6, &qword_27C9041A0, &qword_2146EAAF8);
      result = sub_21408C508(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_2146DA008();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_213FDC730(&v6[v9], (v8[7] + 32 * v14));
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2140461F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904190, &qword_2146EAAE8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904198, &qword_2146EAAF0);
    v8 = sub_2146DA058();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_213FB2E54(v10, v6, &qword_27C904190, &qword_2146EAAE8);
      result = sub_21408C56C(*v6, v6[8]);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6] + 16 * result;
      v16 = v6[8];
      *v15 = *v6;
      *(v15 + 8) = v16;
      v17 = v8[7];
      v18 = sub_2146D8958();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2140463E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904080, &unk_2146EAE90);
    v3 = sub_2146DA058();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21408C300(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2140464E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904090, &qword_2146EA9D8);
    v3 = sub_2146DA058();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21408C300(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2140465E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904088, &qword_2146EA9D0);
    v3 = sub_2146DA058();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_21402D9F8(v7, v8);
      result = sub_21408C300(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_214046700(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904028, &qword_2146EA970);
    v3 = sub_2146DA058();
    v4 = a1 + 32;

    while (1)
    {
      sub_213FB2E54(v4, &v13, &qword_27C904030, &qword_2146EA978);
      v5 = v13;
      v6 = v14;
      result = sub_21408C300(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_213FB77C8(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_214046834(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904078, &unk_2146EA9C0);
    v3 = sub_2146DA058();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_21408C300(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_214046938(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904050, &qword_2146EA998);
    v3 = sub_2146DA058();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_21408C3BC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_214046A28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904068, &qword_2146EA9B0);
    v3 = sub_2146DA058();
    v4 = a1 + 32;

    while (1)
    {
      sub_213FB2E54(v4, &v13, &qword_27C904070, &qword_2146EA9B8);
      v5 = v13;
      v6 = v14;
      result = sub_21408C300(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_213FB77C8(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}