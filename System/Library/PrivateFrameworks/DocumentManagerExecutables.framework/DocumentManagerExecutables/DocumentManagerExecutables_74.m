double closure #1 in DOCItemCollectionLayoutTraits.gridItemLayoutTraits.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  DOCItemCollectionLayoutTraits.GridSpecContext.layout(assertIfEnvironmentIsLegacy:)(&v22);
  swift_endAccess();
  v46 = v32;
  v47 = v33;
  v48 = v34;
  v49 = v35;
  v42 = v28;
  v43 = v29;
  v44 = v30;
  v45 = v31;
  v38 = v24;
  v39 = v25;
  v40 = v26;
  v41 = v27;
  v36 = v22;
  v37 = v23;
  v4 = *&v29;
  v5 = objc_opt_self();
  v6 = *(a1 + 560);
  v7 = [v5 preferredFontForTextStyle:v36 compatibleWithTraitCollection:v6];
  v8 = [v5 preferredFontForTextStyle:v37 compatibleWithTraitCollection:v6];
  v9 = *(&v36 + 1);
  isa = UIFont.doc_withFeatureMonospacedDigits()().super.isa;
  v11 = *(&v37 + 1);
  v13 = *(&v47 + 1);
  v12 = v48;
  v14 = BYTE9(v38);
  v15 = BYTE10(v38);
  (*(*a1 + 208))(&v22);
  DOCItemCollectionLayoutTraits.thumbnailStatusBadgeTraits(for:)(v21, v4);
  outlined destroy of DOCGridLayout(&v36);
  v16 = *(a1 + 552) != 4;
  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v8;
  *(a2 + 24) = isa;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;
  *(a2 + 48) = v4;
  *(a2 + 56) = v4;
  *(a2 + 64) = v13;
  *(a2 + 72) = v14;
  *(a2 + 73) = v15;
  v17 = v25;
  *(a2 + 112) = v24;
  *(a2 + 128) = v17;
  *(a2 + 144) = v26;
  v18 = v23;
  *(a2 + 80) = v22;
  *(a2 + 96) = v18;
  result = *v21;
  v20 = v21[1];
  *(a2 + 152) = v21[0];
  *(a2 + 168) = v20;
  *(a2 + 184) = v16;
  return result;
}

uint64_t DOCItemCollectionLayoutTraits.gridItemBadgeLayoutTraits.getter@<X0>(double *a1@<X8>)
{
  if (*(v1 + 400))
  {
    swift_beginAccess();
    DOCItemCollectionLayoutTraits.GridSpecContext.layout(assertIfEnvironmentIsLegacy:)(v13);
    swift_endAccess();
    v21[10] = v17;
    v21[11] = v18;
    v21[12] = v19;
    v21[13] = v20;
    v21[6] = v13[6];
    v21[7] = v14;
    v21[8] = v15;
    v21[9] = v16;
    v21[2] = v13[2];
    v21[3] = v13[3];
    v21[4] = v13[4];
    v21[5] = v13[5];
    v21[0] = v13[0];
    v21[1] = v13[1];
    v3 = *&v14;
    swift_beginAccess();
    v4 = *&static DOCItemCellIconWidth.size_90;
    result = outlined destroy of DOCGridLayout(v21);
    if (v4 + 1.0 < 0.0)
    {
      __break(1u);
    }

    else
    {
      if (v3 < 0.0 || v3 >= v4 + 1.0)
      {
        v8 = 22.0;
        v9 = 2.5;
        v10 = 2.0;
        v7 = 46.0;
        v6 = 1;
      }

      else
      {
        v6 = 0;
        v7 = 30.0;
        v8 = 14.0;
        v9 = 2.0;
        v10 = 1.5;
      }

      *(v1 + 328) = v7;
      *(v1 + 336) = v7;
      *(v1 + 344) = v8;
      *(v1 + 352) = v8;
      *(v1 + 360) = v10;
      *(v1 + 368) = v9;
      *(v1 + 376) = v10;
      *(v1 + 384) = v9;
      *(v1 + 392) = v6;
      *(v1 + 400) = 0;
      *a1 = v7;
      a1[1] = v7;
      a1[2] = v8;
      a1[3] = v8;
      a1[4] = v10;
      a1[5] = v9;
      a1[6] = v10;
      a1[7] = v9;
      *(a1 + 8) = v6;
    }
  }

  else
  {
    v11 = *(v1 + 376);
    *(a1 + 2) = *(v1 + 360);
    *(a1 + 3) = v11;
    a1[8] = *(v1 + 392);
    v12 = *(v1 + 344);
    *a1 = *(v1 + 328);
    *(a1 + 1) = v12;
  }

  return result;
}

void DOCItemCollectionLayoutTraits.listLayoutTraits.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 416);
  if (v3 == 2)
  {
    v4 = *(v1 + 888);
    v15[2] = *(v1 + 872);
    v15[3] = v4;
    v5 = *(v1 + 920);
    v16 = *(v1 + 904);
    v17 = v5;
    v6 = *(v1 + 560);
    v7 = (*(*v1 + 184))(v11);
    (*(*v1 + 256))(v10, v7);
    v8 = DOCItemCollectionListSpec.rowHeight(for:gridItemLayoutTraits:listItemLayoutTraits:)(v6, v11, v10);
    v13[4] = v10[4];
    v13[5] = v10[5];
    v13[6] = v10[6];
    v13[7] = v10[7];
    v13[0] = v10[0];
    v13[1] = v10[1];
    v13[2] = v10[2];
    v13[3] = v10[3];
    outlined destroy of DOCItemCollectionLayoutTraits.ListItemTraits(v13);
    v14[8] = v11[8];
    v14[9] = v11[9];
    v15[0] = v12[0];
    *(v15 + 9) = *(v12 + 9);
    v14[4] = v11[4];
    v14[5] = v11[5];
    v14[6] = v11[6];
    v14[7] = v11[7];
    v14[0] = v11[0];
    v14[1] = v11[1];
    v14[2] = v11[2];
    v14[3] = v11[3];
    outlined destroy of DOCItemCollectionLayoutTraits.GridItemTraits(v14);
    v9 = BYTE8(v16) & 1;
    *(v1 + 408) = v8;
    *(v1 + 416) = v9;
  }

  else
  {
    v8 = *(v1 + 408);
    v9 = v3 & 1;
  }

  *a1 = v8;
  *(a1 + 8) = v9;
}

uint64_t key path setter for DOCItemCollectionLayoutTraits.listItemLayoutTraits : DOCItemCollectionLayoutTraits(_OWORD *a1, uint64_t *a2)
{
  v2 = a1[5];
  v22 = a1[4];
  v23 = v2;
  v3 = a1[7];
  v24 = a1[6];
  v25 = v3;
  v4 = a1[1];
  v19[0] = *a1;
  v19[1] = v4;
  v5 = a1[3];
  v20 = a1[2];
  v21 = v5;
  v6 = *a2;
  v28 = v20;
  v29 = v5;
  v26 = v19[0];
  v27 = v4;
  v32 = v24;
  v33 = v3;
  v30 = v22;
  v31 = v2;
  DOCGridLayout.specIconWidth.modify(*&v22, *&v2);
  v7 = *(v6 + 504);
  v34[4] = *(v6 + 488);
  v34[5] = v7;
  v8 = *(v6 + 536);
  v34[6] = *(v6 + 520);
  v34[7] = v8;
  v9 = *(v6 + 440);
  v34[0] = *(v6 + 424);
  v34[1] = v9;
  v10 = *(v6 + 472);
  v34[2] = *(v6 + 456);
  v34[3] = v10;
  v11 = v19[0];
  v12 = v27;
  v13 = v29;
  *(v6 + 456) = v20;
  *(v6 + 472) = v13;
  *(v6 + 424) = v11;
  *(v6 + 440) = v12;
  v14 = v30;
  v15 = v31;
  v16 = v33;
  *(v6 + 520) = v32;
  *(v6 + 536) = v16;
  *(v6 + 488) = v14;
  *(v6 + 504) = v15;
  outlined init with copy of DOCItemCollectionLayoutTraits.ListItemTraits(v19, &v18);
  return outlined destroy of CharacterSet?(v34, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
}

uint64_t DOCItemCollectionLayoutTraits.listItemLayoutTraits.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + 424);
  v4 = *(v1 + 504);
  v68 = *(v1 + 488);
  v69 = v4;
  v5 = *(v1 + 536);
  v70 = *(v1 + 520);
  v71 = v5;
  v6 = *(v1 + 440);
  v65[0] = *(v1 + 424);
  v65[1] = v6;
  v7 = *(v1 + 472);
  v66 = *(v1 + 456);
  v67 = v7;
  v78 = v70;
  v79 = v5;
  v76 = v68;
  v77 = v4;
  v74 = v66;
  v75 = v7;
  v72 = v65[0];
  v73 = v6;
  if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v72) == 1)
  {
    v8 = *(v1 + 872);
    v9 = *(v1 + 880);
    v10 = *(v1 + 888);
    v11 = *(v1 + 896);
    v12 = *(v1 + 904);
    v13 = *(v1 + 920);
    v41 = *(v1 + 928);
    v14 = objc_opt_self();
    v15 = *(v1 + 560);
    v16 = v10;
    v17 = [v14 preferredFontForTextStyle:v16 compatibleWithTraitCollection:v15];
    v18 = [v14 preferredFontForTextStyle:v11 compatibleWithTraitCollection:v15];
    v19 = *MEMORY[0x277D768C8];
    v20 = *(MEMORY[0x277D768C8] + 16);
    v21 = *(MEMORY[0x277D768C8] + 24);
    DOCItemCollectionLayoutTraits.thumbnailStatusBadgeTraits(for:)(&v57, v8);
    *&v43 = v17;
    *(&v43 + 1) = v18;
    *&v44 = v12;
    *(&v44 + 1) = v13;
    *&v45[8] = v57;
    *&v45[24] = v58;
    *v45 = v41;
    *&v45[40] = v16;
    LOBYTE(v46) = 1;
    *(&v46 + 1) = v9;
    v47 = v19;
    *&v48 = v20;
    *(&v48 + 1) = v21;
    v51 = *v45;
    v52 = *&v45[16];
    v49 = v43;
    v50 = v44;
    v55 = v19;
    v56 = v48;
    v53 = *&v45[32];
    v54 = v46;
    DOCGridLayout.specIconWidth.modify(*(&v58 + 1), *&v46);
    v22 = v3[5];
    v61 = v3[4];
    v62 = v22;
    v23 = v3[7];
    v63 = v3[6];
    v64 = v23;
    v24 = v3[1];
    v57 = *v3;
    v58 = v24;
    v25 = v3[3];
    v59 = v3[2];
    v60 = v25;
    v26 = v43;
    v27 = v44;
    v28 = *&v45[16];
    v3[2] = *v45;
    v3[3] = v28;
    *v3 = v26;
    v3[1] = v27;
    v29 = v53;
    v30 = v54;
    v31 = v56;
    v3[6] = v55;
    v3[7] = v31;
    v3[4] = v29;
    v3[5] = v30;
    outlined init with copy of DOCItemCollectionLayoutTraits.ListItemTraits(&v43, v42);
    outlined destroy of CharacterSet?(&v57, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
    v32 = v46;
    a1[4] = *&v45[32];
    a1[5] = v32;
    v33 = v48;
    a1[6] = v47;
    a1[7] = v33;
    v34 = v44;
    *a1 = v43;
    a1[1] = v34;
    v35 = *v45;
    v36 = *&v45[16];
  }

  else
  {
    v37 = v77;
    a1[4] = v76;
    a1[5] = v37;
    v38 = v79;
    a1[6] = v78;
    a1[7] = v38;
    v39 = v73;
    *a1 = v72;
    a1[1] = v39;
    v35 = v74;
    v36 = v75;
  }

  a1[2] = v35;
  a1[3] = v36;
  return outlined init with copy of DOCGridLayout.Spec?(v65, &v57, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
}

CGSize __swiftcall DOCItemCollectionLayoutTraits.recentsPopoverCollectionPreferredContentSize(mode:)(DocumentManagerExecutables::DOCItemCollectionLayoutTraits::PopoverDisplayMode mode)
{
  (*(*v1 + 160))(&v19);
  v3 = v21;
  v4 = [objc_opt_self() mainScreen];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v22.origin.x = v6;
  v22.origin.y = v8;
  v22.size.width = v10;
  v22.size.height = v12;
  Width = CGRectGetWidth(v22);
  v23.origin.x = v6;
  v23.origin.y = v8;
  v23.size.width = v10;
  v23.size.height = v12;
  Height = CGRectGetHeight(v23);
  outlined destroy of DOCItemCollectionLayoutTraits.GridTraits(&v19);
  v15 = v3 * 4.0 + v20 * 3.4;
  if ((mode & 1) == 0)
  {
    v15 = v3 + v3 + v20;
  }

  if (Height >= Width)
  {
    v16 = Width;
  }

  else
  {
    v16 = Height;
  }

  v17 = floor(v16 * 0.46);
  result.height = v15;
  result.width = v17;
  return result;
}

void DOCItemCollectionLayoutTraits.thumbnailStatusBadgeTraits(for:)(double *a1@<X8>, double a2@<D0>)
{
  if (a2 >= 29.0)
  {
    if (a2 < 44.0)
    {
      v2 = 12.0;
      v3 = 3.0;
    }

    else
    {
      v2 = 15.0;
      v3 = 4.0;
      if (a2 >= 48.0)
      {
        v2 = 16.0;
        if (a2 >= 58.0 && a2 >= 66.0)
        {
          v2 = 17.0;
          if (a2 >= 84.0)
          {
            v3 = 6.0;
            v2 = 21.0;
            if (a2 >= 88.0)
            {
              v2 = 22.0;
              if (a2 >= 90.0)
              {
                v2 = 23.0;
                if (a2 >= 128.0)
                {
                  if (a2 >= 140.0)
                  {
                    if (a2 >= 170.0)
                    {
                      if (a2 >= 186.0)
                      {
                        if (a2 >= 320.0)
                        {
                          v3 = 22.0;
                          v4 = 0x4054000000000000;
                        }

                        else
                        {
                          v3 = 13.0;
                          v4 = 0x4048000000000000;
                        }
                      }

                      else
                      {
                        v3 = 12.0;
                        v4 = 0x4045800000000000;
                      }
                    }

                    else
                    {
                      v3 = 10.0;
                      v4 = 0x4042000000000000;
                    }
                  }

                  else
                  {
                    v3 = 9.0;
                    v4 = 0x4040000000000000;
                  }

                  v2 = *&v4;
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v2 = 9.0;
    v3 = 2.0;
  }

  *a1 = v2;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v3;
}

uint64_t DOCItemCollectionLayoutTraits.GridSpecContext.layout.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[15];
  v3 = v1[13];
  v33 = v1[14];
  v34 = v2;
  v4 = v1[15];
  v5 = v1[17];
  v35 = v1[16];
  v6 = v35;
  v36 = v5;
  v7 = v1[11];
  v9 = v1[9];
  v29 = v1[10];
  v8 = v29;
  v30 = v7;
  v10 = v1[11];
  v11 = v1[13];
  v31 = v1[12];
  v12 = v31;
  v32 = v11;
  v13 = v1[7];
  v15 = v1[5];
  v25 = v1[6];
  v14 = v25;
  v26 = v13;
  v16 = v1[7];
  v17 = v1[9];
  v27 = v1[8];
  v18 = v27;
  v28 = v17;
  v19 = v1[5];
  v24[0] = v1[4];
  v20 = v24[0];
  v24[1] = v19;
  a1[10] = v33;
  a1[11] = v4;
  v21 = v1[17];
  a1[12] = v6;
  a1[13] = v21;
  a1[6] = v8;
  a1[7] = v10;
  a1[8] = v12;
  a1[9] = v3;
  a1[2] = v14;
  a1[3] = v16;
  a1[4] = v18;
  a1[5] = v9;
  *a1 = v20;
  a1[1] = v15;
  return outlined init with copy of DOCGridLayout.Spec?(v24, &v23, &_s26DocumentManagerExecutables13DOCGridLayoutVSgMd);
}

__n128 DOCItemCollectionLayoutTraits.GridSpecContext.layout.setter(uint64_t a1)
{
  v3 = v1[15];
  v18[10] = v1[14];
  v18[11] = v3;
  v4 = v1[17];
  v18[12] = v1[16];
  v18[13] = v4;
  v5 = v1[11];
  v18[6] = v1[10];
  v18[7] = v5;
  v6 = v1[13];
  v18[8] = v1[12];
  v18[9] = v6;
  v7 = v1[7];
  v18[2] = v1[6];
  v18[3] = v7;
  v8 = v1[9];
  v18[4] = v1[8];
  v18[5] = v8;
  v9 = v1[5];
  v18[0] = v1[4];
  v18[1] = v9;
  outlined destroy of CharacterSet?(v18, &_s26DocumentManagerExecutables13DOCGridLayoutVSgMd);
  v10 = *(a1 + 176);
  v1[14] = *(a1 + 160);
  v1[15] = v10;
  v11 = *(a1 + 208);
  v1[16] = *(a1 + 192);
  v1[17] = v11;
  v12 = *(a1 + 112);
  v1[10] = *(a1 + 96);
  v1[11] = v12;
  v13 = *(a1 + 144);
  v1[12] = *(a1 + 128);
  v1[13] = v13;
  v14 = *(a1 + 48);
  v1[6] = *(a1 + 32);
  v1[7] = v14;
  v15 = *(a1 + 80);
  v1[8] = *(a1 + 64);
  v1[9] = v15;
  result = *a1;
  v17 = *(a1 + 16);
  v1[4] = *a1;
  v1[5] = v17;
  return result;
}

double default argument 4 of DOCItemCollectionLayoutTraits.GridSpecContext.init(traitCollection:layoutContainerSize:layoutContainerSafeInsets:itemCollectionContext:layout:)@<D0>(_OWORD *a1@<X8>)
{
  _s26DocumentManagerExecutables13DOCGridLayoutVSgWOi0_(v10);
  v2 = v10[11];
  a1[10] = v10[10];
  a1[11] = v2;
  v3 = v10[13];
  a1[12] = v10[12];
  a1[13] = v3;
  v4 = v10[7];
  a1[6] = v10[6];
  a1[7] = v4;
  v5 = v10[9];
  a1[8] = v10[8];
  a1[9] = v5;
  v6 = v10[3];
  a1[2] = v10[2];
  a1[3] = v6;
  v7 = v10[5];
  a1[4] = v10[4];
  a1[5] = v7;
  result = *v10;
  v9 = v10[1];
  *a1 = v10[0];
  a1[1] = v9;
  return result;
}

__n128 DOCItemCollectionLayoutTraits.GridSpecContext.init(traitCollection:layoutContainerSize:layoutContainerSafeInsets:itemCollectionContext:layout:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>, double a10@<D5>)
{
  v10 = *a2;
  *a4 = a1;
  *(a4 + 8) = a5;
  *(a4 + 16) = a6;
  *(a4 + 24) = a7;
  *(a4 + 32) = a8;
  *(a4 + 40) = a9;
  *(a4 + 48) = a10;
  *(a4 + 56) = v10;
  v11 = *(a3 + 176);
  *(a4 + 224) = *(a3 + 160);
  *(a4 + 240) = v11;
  v12 = *(a3 + 208);
  *(a4 + 256) = *(a3 + 192);
  *(a4 + 272) = v12;
  v13 = *(a3 + 112);
  *(a4 + 160) = *(a3 + 96);
  *(a4 + 176) = v13;
  v14 = *(a3 + 144);
  *(a4 + 192) = *(a3 + 128);
  *(a4 + 208) = v14;
  v15 = *(a3 + 48);
  *(a4 + 96) = *(a3 + 32);
  *(a4 + 112) = v15;
  v16 = *(a3 + 80);
  *(a4 + 128) = *(a3 + 64);
  *(a4 + 144) = v16;
  result = *a3;
  v18 = *(a3 + 16);
  *(a4 + 64) = *a3;
  *(a4 + 80) = v18;
  return result;
}

id DOCDefaultSizeCategory.getter()
{
  if (one-time initialization token for DOCDefaultSizeCategory != -1)
  {
    swift_once();
  }

  rawValue = DOCDefaultSizeCategory._rawValue;

  return rawValue;
}

uint64_t DOCItemCollectionLayoutTraits.init(context:traitCollection:containerViewSize:)(unsigned __int8 *a1, void *a2, double a3, double a4)
{
  v8 = *a1;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0;
  _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgWOi0_(v36);
  v9 = v36[9];
  *(v4 + 264) = v36[8];
  *(v4 + 280) = v9;
  *(v4 + 296) = v37[0];
  *(v4 + 305) = *(v37 + 9);
  v10 = v36[5];
  *(v4 + 200) = v36[4];
  *(v4 + 216) = v10;
  v11 = v36[7];
  *(v4 + 232) = v36[6];
  *(v4 + 248) = v11;
  v12 = v36[1];
  *(v4 + 136) = v36[0];
  *(v4 + 152) = v12;
  v13 = v36[3];
  *(v4 + 168) = v36[2];
  *(v4 + 184) = v13;
  v38 = 1;
  *(v4 + 328) = 0u;
  *(v4 + 344) = 0u;
  *(v4 + 360) = 0u;
  *(v4 + 376) = 0u;
  *(v4 + 392) = 0;
  *(v4 + 400) = 1;
  *(v4 + 408) = 0;
  *(v4 + 416) = 2;
  _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgWOi0_(v39);
  v14 = v39[5];
  *(v4 + 488) = v39[4];
  *(v4 + 504) = v14;
  v15 = v39[7];
  *(v4 + 520) = v39[6];
  *(v4 + 536) = v15;
  v16 = v39[1];
  *(v4 + 424) = v39[0];
  *(v4 + 440) = v16;
  v17 = v39[3];
  *(v4 + 456) = v39[2];
  *(v4 + 472) = v17;
  *(v4 + 552) = v8;
  *(v4 + 568) = a3;
  *(v4 + 576) = a4;
  *(v4 + 560) = a2;
  if (v8 == 3)
  {
    v18 = objc_opt_self();
    v19 = a2;
    v20 = [v18 mainScreen];
    [v20 bounds];
    v22 = v21;
    v24 = v23;
  }

  else
  {
    v25 = a2;
    v22 = a3;
    v24 = a4;
  }

  if (one-time initialization token for sizeClassToSize != -1)
  {
    swift_once();
  }

  v26 = static DOCItemCollectionSizeClass.sizeClassToSize;
  v27 = specialized Dictionary<>.doc_firstKey(forValue:)(static DOCItemCollectionSizeClass.sizeClassToSize, v22, v24);
  if (v27 == 17)
  {
    v27 = specialized static DOCItemCollectionSizeClass.almostExactSizeClass(for:)(v22, v24);
    if (v27 == 17)
    {
      v27 = specialized Dictionary<>.doc_firstKey(forValue:)(v26, v24, v22);
      if (v27 == 17)
      {
        v27 = specialized static DOCItemCollectionSizeClass.almostExactSizeClass(for:)(v24, v22);
        if (v27 == 17)
        {
          v27 = specialized DOCItemCollectionSizeClass.init(exactlyMatchWidth:)(v22);
          if (v27 == 17)
          {
            v27 = specialized DOCItemCollectionSizeClass.init(exactlyMatchHeight:)(v22);
            if (v27 == 17)
            {
              v27 = specialized DOCItemCollectionSizeClass.init(closestToWidth:)(v22);
            }
          }
        }
      }
    }
  }

  v28 = v27;
  _s26DocumentManagerExecutables13DOCGridLayoutVSgWOi0_(v34);
  *&v33[167] = v34[10];
  *&v33[183] = v34[11];
  *&v33[199] = v34[12];
  *&v33[215] = v34[13];
  *&v33[103] = v34[6];
  *&v33[119] = v34[7];
  *&v33[135] = v34[8];
  *&v33[151] = v34[9];
  *&v33[39] = v34[2];
  *&v33[55] = v34[3];
  *&v33[71] = v34[4];
  *&v33[87] = v34[5];
  *&v33[7] = v34[0];
  *&v33[23] = v34[1];
  *(v4 + 584) = a2;
  *(v4 + 592) = a3;
  *(v4 + 600) = a4;
  v29 = *(MEMORY[0x277D768C8] + 16);
  *(v4 + 608) = *MEMORY[0x277D768C8];
  *(v4 + 624) = v29;
  *(v4 + 640) = v8;
  *(v4 + 833) = *&v33[192];
  *(v4 + 849) = *&v33[208];
  *(v4 + 864) = *&v33[223];
  *(v4 + 769) = *&v33[128];
  *(v4 + 785) = *&v33[144];
  *(v4 + 801) = *&v33[160];
  *(v4 + 817) = *&v33[176];
  *(v4 + 705) = *&v33[64];
  *(v4 + 721) = *&v33[80];
  *(v4 + 737) = *&v33[96];
  *(v4 + 753) = *&v33[112];
  *(v4 + 641) = *v33;
  *(v4 + 657) = *&v33[16];
  *(v4 + 673) = *&v33[32];
  *(v4 + 689) = *&v33[48];
  specialized DOCItemCollectionListSpec.init(traitCollection:sizeClass:sizeClassOrientation:)(a2, v28, v35);
  v30 = v35[1];
  *(v4 + 872) = v35[0];
  *(v4 + 888) = v30;
  v31 = v35[3];
  *(v4 + 904) = v35[2];
  *(v4 + 920) = v31;
  return v4;
}

CGSize __swiftcall DOCItemCollectionLayoutTraits.supplementaryViewSize(for:)(UIView_optional *a1)
{
  if (a1)
  {
    v4 = *(v1 + 568);
    LODWORD(v2) = 1148846080;
    LODWORD(v3) = 1112014848;
    [(UIView_optional *)a1 systemLayoutSizeFittingSize:v4 withHorizontalFittingPriority:*(MEMORY[0x277D76C78] + 8) verticalFittingPriority:v2, v3];
  }

  else
  {
    v4 = 0.0;
    v5 = 0.0;
  }

  v6 = v4;
  result.height = v5;
  result.width = v6;
  return result;
}

uint64_t DOCItemCollectionLayoutTraits.deinit()
{
  outlined consume of DOCItemCollectionLayoutTraits.GridTraits?(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  v1 = *(v0 + 280);
  v12[8] = *(v0 + 264);
  v12[9] = v1;
  v13[0] = *(v0 + 296);
  *(v13 + 9) = *(v0 + 305);
  v2 = *(v0 + 216);
  v12[4] = *(v0 + 200);
  v12[5] = v2;
  v3 = *(v0 + 248);
  v12[6] = *(v0 + 232);
  v12[7] = v3;
  v4 = *(v0 + 152);
  v12[0] = *(v0 + 136);
  v12[1] = v4;
  v5 = *(v0 + 184);
  v12[2] = *(v0 + 168);
  v12[3] = v5;
  outlined destroy of CharacterSet?(v12, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
  v6 = *(v0 + 504);
  v14[4] = *(v0 + 488);
  v14[5] = v6;
  v7 = *(v0 + 536);
  v14[6] = *(v0 + 520);
  v14[7] = v7;
  v8 = *(v0 + 440);
  v14[0] = *(v0 + 424);
  v14[1] = v8;
  v9 = *(v0 + 472);
  v14[2] = *(v0 + 456);
  v14[3] = v9;
  outlined destroy of CharacterSet?(v14, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);

  memcpy(__dst, (v0 + 584), 0x120uLL);
  outlined destroy of DOCItemCollectionLayoutTraits.GridSpecContext(__dst);
  v10 = *(v0 + 888);

  return v0;
}

uint64_t DOCItemCollectionLayoutTraits.__deallocating_deinit()
{
  outlined consume of DOCItemCollectionLayoutTraits.GridTraits?(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  v1 = *(v0 + 280);
  v12[8] = *(v0 + 264);
  v12[9] = v1;
  v13[0] = *(v0 + 296);
  *(v13 + 9) = *(v0 + 305);
  v2 = *(v0 + 216);
  v12[4] = *(v0 + 200);
  v12[5] = v2;
  v3 = *(v0 + 248);
  v12[6] = *(v0 + 232);
  v12[7] = v3;
  v4 = *(v0 + 152);
  v12[0] = *(v0 + 136);
  v12[1] = v4;
  v5 = *(v0 + 184);
  v12[2] = *(v0 + 168);
  v12[3] = v5;
  outlined destroy of CharacterSet?(v12, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
  v6 = *(v0 + 504);
  v14[4] = *(v0 + 488);
  v14[5] = v6;
  v7 = *(v0 + 536);
  v14[6] = *(v0 + 520);
  v14[7] = v7;
  v8 = *(v0 + 440);
  v14[0] = *(v0 + 424);
  v14[1] = v8;
  v9 = *(v0 + 472);
  v14[2] = *(v0 + 456);
  v14[3] = v9;
  outlined destroy of CharacterSet?(v14, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);

  memcpy(__dst, (v0 + 584), 0x120uLL);
  outlined destroy of DOCItemCollectionLayoutTraits.GridSpecContext(__dst);
  v10 = *(v0 + 888);

  return swift_deallocClassInstance();
}

uint64_t DOCItemCollectionLayoutTraits.debugCheckHasIdenticalCalculationInputs(comparedTo:)(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_26;
  }

  v2 = v1;
  v4 = one-time initialization token for hSizeClass;

  if (v4 != -1)
  {
    swift_once();
  }

  v32 = static UITraitCollection.Traits.hSizeClass;
  v33 = qword_27EEE9C60;
  v5 = one-time initialization token for vSizeClass;

  if (v5 != -1)
  {
    swift_once();
  }

  v34 = static UITraitCollection.Traits.vSizeClass;
  v35 = qword_27EEE9C78;
  v6 = one-time initialization token for displayScale;

  if (v6 != -1)
  {
    swift_once();
  }

  v36 = static UITraitCollection.Traits.displayScale;
  v37 = qword_27EEE9C90;
  v7 = one-time initialization token for sizeCategory;

  if (v7 != -1)
  {
    swift_once();
  }

  v38 = static UITraitCollection.Traits.sizeCategory;
  v39 = qword_27EEE9CC0;
  v8 = one-time initialization token for browserLayoutConfiguration;

  if (v8 != -1)
  {
    swift_once();
  }

  v40 = static UITraitCollection.Traits.browserLayoutConfiguration;
  v41 = qword_27EEE9D38;

  _StringGuts.grow(_:)(18);

  *v31 = 0x6172287469617254;
  *&v31[8] = 0xEF3A65756C615677;
  v30[0] = 0;
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v9);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  v10 = *v31;
  *v31 = 0;
  *&v31[8] = v10;

  specialized OptionSet<>.insert(_:)(v30, v32, *(&v32 + 1), v33);

  v12 = *(&v34 + 1);
  v11 = v35;
  v13 = v34;

  specialized OptionSet<>.insert(_:)(v30, v13, v12, v11);

  v15 = *(&v36 + 1);
  v14 = v37;
  v16 = v36;

  specialized OptionSet<>.insert(_:)(v30, v16, v15, v14);

  v18 = *(&v38 + 1);
  v17 = v39;
  v19 = v38;

  specialized OptionSet<>.insert(_:)(v30, v19, v18, v17);

  v21 = *(&v40 + 1);
  v20 = v41;
  v22 = v40;

  specialized OptionSet<>.insert(_:)(v30, v22, v21, v20);

  swift_arrayDestroy();
  v23 = *(v2 + 552);
  v24 = *(a1 + 552);
  switch(v23)
  {
    case 4:
      if (v24 != 4)
      {
        goto LABEL_25;
      }

      break;
    case 3:
      if (v24 != 3)
      {
        goto LABEL_25;
      }

      break;
    case 2:
      if (v24 != 2)
      {
        goto LABEL_25;
      }

      break;
    default:
      if ((v24 - 2) < 3)
      {
LABEL_25:

LABEL_26:
        v28 = 0;
        return v28 & 1;
      }

      break;
  }

  if (*(v2 + 568) != *(a1 + 568) || *(v2 + 576) != *(a1 + 576))
  {
    goto LABEL_25;
  }

  v25 = *(a1 + 560);
  v26 = v25;
  v27 = UITraitCollection.doc_hasChanged(_:comparesTo:)(v31, v25);

  v28 = v27 ^ 1;
  return v28 & 1;
}

uint64_t DOCItemCollectionLayoutTraits.producesIdenticalGridLayoutTraits(comparedTo:)(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_5;
  }

  v3 = *(*v1 + 160);

  v5 = v1;
  v6 = v3(&v27, v4);
  (*(*a1 + 160))(&v16, v6);
  v7 = specialized static DOCItemCollectionLayoutTraits.GridTraits.== infix(_:_:)(&v27, &v16);
  v38[4] = v20;
  v38[5] = v21;
  v38[6] = v22;
  v39 = v23;
  v38[0] = v16;
  v38[1] = v17;
  v38[2] = v18;
  v38[3] = v19;
  outlined destroy of DOCItemCollectionLayoutTraits.GridTraits(v38);
  v40[4] = v31;
  v40[5] = v32;
  v40[6] = v33;
  v41 = v34;
  v40[0] = v27;
  v40[1] = v28;
  v40[2] = v29;
  v40[3] = v30;
  v8 = outlined destroy of DOCItemCollectionLayoutTraits.GridTraits(v40);
  if ((v7 & 1) == 0)
  {

LABEL_5:
    v10 = 0;
    return v10 & 1;
  }

  v9 = (*(*v5 + 184))(v14, v8);
  (*(*a1 + 184))(v12, v9);
  v10 = specialized static DOCItemCollectionLayoutTraits.GridItemTraits.== infix(_:_:)(v14, v12);

  v24 = v12[8];
  v25 = v12[9];
  v26[0] = v13[0];
  *(v26 + 9) = *(v13 + 9);
  v20 = v12[4];
  v21 = v12[5];
  v22 = v12[6];
  v23 = v12[7];
  v16 = v12[0];
  v17 = v12[1];
  v18 = v12[2];
  v19 = v12[3];
  outlined destroy of DOCItemCollectionLayoutTraits.GridItemTraits(&v16);
  v35 = v14[8];
  v36 = v14[9];
  v37[0] = v15[0];
  *(v37 + 9) = *(v15 + 9);
  v31 = v14[4];
  v32 = v14[5];
  v33 = v14[6];
  v34 = v14[7];
  v27 = v14[0];
  v28 = v14[1];
  v29 = v14[2];
  v30 = v14[3];
  outlined destroy of DOCItemCollectionLayoutTraits.GridItemTraits(&v27);
  return v10 & 1;
}

uint64_t DOCItemCollectionLayoutTraits.producesIdenticalListLayoutTraits(comparedTo:)(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = *(*v1 + 232);

  v5 = v3(&v18, v4);
  v6 = v18;
  v7 = v19;
  v8 = (*(*a1 + 232))(&v16, v5);
  if (v6 != v16 || ((v7 ^ v17) & 1) != 0)
  {

LABEL_6:
    v10 = 0;
    return v10 & 1;
  }

  v9 = (*(*v1 + 256))(v13, v8);
  (*(*a1 + 256))(v12, v9);
  v10 = specialized static DOCItemCollectionLayoutTraits.ListItemTraits.== infix(_:_:)(v13, v12);

  v14[4] = v12[4];
  v14[5] = v12[5];
  v14[6] = v12[6];
  v14[7] = v12[7];
  v14[0] = v12[0];
  v14[1] = v12[1];
  v14[2] = v12[2];
  v14[3] = v12[3];
  outlined destroy of DOCItemCollectionLayoutTraits.ListItemTraits(v14);
  v15[4] = v13[4];
  v15[5] = v13[5];
  v15[6] = v13[6];
  v15[7] = v13[7];
  v15[0] = v13[0];
  v15[1] = v13[1];
  v15[2] = v13[2];
  v15[3] = v13[3];
  outlined destroy of DOCItemCollectionLayoutTraits.ListItemTraits(v15);
  return v10 & 1;
}

uint64_t CGSize.hash(into:)(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x24C1FCC00](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x24C1FCC00](*&v3);
}

uint64_t specialized static DOCItemCollectionLayoutTraits.ListItemTraits.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v30 = *(a1 + 32);
  v4 = *(a1 + 88);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v28 = *(a1 + 40);
  v29 = *(a1 + 56);
  v26 = *(a2 + 40);
  v27 = *(a2 + 56);
  v24 = *(a2 + 80);
  v25 = *(a1 + 80);
  v8 = *(a2 + 88);
  v22 = *(a1 + 96);
  v23 = *(a1 + 112);
  v20 = *(a2 + 96);
  v21 = *(a2 + 112);
  type metadata accessor for NSObject();
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    v10 = 0;
    return v10 & 1;
  }

  v9 = static NSObject.== infix(_:_:)();
  v10 = 0;
  if (v9)
  {
    v11 = (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v28, v26), vceqq_f64(v29, v27)), xmmword_249BC08F0)) & 0xF) != 0 || v2 != v6;
    v12 = v11 || v3 != v5;
    if (!v12 && v30 == v7)
    {
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
      if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
      {

        v10 = 0;
        if (v25 != v24)
        {
          return v10 & 1;
        }
      }

      else
      {
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v10 = 0;
        if ((v19 & 1) == 0 || v25 != v24)
        {
          return v10 & 1;
        }
      }

      if (v4 == v8)
      {
        v10 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v22, v20), vceqq_f64(v23, v21))));
      }
    }
  }

  return v10 & 1;
}

uint64_t specialized static DOCItemCollectionLayoutTraits.GridTraits.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    v4 = *(a1 + 32);
    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    v20 = *(a1 + 104);
    v21 = *(a1 + 64);
    v7 = *(a2 + 32);
    v9 = *(a2 + 40);
    v8 = *(a2 + 48);
    v10 = *(a2 + 64);
    v17 = *(a1 + 72);
    v18 = *(a1 + 88);
    v15 = *(a2 + 72);
    v16 = *(a2 + 88);
    v19 = *(a2 + 104);
    v13 = *(a2 + 112);
    v14 = *(a1 + 112);
    type metadata accessor for NSObject();
    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
      return 0;
    }

    v11 = static NSObject.== infix(_:_:)();
    result = 0;
    if ((v11 & 1) == 0 || v4 != v7 || v6 != v9 || v5 != v8)
    {
      return result;
    }

    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
      return 0;
    }

    result = 0;
    if (v21 == v10 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v17, v15), vceqq_f64(v18, v16)), xmmword_249BC08F0)) & 0xF) == 0 && v20 == v19)
    {
      return v14 ^ v13 ^ 1u;
    }
  }

  return result;
}

uint64_t specialized static DOCItemCollectionLayoutTraits.GridItemTraits.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v25 = *(a1 + 32);
  v27 = *(a1 + 73);
  v28 = *(a1 + 72);
  v11 = *(a1 + 144);
  v9 = *(a1 + 184);
  v3 = *(a2 + 8);
  v24 = *(a2 + 32);
  v31 = *(a1 + 40);
  v32 = *(a1 + 56);
  v29 = *(a2 + 40);
  v30 = *(a2 + 56);
  v4 = *(a2 + 72);
  v26 = *(a2 + 73);
  v22 = *(a1 + 112);
  v23 = *(a1 + 128);
  v20 = *(a1 + 96);
  v21 = *(a2 + 128);
  v18 = *(a1 + 80);
  v19 = *(a2 + 112);
  v16 = *(a2 + 80);
  v17 = *(a2 + 96);
  v10 = *(a2 + 144);
  v14 = *(a1 + 152);
  v15 = *(a1 + 168);
  v12 = *(a2 + 152);
  v13 = *(a2 + 168);
  v8 = *(a2 + 184);
  type metadata accessor for NSObject();
  v5 = static NSObject.== infix(_:_:)();
  result = 0;
  if ((v5 & 1) != 0 && v2 == v3)
  {
    if (static NSObject.== infix(_:_:)())
    {
      v7 = static NSObject.== infix(_:_:)();
      result = 0;
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v31, v29), vceqq_f64(v32, v30))))) & 1) == 0 && (v7 & 1) != 0 && ((v28 ^ v4) & 1) == 0 && ((v27 ^ v26) & 1) == 0 && v25 == v24)
      {
        result = 0;
        if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(v18, v16), vceqq_f64(v20, v17)), vuzp1q_s32(vceqq_f64(v22, v19), vceqq_f64(v23, v21))))) & 1) != 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v14, v12), vceqq_f64(v15, v13)), xmmword_249BC08F0)) & 0xF) == 0 && v11 == v10)
        {
          return v9 ^ v8 ^ 1u;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void outlined consume of DOCItemCollectionLayoutTraits.GridTraits?(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (a3)
  {
  }
}

unint64_t lazy protocol witness table accessor for type DOCItemCollectionLayoutTraits.ItemStatusBadgeTraits and conformance DOCItemCollectionLayoutTraits.ItemStatusBadgeTraits()
{
  result = lazy protocol witness table cache variable for type DOCItemCollectionLayoutTraits.ItemStatusBadgeTraits and conformance DOCItemCollectionLayoutTraits.ItemStatusBadgeTraits;
  if (!lazy protocol witness table cache variable for type DOCItemCollectionLayoutTraits.ItemStatusBadgeTraits and conformance DOCItemCollectionLayoutTraits.ItemStatusBadgeTraits)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemCollectionLayoutTraits.ItemStatusBadgeTraits and conformance DOCItemCollectionLayoutTraits.ItemStatusBadgeTraits);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCItemCollectionLayoutTraits.ListItemTraits and conformance DOCItemCollectionLayoutTraits.ListItemTraits()
{
  result = lazy protocol witness table cache variable for type DOCItemCollectionLayoutTraits.ListItemTraits and conformance DOCItemCollectionLayoutTraits.ListItemTraits;
  if (!lazy protocol witness table cache variable for type DOCItemCollectionLayoutTraits.ListItemTraits and conformance DOCItemCollectionLayoutTraits.ListItemTraits)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemCollectionLayoutTraits.ListItemTraits and conformance DOCItemCollectionLayoutTraits.ListItemTraits);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCItemCollectionLayoutTraits.PopoverDisplayMode and conformance DOCItemCollectionLayoutTraits.PopoverDisplayMode()
{
  result = lazy protocol witness table cache variable for type DOCItemCollectionLayoutTraits.PopoverDisplayMode and conformance DOCItemCollectionLayoutTraits.PopoverDisplayMode;
  if (!lazy protocol witness table cache variable for type DOCItemCollectionLayoutTraits.PopoverDisplayMode and conformance DOCItemCollectionLayoutTraits.PopoverDisplayMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemCollectionLayoutTraits.PopoverDisplayMode and conformance DOCItemCollectionLayoutTraits.PopoverDisplayMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCItemCollectionRowStyle and conformance DOCItemCollectionRowStyle()
{
  result = lazy protocol witness table cache variable for type DOCItemCollectionRowStyle and conformance DOCItemCollectionRowStyle;
  if (!lazy protocol witness table cache variable for type DOCItemCollectionRowStyle and conformance DOCItemCollectionRowStyle)
  {
    type metadata accessor for DOCItemCollectionRowStyle(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemCollectionRowStyle and conformance DOCItemCollectionRowStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCItemCollectionSizeClassOrientation and conformance DOCItemCollectionSizeClassOrientation()
{
  result = lazy protocol witness table cache variable for type DOCItemCollectionSizeClassOrientation and conformance DOCItemCollectionSizeClassOrientation;
  if (!lazy protocol witness table cache variable for type DOCItemCollectionSizeClassOrientation and conformance DOCItemCollectionSizeClassOrientation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemCollectionSizeClassOrientation and conformance DOCItemCollectionSizeClassOrientation);
  }

  return result;
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DOCItemCollectionLayoutTraits.GridTraits(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCItemCollectionLayoutTraits.GridTraits(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy185_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DOCItemCollectionLayoutTraits.GridItemTraits(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 185))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCItemCollectionLayoutTraits.GridItemTraits(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 184) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 185) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 185) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCItemCollectionLayoutTraits.ListTraits(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCItemCollectionLayoutTraits.ListTraits(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for DOCItemCollectionLayoutTraits.ListItemTraits(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCItemCollectionLayoutTraits.ListItemTraits(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_26DocumentManagerExecutables13DOCGridLayoutVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for DOCItemCollectionLayoutTraits.GridSpecContext(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 288))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCItemCollectionLayoutTraits.GridSpecContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 288) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static DOCAnalyticsAPIAbuseEvent.renameAPI(hostIdentifier:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *a4 = 0xD000000000000032;
  *(a4 + 8) = 0x8000000249BD45F0;
  *(a4 + 32) = a1;
  *(a4 + 40) = a2;
  *(a4 + 48) = v4;
}

uint64_t static DOCAnalyticsAPIAbuseEvent.createDocumentSPI(hostIdentifier:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *a4 = 0xD00000000000003ALL;
  *(a4 + 8) = 0x8000000249BD45B0;
  *(a4 + 32) = a1;
  *(a4 + 40) = a2;
  *(a4 + 48) = v4;
}

uint64_t static DOCAnalyticsAPIAbuseEvent.importDocumentSPI(hostIdentifier:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *a4 = 0xD00000000000003ALL;
  *(a4 + 8) = 0x8000000249BD4570;
  *(a4 + 32) = a1;
  *(a4 + 40) = a2;
  *(a4 + 48) = v4;
}

uint64_t DOCAnalyticsAPIAbuseEvent.name.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t (*DOCAnalyticsAPIAbuseEvent.propertiesBuilder.getter())()
{
  v1 = *(v0 + 16);
  v6[0] = *v0;
  v6[1] = v1;
  v6[2] = *(v0 + 32);
  v7 = *(v0 + 48);
  v2 = swift_allocObject();
  v3 = *(v0 + 16);
  *(v2 + 16) = *v0;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v0 + 32);
  *(v2 + 64) = *(v0 + 48);
  outlined init with copy of DOCAnalyticsAPIAbuseEvent(v6, v5);
  return partial apply for implicit closure #2 in implicit closure #1 in DOCAnalyticsAPIAbuseEvent.propertiesBuilder.getter;
}

unint64_t implicit closure #2 in implicit closure #1 in DOCAnalyticsAPIAbuseEvent.propertiesBuilder.getter(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9FA70;
  strcpy((inited + 32), "hostIdentifier");
  *(inited + 47) = -18;
  *(inited + 48) = MEMORY[0x24C1FAD20](v1, v2);
  *(inited + 56) = 1701869940;
  *(inited + 64) = 0xE400000000000000;
  *(inited + 72) = Int._bridgeToObjectiveC()();
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd);
  swift_arrayDestroy();
  return v4;
}

uint64_t DOCAnalyticsAPIAbuseEvent.bundleID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DOCAnalyticsAPIAbuseEvent.bundleID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t DOCAnalyticsAPIAbuseEvent.hostIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t (*protocol witness for DOCAnalyticsEventProtocol.propertiesBuilder.getter in conformance DOCAnalyticsAPIAbuseEvent())()
{
  v1 = *(v0 + 16);
  v6[0] = *v0;
  v6[1] = v1;
  v6[2] = *(v0 + 32);
  v7 = *(v0 + 48);
  v2 = swift_allocObject();
  v3 = *(v0 + 16);
  *(v2 + 16) = *v0;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v0 + 32);
  *(v2 + 64) = *(v0 + 48);
  outlined init with copy of DOCAnalyticsAPIAbuseEvent(v6, v5);
  return implicit closure #2 in implicit closure #1 in DOCAnalyticsAPIAbuseEvent.propertiesBuilder.getterpartial apply;
}

DocumentManagerExecutables::DOCAnalyticsAPIAbuseEvent::EventType_optional __swiftcall DOCAnalyticsAPIAbuseEvent.EventType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t lazy protocol witness table accessor for type DOCAnalyticsAPIAbuseEvent.EventType and conformance DOCAnalyticsAPIAbuseEvent.EventType()
{
  result = lazy protocol witness table cache variable for type DOCAnalyticsAPIAbuseEvent.EventType and conformance DOCAnalyticsAPIAbuseEvent.EventType;
  if (!lazy protocol witness table cache variable for type DOCAnalyticsAPIAbuseEvent.EventType and conformance DOCAnalyticsAPIAbuseEvent.EventType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCAnalyticsAPIAbuseEvent.EventType and conformance DOCAnalyticsAPIAbuseEvent.EventType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCAnalyticsAPIAbuseEvent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCAnalyticsAPIAbuseEvent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroyTm_18()
{

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

id specialized DOCNode.fpfs_syncFetchFPItem()()
{
  v6[1] = *MEMORY[0x277D85DE8];
  result = [v0 fpfs_fpItem];
  if (!result)
  {
    v6[0] = 0;
    v2 = [v0 syncFetchFPItem_];
    v3 = v6[0];
    if (v2)
    {
      return v2;
    }

    else
    {
      v4 = v3;
      v5 = _convertNSErrorToError(_:)();

      swift_willThrow();
      return 0;
    }
  }

  return result;
}

{

  return sub_2494091E0();
}

void thunk for @escaping @callee_guaranteed (@guaranteed FIOperation, @guaranteed [FINode]) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = a2;
  v3();
}

id thunk for @escaping @callee_guaranteed (@guaranteed FIOperation, @guaranteed FIOperationError) -> (@owned FIOperationReply?)(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v7 = a3;
  v8 = v5(v6, v7);

  return v8;
}

void *makeDOCArchiveOperation(nodes:destinationFolder:undoManager:)(unint64_t a1, uint64_t a2, void *a3)
{
  swift_getObjectType();

  return specialized makeDOCArchiveOperation(nodes:destinationFolder:undoManager:)(a1, a2, a3);
}

uint64_t DOC_FIArchiveOperation.__allocating_init(nodes:destinationFolder:undoManager:)(unint64_t a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  swift_getObjectType();

  return specialized DOC_FIArchiveOperation.init(nodes:destinationFolder:undoManager:)(a1, a2, a3, v7);
}

id (*protocol witness for SomeArchiveOperation.archiveFormat.modify in conformance DOCArchiveOperation(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 archiveFormat];
  return protocol witness for SomeArchiveOperation.archiveFormat.modify in conformance DOCArchiveOperation;
}

uint64_t (*protocol witness for SomeArchiveOperation.progressHandler.modify in conformance DOCArchiveOperation(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0xD0))();
  return protocol witness for SomeOperation.actionCompletionBlock.modify in conformance FPActionOperation;
}

uint64_t (*protocol witness for SomeArchiveOperation.archivedNode.modify in conformance DOCArchiveOperation(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0x90))();
  return protocol witness for DOCFileOperationsProviding.didUpdateInProgressFileOperationsHandler.modify in conformance DOCFileProviderSyncStateProvider;
}

uint64_t (*protocol witness for SomeArchiveOperation.archiveCompletionBlock.getter in conformance DOCArchiveOperation())()
{
  result = [v0 archiveCompletionBlock];
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    return thunk for @escaping @callee_unowned @convention(block) (@unowned FPItem?, @unowned NSError?) -> ()partial apply;
  }

  return result;
}

void protocol witness for SomeArchiveOperation.archiveCompletionBlock.setter in conformance DOCArchiveOperation(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
    v4[3] = &block_descriptor_82_1;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 setArchiveCompletionBlock_];
  _Block_release(v3);
}

uint64_t (*protocol witness for SomeArchiveOperation.archiveCompletionBlock.modify in conformance DOCArchiveOperation(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = FPArchiveOperation.archiveCompletionBlock.modify(v2);
  return protocol witness for SomeOperation.actionCompletionBlock.modify in conformance FPActionOperation;
}

void (*FPArchiveOperation.archiveCompletionBlock.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v2;
  v6 = [v2 archiveCompletionBlock];
  if (v6)
  {
    v7 = v6;
    v6 = swift_allocObject();
    v6[2] = v7;
    v8 = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSItemProviderWriting?, @unowned NSError?) -> ();
  }

  else
  {
    v8 = 0;
  }

  *(v5 + 48) = v8;
  *(v5 + 56) = v6;
  return FPArchiveOperation.archiveCompletionBlock.modify;
}

void FPArchiveOperation.archiveCompletionBlock.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {
    if (v3)
    {
      v4 = v2[7];
      v2[4] = v3;
      v2[5] = v4;
      *v2 = MEMORY[0x277D85DD0];
      v2[1] = 1107296256;
      v2[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
      v2[3] = &block_descriptor_73_2;
      v5 = _Block_copy(v2);
    }

    else
    {
      v5 = 0;
    }

    [v2[8] setArchiveCompletionBlock_];
    _Block_release(v5);
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v2[6]);
  }

  else
  {
    if (v3)
    {
      v6 = v2[7];
      v2[4] = v3;
      v2[5] = v6;
      *v2 = MEMORY[0x277D85DD0];
      v2[1] = 1107296256;
      v2[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
      v2[3] = &block_descriptor_76_2;
      v7 = _Block_copy(v2);
    }

    else
    {
      v7 = 0;
    }

    [v2[8] setArchiveCompletionBlock_];
    _Block_release(v7);
  }

  free(v2);
}

uint64_t (*protocol witness for SomeArchiveOperation.archiveFormat.modify in conformance DOC_FIArchiveOperation(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0xC8))();
  return protocol witness for SomeOperation.actionCompletionBlock.modify in conformance FPActionOperation;
}

uint64_t (*protocol witness for SomeArchiveOperation.progressHandler.modify in conformance DOC_FIArchiveOperation(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0x178))();
  return protocol witness for SomeOperation.actionCompletionBlock.modify in conformance FPActionOperation;
}

uint64_t (*protocol witness for SomeArchiveOperation.archivedNode.modify in conformance DOC_FIArchiveOperation(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0xB0))();
  return protocol witness for SomeOperation.actionCompletionBlock.modify in conformance FPActionOperation;
}

uint64_t (*protocol witness for SomeArchiveOperation.archiveCompletionBlock.modify in conformance DOC_FIArchiveOperation(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0xE0))();
  return protocol witness for SomeOperation.actionCompletionBlock.modify in conformance FPActionOperation;
}

uint64_t (*protocol witness for SomeOperation.actionCompletionBlock.modify in conformance DOC_FIArchiveOperation(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0xF8))();
  return protocol witness for SomeOperation.actionCompletionBlock.modify in conformance FPActionOperation;
}

uint64_t (*protocol witness for SomeOperation.qualityOfService.modify in conformance DOC_FIArchiveOperation(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0x110))();
  return protocol witness for SomeOperation.actionCompletionBlock.modify in conformance FPActionOperation;
}

uint64_t DOC_FIArchiveOperation.archivedNode.getter()
{
  return DOC_FIArchiveOperation.archivedNode.getter();
}

{
  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t DOC_FIArchiveOperation.archiveFormat.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOC_FIArchiveOperation_archiveFormat;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOC_FIArchiveOperation.archiveFormat.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOC_FIArchiveOperation_archiveFormat;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for DOC_FIArchiveOperation.archiveCompletionBlock : DOC_FIArchiveOperation@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD0))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed DOCDocumentSource?, @guaranteed Error?) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOC_FIArchiveOperation.archiveCompletionBlock : DOC_FIArchiveOperation(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCRenameOperation, @in_guaranteed DOCNode?) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0xD8);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return v7(v6, v5);
}

uint64_t key path getter for DOC_FIArchiveOperation.actionCompletionBlock : DOC_FIArchiveOperation@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xE8))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = _ss5Error_pSgIegg_ABytIegnr_TRTA_0;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOC_FIArchiveOperation.actionCompletionBlock : DOC_FIArchiveOperation(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCBackdropConfiguration) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0xF0);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return v7(v6, v5);
}

id DOC_FIArchiveOperation.qualityOfService.getter()
{
  result = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOC_FIArchiveOperation_fiOperation);
  if (result)
  {
    return [result qualityOfService];
  }

  __break(1u);
  return result;
}

id DOC_FIArchiveOperation.qualityOfService.setter(uint64_t a1)
{
  result = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOC_FIArchiveOperation_fiOperation);
  if (result)
  {
    return [result setQualityOfService_];
  }

  __break(1u);
  return result;
}

void *DOC_FIArchiveOperation.qualityOfService.modify(void *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOC_FIArchiveOperation_fiOperation;
  a1[1] = v1;
  a1[2] = v3;
  result = *(v1 + v3);
  if (result)
  {
    *a1 = [result qualityOfService];
    return DOC_FIDeleteOperation.qualityOfService.modify;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall DOC_FIArchiveOperation.schedule()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOC_FIArchiveOperation_fiOperation);
  if (v1)
  {
    [v1 schedule];
  }
}

uint64_t DOC_FIArchiveOperation.init(nodes:destinationFolder:undoManager:)(unint64_t a1, uint64_t a2, void *a3)
{
  swift_getObjectType();

  return specialized DOC_FIArchiveOperation.init(nodes:destinationFolder:undoManager:)(a1, a2, a3, v3);
}

void DOC_FIArchiveOperation.setUpCallbacks()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOC_FIArchiveOperation_fiOperation);
  if (v1)
  {
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = partial apply for closure #1 in DOC_FIArchiveOperation.setUpCallbacks();
    v12 = v2;
    v7 = MEMORY[0x277D85DD0];
    v8 = 1107296256;
    v9 = thunk for @escaping @callee_guaranteed (@guaranteed FIOperation, @guaranteed [FINode]) -> ();
    v10 = &block_descriptor_40_5;
    v3 = _Block_copy(&v7);
    v4 = v1;

    [v4 setCompletionHandler_];
    _Block_release(v3);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = partial apply for closure #2 in DOC_FIArchiveOperation.setUpCallbacks();
    v12 = v5;
    v7 = MEMORY[0x277D85DD0];
    v8 = 1107296256;
    v9 = thunk for @escaping @callee_guaranteed (@guaranteed FIOperation, @guaranteed FIOperationError) -> (@owned FIOperationReply?);
    v10 = &block_descriptor_44_8;
    v6 = _Block_copy(&v7);

    [v4 setErrorHandler_];
    _Block_release(v6);
  }
}

void closure #1 in DOC_FIArchiveOperation.setUpCallbacks()(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = MEMORY[0x277D85000];
    v6 = (*((*MEMORY[0x277D85000] & *Strong) + 0xD0))();
    if (v6)
    {
      v7 = v6;
      if (a2 >> 62)
      {
        goto LABEL_10;
      }

      if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        do
        {
          if ((a2 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x24C1FC540](0, a2);
          }

          else
          {
            if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return;
            }

            v8 = *(a2 + 32);
          }

          v9 = v8;
          a2 = specialized DOCNode.fpfs_syncFetchFPItem()();

          if (a2)
          {
            goto LABEL_12;
          }

          __break(1u);
LABEL_10:
          ;
        }

        while (__CocoaSet.count.getter());
      }

      a2 = 0;
LABEL_12:
      v7(a2, 0);
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v7);
    }

    v10 = (*((*v5 & *v4) + 0xE8))();
    if (v10)
    {
      v11 = v10;
      v10(0);
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v11);
    }
  }
}

id closure #2 in DOC_FIArchiveOperation.setUpCallbacks()(int a1, id a2)
{
  v2 = [a2 error];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = MEMORY[0x277D85000];
    v6 = (*((*MEMORY[0x277D85000] & *Strong) + 0xD0))();
    if (v6)
    {
      v7 = v6;
      v8 = v2;
      v7(0, v2);
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v7);
    }

    v9 = (*((*v5 & *v4) + 0xE8))();
    if (v9)
    {
      v10 = v9;
      v11 = v2;
      v10(v2);
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v10);
    }

    v12 = objc_allocWithZone(MEMORY[0x277D04718]);
    v13 = v2;
    v14 = _convertErrorToNSError(_:)();

    v15 = [v12 initWithResolution:5 error:v14];
  }

  else
  {
    v16 = objc_allocWithZone(MEMORY[0x277D04718]);
    v17 = v2;
    v14 = _convertErrorToNSError(_:)();

    v15 = [v16 initWithResolution:5 error:v14];
  }

  return v15;
}

id DOC_FIArchiveOperation.actionNameForUndoing.getter()
{
  result = _DocumentManagerBundle();
  if (!result)
  {
    goto LABEL_16;
  }

  v2 = result;
  v22._object = 0x8000000249C00AC0;
  v3._countAndFlagsBits = 0x1000000000000027;
  v3._object = 0x8000000249C00A70;
  v4._object = 0x8000000249C00AA0;
  v22._countAndFlagsBits = 0xD00000000000003CLL;
  v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v5.value._object = 0xEB00000000656C62;
  v4._countAndFlagsBits = 0x1000000000000011;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v5, v2, v4, v22);

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v6 = result;
  v23._object = 0x8000000249C00B30;
  v7._object = 0x8000000249C00B00;
  v23._countAndFlagsBits = 0xD000000000000042;
  v7._countAndFlagsBits = 0xD000000000000028;
  v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v8.value._object = 0xEB00000000656C62;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v23);

  v10 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOC_FIArchiveOperation_nodes);
  if (!(v10 >> 62))
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = result;
    if (result)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = __CocoaSet.count.getter();
  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_5:
  if ((v10 & 0xC000000000000001) != 0)
  {
LABEL_14:
    v12 = MEMORY[0x24C1FC540](0, v10);
    goto LABEL_8;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = *(v10 + 32);
  swift_unknownObjectRetain();
LABEL_8:
  v13 = [v12 displayName];
  swift_unknownObjectRelease();
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (v11 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_249B9A480;
    *(v17 + 56) = MEMORY[0x277D837D0];
    *(v17 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v17 + 32) = v14;
    *(v17 + 40) = v16;
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v19 = swift_allocObject();
    v20 = MEMORY[0x277D83B88];
    *(v19 + 16) = xmmword_249B9A480;
    v21 = MEMORY[0x277D83C10];
    *(v19 + 56) = v20;
    *(v19 + 64) = v21;
    *(v19 + 32) = v11;
  }

  v18 = static String.localizedStringWithFormat(_:_:)();

  return v18;
}

void *DOC_FIArchiveOperation.operationForRedoing()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOC_FIArchiveOperation_nodes);
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOC_FIArchiveOperation_destinationFolder);
  v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOC_FIArchiveOperation_undoManager);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v4 = specialized makeDOCArchiveOperation(nodes:destinationFolder:undoManager:)(v1, v2, v3);
  swift_unknownObjectRelease();
  return v4;
}

void *DOC_FIArchiveOperation.operationForUndoing()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0xA0))();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_249BA0290;
  *(v4 + 32) = v3;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFF8) + 1;
  }

  v6 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOC_FIArchiveOperation_undoManager);
  v7 = type metadata accessor for DOCDeleteOperation();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDeleteOperation_items] = v5;
  *&v8[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDeleteOperation_originalOperation] = v0;
  *&v8[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDeleteOperation_undoManager] = v6;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  v9 = v6;
  v10 = v0;
  v11 = v9;
  v12 = v10;
  swift_unknownObjectRetain();

  isa = Array._bridgeToObjectiveC()().super.isa;

  v18.receiver = v8;
  v18.super_class = v7;
  v14 = objc_msgSendSuper2(&v18, sel_initWithItems_, isa);

  v15 = *((*v1 & *v14) + 0x88);
  v16 = v14;
  v15();
  swift_unknownObjectRelease();

  return v14;
}

uint64_t key path getter for DOC_FIArchiveOperation.progressHandler : DOC_FIArchiveOperation@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x168))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = thunk for @escaping @callee_guaranteed (@unowned Double) -> ()partial apply;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOC_FIArchiveOperation.progressHandler : DOC_FIArchiveOperation(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed Double) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0x170);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return v7(v6, v5);
}

Swift::Void __swiftcall DOC_FIArchiveOperation.startObservingProgress()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOC_FIArchiveOperation_fiOperation);
  if (v2)
  {
    v5 = [v2 progress];
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOC_FIArchiveOperation_progressObservation);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOC_FIArchiveOperation_progressObservation) = v3;
}

void closure #1 in DOC_FIArchiveOperation.startObservingProgress()(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = MEMORY[0x277D85000];
    v5 = (*((*MEMORY[0x277D85000] & *Strong) + 0x168))();
    if (v5)
    {
      v6 = v5;
      v5([v1 fractionCompleted]);
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6);
    }

    if ([v1 isFinished])
    {
      (*((*v4 & *v3) + 0x1A0))();
    }
  }
}

id DOC_FIArchiveOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t DOC_FIArchiveOperation.archivedNode.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
  return swift_unknownObjectRelease();
}

void *DOCArchiveOperation.init(items:destinationFolder:undoManager:)(uint64_t a1, void *a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCArchiveOperation_archivedNode] = 0;
  v6 = &v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCArchiveOperation_progressHandler];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCArchiveOperation_progressObservation] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCArchiveOperation_items] = a1;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCArchiveOperation_destinationFolder] = a2;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCArchiveOperation_undoManager] = a3;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);

  v7 = a2;
  v8 = a3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v14.receiver = v3;
  v14.super_class = type metadata accessor for DOCArchiveOperation();
  v10 = objc_msgSendSuper2(&v14, sel_initWithItems_destinationFolder_, isa, v7);

  v11 = *((*MEMORY[0x277D85000] & *v10) + 0xB8);
  v12 = v10;
  v11();

  return v12;
}

id @objc DOC_FIArchiveOperation.actionNameForUndoing.getter(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  if (v7)
  {
    v8 = MEMORY[0x24C1FAD20](v5, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id DOCArchiveOperation.actionNameForUndoing.getter()
{
  result = _DocumentManagerBundle();
  if (!result)
  {
    goto LABEL_16;
  }

  v2 = result;
  v23._object = 0x8000000249C00AC0;
  v3._countAndFlagsBits = 0x1000000000000027;
  v3._object = 0x8000000249C00A70;
  v4._object = 0x8000000249C00AA0;
  v23._countAndFlagsBits = 0xD00000000000003CLL;
  v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v5.value._object = 0xEB00000000656C62;
  v4._countAndFlagsBits = 0x1000000000000011;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v5, v2, v4, v23);

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v6 = result;
  v24._object = 0x8000000249C00B30;
  v7._object = 0x8000000249C00B00;
  v24._countAndFlagsBits = 0xD000000000000042;
  v7._countAndFlagsBits = 0xD000000000000028;
  v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v8.value._object = 0xEB00000000656C62;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v24);

  v10 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCArchiveOperation_items);
  if (!(v10 >> 62))
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = result;
    if (result)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = __CocoaSet.count.getter();
  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_5:
  if ((v10 & 0xC000000000000001) != 0)
  {
LABEL_14:
    v12 = MEMORY[0x24C1FC540](0, v10);
    goto LABEL_8;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = *(v10 + 32);
LABEL_8:
  v13 = v12;
  v14 = [v12 displayName];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v11 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_249B9A480;
    *(v18 + 56) = MEMORY[0x277D837D0];
    *(v18 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v18 + 32) = v15;
    *(v18 + 40) = v17;
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D83B88];
    *(v20 + 16) = xmmword_249B9A480;
    v22 = MEMORY[0x277D83C10];
    *(v20 + 56) = v21;
    *(v20 + 64) = v22;
    *(v20 + 32) = v11;
  }

  v19 = static String.localizedStringWithFormat(_:_:)();

  return v19;
}

void *DOCArchiveOperation.operationForRedoing()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCArchiveOperation_items);
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCArchiveOperation_destinationFolder);
  v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCArchiveOperation_undoManager);
  v4 = objc_allocWithZone(type metadata accessor for DOCArchiveOperation());

  v5 = DOCArchiveOperation.init(items:destinationFolder:undoManager:)(v1, v2, v3);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v10[4] = partial apply for closure #1 in DOCArchiveOperation.operationForRedoing();
  v10[5] = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
  v10[3] = &block_descriptor_176;
  v7 = _Block_copy(v10);
  v8 = v5;

  [v8 setArchiveCompletionBlock_];
  _Block_release(v7);

  return v8;
}

unint64_t DOCArchiveOperation.operationForUndoing()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x80))();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249BA0290;
  *(inited + 32) = v3;
  swift_unknownObjectRetain();
  result = specialized Array<A>.fpfs_syncFetchAllFPItems()(inited);
  if (result)
  {
    v6 = result;
    swift_setDeallocating();
    swift_arrayDestroy();
    v7 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCArchiveOperation_undoManager);
    v8 = type metadata accessor for DOCDeleteOperation();
    v9 = objc_allocWithZone(v8);
    *&v9[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDeleteOperation_items] = v6;
    *&v9[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDeleteOperation_originalOperation] = v0;
    *&v9[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDeleteOperation_undoManager] = v7;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    v10 = v7;
    v11 = v0;
    v12 = v10;
    v13 = v11;

    isa = Array._bridgeToObjectiveC()().super.isa;

    v18.receiver = v9;
    v18.super_class = v8;
    v15 = objc_msgSendSuper2(&v18, sel_initWithItems_, isa);

    v16 = *((*v1 & *v15) + 0x88);
    v17 = v15;
    v16();
    swift_unknownObjectRelease();

    return v15;
  }

  __break(1u);
  return result;
}

uint64_t key path getter for DOCArchiveOperation.progressHandler : DOCArchiveOperation@<X0>(void **a1@<X0>, uint64_t (**a2)(double *a1)@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xC0))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@unowned Double) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOCArchiveOperation.progressHandler : DOCArchiveOperation(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Double) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0xC8);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return v7(v6, v5);
}

uint64_t DOC_FIArchiveOperation.archiveCompletionBlock.getter(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t DOC_FIArchiveOperation.archiveCompletionBlock.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

Swift::Void __swiftcall DOCArchiveOperation.startObservingProgress()()
{
  v1 = v0;
  v4 = [v0 progress];
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v3 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCArchiveOperation_progressObservation];
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCArchiveOperation_progressObservation] = v2;
}

void closure #1 in DOCArchiveOperation.startObservingProgress()(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = MEMORY[0x277D85000];
    v5 = (*((*MEMORY[0x277D85000] & *Strong) + 0xC0))();
    if (v5)
    {
      v6 = v5;
      v5([v1 fractionCompleted]);
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6);
    }

    if ([v1 isFinished])
    {
      (*((*v4 & *v3) + 0xF8))();
    }
  }
}

void DOC_FIArchiveOperation.stopObservingProgress()(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(v1 + *a1);
  if (v4)
  {
    v5 = v4;
    dispatch thunk of NSKeyValueObservation.invalidate()();

    v6 = *(v2 + v3);
  }

  else
  {
    v6 = 0;
  }

  *(v2 + v3) = 0;
}

id DOCArchiveOperation.__allocating_init(items:destinationFolder:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithItems:isa destinationFolder:a2];

  return v6;
}

id DOC_FIArchiveOperation.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *specialized makeDOCArchiveOperation(nodes:destinationFolder:undoManager:)(unint64_t a1, uint64_t a2, void *a3)
{
  if ([objc_opt_self() useFIOperations])
  {
    v6 = objc_allocWithZone(type metadata accessor for DOC_FIArchiveOperation());

    v7 = a3;
    swift_unknownObjectRetain();
    return specialized DOC_FIArchiveOperation.init(nodes:destinationFolder:undoManager:)(a1, a2, v7, v6);
  }

  else
  {
    result = specialized Array<A>.fpfs_syncFetchAllFPItems()(a1);
    if (result)
    {
      v9 = result;
      v10 = DOCNode.fpfs_syncFetchFPItem()();
      if (v10)
      {
        v11 = v10;
        objc_allocWithZone(type metadata accessor for DOCArchiveOperation());
        return DOCArchiveOperation.init(items:destinationFolder:undoManager:)(v9, v11, a3);
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

uint64_t specialized DOC_FIArchiveOperation.init(nodes:destinationFolder:undoManager:)(unint64_t a1, uint64_t a2, void *a3, char *a4)
{
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables22DOC_FIArchiveOperation_archivedNode] = 0;
  v6 = &a4[OBJC_IVAR____TtC26DocumentManagerExecutables22DOC_FIArchiveOperation_archiveCompletionBlock];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &a4[OBJC_IVAR____TtC26DocumentManagerExecutables22DOC_FIArchiveOperation_actionCompletionBlock];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &unk_27EEF2000;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables22DOC_FIArchiveOperation_fiOperation] = 0;
  v9 = &a4[OBJC_IVAR____TtC26DocumentManagerExecutables22DOC_FIArchiveOperation_progressHandler];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables22DOC_FIArchiveOperation_progressObservation] = 0;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables22DOC_FIArchiveOperation_nodes] = a1;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables22DOC_FIArchiveOperation_destinationFolder] = a2;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables22DOC_FIArchiveOperation_archiveFormat] = 0;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables22DOC_FIArchiveOperation_undoManager] = a3;
  v31.receiver = a4;
  v31.super_class = type metadata accessor for DOC_FIArchiveOperation();

  swift_unknownObjectRetain();
  v10 = a3;
  v11 = objc_msgSendSuper2(&v31, sel_init);
  v12 = a1 >> 62;
  if (a1 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_19:
    v24 = v11;
    goto LABEL_20;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_19;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v30 = v11;
    MEMORY[0x24C1FC540](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_34;
    }

    v14 = v11;
    swift_unknownObjectRetain();
  }

  swift_getObjectType();
  v15 = DOCNode.isFINode.getter();
  swift_unknownObjectRelease();
  if (v15)
  {
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v17 = v16;
      if (v12)
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);

        swift_unknownObjectRetain();
        _bridgeCocoaArray<A>(_:)();
        swift_bridgeObjectRelease_n();
      }

      else
      {

        swift_unknownObjectRetain();
        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
        if (swift_dynamicCastMetatype())
        {
        }

        else
        {
          v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v18)
          {
            v19 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
            do
            {
              objc_opt_self();
              if (!swift_dynamicCastObjCClass())
              {
                break;
              }

              v19 += 8;
              --v18;
            }

            while (v18);
          }

          v8 = &unk_27EEF2000;
        }
      }

      v20 = [v17 fileOpNode];
      v21 = objc_allocWithZone(MEMORY[0x277D046B8]);
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
      v22.super.isa = Array._bridgeToObjectiveC()().super.isa;

      v23 = [v21 initWithSourceNodes:v22.super.isa destinationFolder:v20];
      swift_unknownObjectRelease();
      goto LABEL_30;
    }
  }

LABEL_20:
  if (v12)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    if (!swift_dynamicCastMetatype())
    {
      v25 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
        v26 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
        while (1)
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            break;
          }

          v26 += 8;
          if (!--v25)
          {
            v8 = &unk_27EEF2000;
            goto LABEL_28;
          }
        }

        v8 = &unk_27EEF2000;
      }
    }
  }

LABEL_28:
  result = DOCNode.fpfs_syncFetchFPItem()();
  if (result)
  {
    v20 = result;

    v27 = objc_allocWithZone(MEMORY[0x277D046B8]);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    v22.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v23 = [v27 initWithSourceItems:v22.super.isa destinationItem:v20];
LABEL_30:

    v28 = v8[332];
    v29 = *(v11 + v28);
    *(v11 + v28) = v23;

    DOC_FIArchiveOperation.setUpCallbacks()();
    (*((*MEMORY[0x277D85000] & *v11) + 0x160))();

    swift_unknownObjectRelease();
    return v11;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in DOCArchiveOperation.operationForRedoing()(void *a1)
{
  v3 = *((*MEMORY[0x277D85000] & **(v1 + 16)) + 0x88);
  v4 = a1;
  return v3(a1);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Double) -> (@out ())(double a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

void *static DOCDocumentLandingBackdrop.newRenderingView(installedInto:configuration:appearance:)(void *a1, void *a2, void *a3)
{
  if (_UISolariumEnabled())
  {
    if (one-time initialization token for doc_documentLandingBackground != -1)
    {
      swift_once();
    }

    v6 = static _UIVisualEffectViewBackdropCaptureGroup.doc_documentLandingBackground;
    objc_allocWithZone(type metadata accessor for DOCGlassRenderingBackdropView());
  }

  else
  {
    if (one-time initialization token for doc_documentLandingBackground != -1)
    {
      swift_once();
    }

    v6 = static _UIVisualEffectViewBackdropCaptureGroup.doc_documentLandingBackground;
    *(objc_allocWithZone(type metadata accessor for DOCSystemMaterialRenderingBackdropView()) + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_A397DAF1FBE49C7792848C44869BBD3E38DOCSystemMaterialRenderingBackdropView_topView) = 0;
  }

  v7 = a3;
  v8 = v6;
  v9 = specialized DOCDocumentLandingBackdropView.init(configuration:captureGroup:appearance:)(a2, v8, a3);

  v10 = v9;
  [v10 setAutoresizingMask_];
  [a1 bounds];
  [v10 setFrame_];
  [a1 insertSubview:v10 atIndex:0];

  return v10;
}

void one-time initialization function for doc_documentLandingBackground()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D763E8]) init];
  v1 = MEMORY[0x24C1FAD20](0xD000000000000014, 0x8000000249C00ED0);
  [v0 setGroupName_];

  v2 = MEMORY[0x24C1FAD20](0xD000000000000019, 0x8000000249BCB9D0);
  [v0 setGroupNamespace_];

  static _UIVisualEffectViewBackdropCaptureGroup.doc_documentLandingBackground = v0;
}

void DOCDocumentLandingBackdropView.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_A397DAF1FBE49C7792848C44869BBD3E30DOCDocumentLandingBackdropView_appearance);
}

void DOCGlassRenderingBackdropView.setup()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D763C8]) init];
  [v1 setRenderMode_];
  [v1 setCaptureGroup_];
  [v0 addSubview_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = DOCConstraintsToResizeWithSuperview();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  }

  v4 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 activateConstraints_];
}

void DOCSystemMaterialRenderingBackdropView.setup()()
{
  v1 = [objc_opt_self() effectWithStyle_];
  v2 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  v3 = [v2 _captureGroup];
  v4 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_A397DAF1FBE49C7792848C44869BBD3E30DOCDocumentLandingBackdropView_captureGroup];
  v5 = [v4 groupName];
  [v3 setGroupName_];

  v6 = [v2 _captureGroup];
  v7 = [v4 groupNamespace];
  [v6 setGroupNamespace_];

  v8 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v8 setAlpha_];
  v9 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249BA1010;
  *(inited + 32) = v2;
  *(inited + 40) = v8;
  v18 = v2;
  v11 = v8;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_9;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

  for (i = v18; ; i = MEMORY[0x24C1FC540](0, inited))
  {
    v13 = i;
    [v0 bounds];
    [v13 setFrame_];
    [v13 setAutoresizingMask_];
    [v0 addSubview_];

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v14 = *(inited + 40);
      goto LABEL_7;
    }

LABEL_8:
    __break(1u);
LABEL_9:
    ;
  }

  v14 = MEMORY[0x24C1FC540](1, inited);
LABEL_7:
  v15 = v14;
  [v0 bounds];
  [v15 setFrame_];
  [v15 setAutoresizingMask_];
  [v0 addSubview_];

  swift_setDeallocating();
  swift_arrayDestroy();
  v16 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_A397DAF1FBE49C7792848C44869BBD3E38DOCSystemMaterialRenderingBackdropView_topView];
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_A397DAF1FBE49C7792848C44869BBD3E38DOCSystemMaterialRenderingBackdropView_topView] = v11;
  v17 = v11;

  DOCSystemMaterialRenderingBackdropView.applyColors()();
  DOCSystemMaterialRenderingBackdropView.applyColors()();
}

void DOCSystemMaterialRenderingBackdropView.applyColors()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_A397DAF1FBE49C7792848C44869BBD3E38DOCSystemMaterialRenderingBackdropView_topView);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_A397DAF1FBE49C7792848C44869BBD3E30DOCDocumentLandingBackdropView_appearance);
    v3 = v1;
    v4 = v2;
    [v4 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCAppearance);
    swift_dynamicCast();
    v5 = v20;
    [v20 setForceClearBackground_];
    v6 = [v20 backgroundColor];
    [v3 setBackgroundColor_];

    v7 = [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_A397DAF1FBE49C7792848C44869BBD3E30DOCDocumentLandingBackdropView_configuration) hostIdentifier];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (v8 == 0xD000000000000028 && 0x8000000249C00E40 == v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v12 = [objc_opt_self() standardUserDefaults];
    v13 = NSUserDefaults.BOOL(forKey:valueIfKeyNotPresent:)(0xD000000000000014, 0x8000000249C00E70, v11 & 1);

    if (v13)
    {
      v14 = [v3 layer];
      v15 = [objc_opt_self() orangeColor];
      v16 = [v15 CGColor];

      [v14 setBorderColor_];
      v17 = [v3 layer];
      [v17 setBorderWidth_];

      v18 = [v3 layer];
      [v18 setCornerRadius_];

      v19 = [v3 layer];
      [v19 setMaskedCorners_];

      v3 = v20;
      v5 = v19;
    }
  }
}

uint64_t NSUserDefaults.BOOL(forKey:valueIfKeyNotPresent:)(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v7 = MEMORY[0x24C1FAD20]();
  v8 = [v3 objectForKey_];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v11, v12);
    outlined destroy of Any?(v12);
    v9 = MEMORY[0x24C1FAD20](a1, a2);
    a3 = [v3 BOOLForKey_];
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    outlined destroy of Any?(v12);
  }

  return a3 & 1;
}

id DOCDocumentLandingBackdropView.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *specialized DOCDocumentLandingBackdropView.init(configuration:captureGroup:appearance:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = [objc_allocWithZone(MEMORY[0x277D05EA0]) init];
  }

  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_A397DAF1FBE49C7792848C44869BBD3E30DOCDocumentLandingBackdropView_configuration] = a1;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_A397DAF1FBE49C7792848C44869BBD3E30DOCDocumentLandingBackdropView_captureGroup] = a2;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_A397DAF1FBE49C7792848C44869BBD3E30DOCDocumentLandingBackdropView_appearance] = v9;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for DOCDocumentLandingBackdropView();
  v10 = a3;
  v11 = a1;
  v12 = a2;
  v13 = v9;
  v14 = objc_msgSendSuper2(&v20, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v15 = *((*MEMORY[0x277D85000] & *v14) + 0x88);
  v16 = v14;
  v15();
  v18 = 0;
  v19 = 1;
  UIView.registerForTabSwitcherTraitChanges<A>(options:_:)(&v18, specialized closure #1 in DOCDocumentLandingBackdropView.init(configuration:captureGroup:appearance:), 0, ObjectType);
  swift_unknownObjectRelease();

  return v16;
}

uint64_t UIViewController._prefersLargeTitles(forLocation:)(void *a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 6)
  {
    v5 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo27DOCDocumentSourceIdentifieraGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249B9FA70;
    v7 = *MEMORY[0x277D060F8];
    *(inited + 32) = *MEMORY[0x277D060F8];
    v8 = *MEMORY[0x277D05DC0];
    *(inited + 40) = *MEMORY[0x277D05DC0];
    v9 = v7;
    v10 = v8;
    v11 = [a1 sourceIdentifier];
    v12 = [a1 originalSourceIdentifier];
    v14 = v12;
    if (!v12)
    {
      v12 = MEMORY[0x24C1FAD20](0, 0xE000000000000000);
      v14 = v12;
    }

    v20 = v11;
    MEMORY[0x28223BE20](v12, v13);
    v19 = &v20;
    v15 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v18, inited);
    if (v15)
    {

      swift_setDeallocating();
      type metadata accessor for DOCDocumentSourceIdentifier(0);
      swift_arrayDestroy();
      v5 = 1;
    }

    else
    {
      v20 = v14;
      MEMORY[0x28223BE20](v15, v16);
      v19 = &v20;
      v5 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v18, inited);

      swift_setDeallocating();
      type metadata accessor for DOCDocumentSourceIdentifier(0);
      swift_arrayDestroy();
    }
  }

  return v5 & 1;
}

char *UIViewController.doc_largeNavigationTitleOptions(for:configuration:)(void *a1, void *a2)
{
  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = a1;
  if (([a2 isInUIPDocumentLanding] & 1) != 0 || (UIViewController._prefersLargeTitles(forLocation:)(v4) & 1) == 0)
  {

    return MEMORY[0x277D84F90];
  }

  v5 = [a2 hostBundleTitle];
  if (v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v10 = [v2 splitViewController];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 doc_splitViewState];

    v13 = [v12 isSidebarShownInline];
    v14 = [a2 isFilesApp];
    if (v13)
    {
LABEL_15:

      goto LABEL_16;
    }
  }

  else
  {
    v14 = [a2 isFilesApp];
  }

  v15 = v14;
  if ([a2 isPickerUI] & 1) != 0 || (v15)
  {
    goto LABEL_15;
  }

  if (!v8)
  {

    goto LABEL_17;
  }

  v25 = [v4 displayNameComposedWithLocalizedAppName_];

  if (v25)
  {
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v31 = *(v29 + 2);
    v30 = *(v29 + 3);
    v32 = v30 >> 1;
    v33 = v31 + 1;
    if (v30 >> 1 <= v31)
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v29);
      v30 = *(v29 + 3);
      v32 = v30 >> 1;
    }

    *(v29 + 2) = v33;
    v34 = &v29[16 * v31];
    *(v34 + 4) = v26;
    *(v34 + 5) = v28;
    if (v32 < (v31 + 2))
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 2, 1, v29);
    }

    *(v29 + 2) = v31 + 2;
    v16 = v29;
    v35 = &v29[16 * v33];
    *(v35 + 4) = v6;
    *(v35 + 5) = v8;
    goto LABEL_18;
  }

LABEL_16:

LABEL_17:
  v16 = MEMORY[0x277D84F90];
LABEL_18:
  v17 = [v4 displayName];
  if (v17)
  {
    v18 = v17;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
    }

    v23 = *(v16 + 2);
    v22 = *(v16 + 3);
    if (v23 >= v22 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v16);
    }

    result = v16;
    *(v16 + 2) = v23 + 1;
    v24 = &v16[16 * v23];
    *(v24 + 4) = v19;
    *(v24 + 5) = v21;
  }

  else
  {

    return v16;
  }

  return result;
}

uint64_t specialized Sequence.contains(where:)(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = (a1 + 32);
  while (1)
  {
    v6 = *v4;
    v4 += 32;
    v5 = v6;
    if (!*(a2 + 1))
    {
      if (v5 == 10)
      {
        return 1;
      }

      goto LABEL_4;
    }

    v7 = *a2;
    if (v5 == 10)
    {
      if (v7 == 10)
      {
        return 1;
      }

      goto LABEL_4;
    }

    if (v7 == 10)
    {
      goto LABEL_4;
    }

    if (v5 <= 4)
    {
      break;
    }

    if (v5 <= 6)
    {
      if (v5 == 5)
      {
        v11 = 1684957547;
      }

      else
      {
        v11 = 0x7942646572616873;
      }

      if (v5 == 5)
      {
        v12 = 0xE400000000000000;
      }

      else
      {
        v12 = 0xE800000000000000;
      }

      if (*a2 > 4u)
      {
        goto LABEL_59;
      }
    }

    else
    {
      if (v5 == 7)
      {
        v11 = 0x6E6F697461657263;
        v16 = 1702125892;
      }

      else
      {
        if (v5 == 8)
        {
          v12 = 0xE900000000000064;
          v11 = 0x6564644165746164;
          if (*a2 > 4u)
          {
            goto LABEL_59;
          }

          goto LABEL_26;
        }

        v11 = 0x745364756F6C6369;
        v16 = 1937077345;
      }

      v12 = v16 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      if (*a2 > 4u)
      {
        goto LABEL_59;
      }
    }

LABEL_26:
    if (*a2 <= 1u)
    {
      if (*a2)
      {
        v15 = 0x646573557473616CLL;
      }

      else
      {
        v15 = 0xD000000000000010;
      }

      if (*a2)
      {
        v14 = 0xEC00000065746144;
      }

      else
      {
        v14 = 0x8000000249BC5DF0;
      }

      if (v11 == v15)
      {
        goto LABEL_76;
      }
    }

    else if (v7 == 2)
    {
      v14 = 0xE400000000000000;
      if (v11 == 1701667182)
      {
        goto LABEL_76;
      }
    }

    else
    {
      if (v7 == 3)
      {
        v13 = 1936154996;
      }

      else
      {
        v13 = 1702521203;
      }

      v14 = 0xE400000000000000;
      if (v11 == v13)
      {
        goto LABEL_76;
      }
    }

LABEL_77:
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v22)
    {
      return 1;
    }

LABEL_4:
    if (!--v2)
    {
      return 0;
    }
  }

  v8 = 1936154996;
  if (v5 != 3)
  {
    v8 = 1702521203;
  }

  if (v5 == 2)
  {
    v8 = 1701667182;
  }

  v9 = 0x646573557473616CLL;
  if (!v5)
  {
    v9 = 0xD000000000000010;
  }

  v10 = 0xEC00000065746144;
  if (!v5)
  {
    v10 = 0x8000000249BC5DF0;
  }

  if (v5 <= 1)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  if (v5 <= 1)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  if (*a2 <= 4u)
  {
    goto LABEL_26;
  }

LABEL_59:
  v17 = 0x6564644165746164;
  if (v7 != 8)
  {
    v17 = 0x745364756F6C6369;
  }

  v18 = 0xE900000000000064;
  if (v7 != 8)
  {
    v18 = 0xEC00000073757461;
  }

  if (v7 == 7)
  {
    v17 = 0x6E6F697461657263;
    v18 = 0xEC00000065746144;
  }

  v19 = 1684957547;
  if (v7 != 5)
  {
    v19 = 0x7942646572616873;
  }

  v20 = 0xE800000000000000;
  if (v7 == 5)
  {
    v20 = 0xE400000000000000;
  }

  if (*a2 <= 6u)
  {
    v21 = v19;
  }

  else
  {
    v21 = v17;
  }

  if (*a2 <= 6u)
  {
    v14 = v20;
  }

  else
  {
    v14 = v18;
  }

  if (v11 != v21)
  {
    goto LABEL_77;
  }

LABEL_76:
  if (v12 != v14)
  {
    goto LABEL_77;
  }

  return 1;
}

uint64_t DOCItemCollectionViewController.bestTargetNode(for:)(unint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v1) + 0xC70))();
  result = (*((*v4 & *v1) + 0xBD8))();
  if (result != 2)
  {
    return v5;
  }

  v7 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_48;
  }

  v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    return v5;
  }

  while (1)
  {
    v36 = v5;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x24C1FC540](0, a1);
      v9 = v10;
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        return result;
      }

      v9 = *(a1 + 32);
      v10 = swift_unknownObjectRetain();
    }

    v38 = *((*v4 & *v2) + 0x820);
    result = v38(v40, v10);
    v11 = v41;
    if (!v41)
    {
      goto LABEL_56;
    }

    v12 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    v13 = (*(v12 + 112))(v9, v11, v12);
    if (!v13)
    {
      break;
    }

    v14 = v13;
    __swift_destroy_boxed_opaque_existential_0(v40);
    if ((v8 & 0x8000000000000000) != 0)
    {
      v15 = 10;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v8 >= 0xA)
      {
        v15 = 10;
      }

      else
      {
        v15 = v8;
      }

      if (!v7)
      {
LABEL_14:
        result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_19;
      }
    }

    result = __CocoaSet.count.getter();
    if (result < 0)
    {
      goto LABEL_53;
    }

    result = __CocoaSet.count.getter();
LABEL_19:
    v39 = v14;
    if (result < v15)
    {
      goto LABEL_54;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v16 = 0;
      do
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
        _ArrayBuffer._typeCheckSlowPath(_:)(v16++);
      }

      while (v15 != v16);
    }

    if (v7)
    {

      _CocoaArrayWrapper.subscript.getter();
      v18 = v19;
      v17 = v20;
      v15 = v21 >> 1;
    }

    else
    {
      v17 = 0;
      v18 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    }

    swift_unknownObjectRetain();
    v5 = v15 - v17;
    if (v15 == v17)
    {
LABEL_27:
      swift_unknownObjectRelease_n();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v39;
    }

    if (v15 <= v17)
    {
      v22 = v17;
    }

    else
    {
      v22 = v15;
    }

    v7 = v22 - v17;
    v4 = (v18 + 8 * v17);
    v23 = &selRef_initWithFrame_;
    v37 = v2;
    while (v7)
    {
      v24 = *v4;
      v25 = swift_unknownObjectRetain();
      result = v38(v40, v25);
      v26 = v41;
      if (!v41)
      {
        goto LABEL_55;
      }

      v27 = v42;
      __swift_project_boxed_opaque_existential_1(v40, v41);
      v28 = (*(v27 + 112))(v24, v26, v27);
      if (v28)
      {
        v29 = [v28 v23[93]];
        swift_unknownObjectRelease();
      }

      else
      {
        v29 = 0;
      }

      __swift_destroy_boxed_opaque_existential_0(v40);
      v30 = [v39 v23[93]];
      v31 = v30;
      if (!v29)
      {

        swift_unknownObjectRelease_n();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
LABEL_45:
        swift_unknownObjectRelease();
        return v36;
      }

      v32 = v23;
      a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;
      if (a1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v34 == v35)
      {

        swift_unknownObjectRelease();
      }

      else
      {
        a1 = _stringCompareWithSmolCheck(_:_:expecting:)();

        swift_unknownObjectRelease();

        if ((a1 & 1) == 0)
        {
          swift_unknownObjectRelease_n();
          swift_unknownObjectRelease();
          goto LABEL_45;
        }
      }

      --v7;
      ++v4;
      --v5;
      v23 = v32;
      v2 = v37;
      if (!v5)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_48:
    result = __CocoaSet.count.getter();
    v8 = result;
    if (!result)
    {
      return v5;
    }
  }

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v40);
  return v36;
}

id DOCItemCollectionViewController.multiSelectionOpenAction.getter()
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0xAE8))();
  if (result)
  {
    v2 = result;
    v3 = [result effectiveFullBrowser];

    LODWORD(v2) = [v3 allowsPickingMultipleItems];
    if (!v2)
    {
      return 0;
    }

    v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
    if ([v4 forPickingFoldersOnly] & 1) != 0 || (objc_msgSend(v4, sel_forSavingDocuments))
    {
      return 0;
    }

    else
    {
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v6 = specialized static UIDocumentBrowserAction.multipleSelectionAction(resolvedHandler:)(partial apply for closure #1 in DOCItemCollectionViewController.multiSelectionOpenAction.getter, v5);

      return v6;
    }
  }

  return result;
}

void DOCItemCollectionViewController.pickerIsLoadingIndicatorView.getter()
{
  v0 = DOCItemCollectionViewController.pickerIsLoadingIndicatorItem.getter();
  v1 = [v0 customView];

  if (v1)
  {
    objc_opt_self();

    swift_dynamicCastObjCClassUnconditional();
  }

  else
  {
    __break(1u);
  }
}

id DOCItemCollectionViewController.traitCollectionForBarLayout.getter()
{
  v1 = [v0 splitViewController];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = [v3 fullDocumentManagerViewController];

      if (v4)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCFullDocumentManagerViewController);
  v5 = [v0 parentViewController];
  if (v5)
  {
    v6 = v5;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    while (([v6 isKindOfClass_] & 1) == 0)
    {
      v8 = [v6 parentViewController];

      v6 = v8;
      if (!v8)
      {
        goto LABEL_10;
      }
    }

    objc_opt_self();
    v4 = swift_dynamicCastObjCClassUnconditional();
  }

  else
  {
LABEL_10:
    v9 = [v0 viewIfLoaded];
    v10 = [v9 window];

    v4 = [v10 rootViewController];
    if (!v4)
    {
      v11 = 0;
LABEL_14:
      v12 = [v0 traitCollection];
      goto LABEL_15;
    }
  }

LABEL_13:
  v11 = v4;
  v12 = [v11 traitCollection];

  if (!v12)
  {
    goto LABEL_14;
  }

LABEL_15:

  return v12;
}

uint64_t DOCItemCollectionViewController.splitContainerHasEnoughSpaceToTileSidebar.getter()
{
  v1 = [v0 splitViewController];
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  v3 = UISplitViewController.hasEnoughRoomToTileSidebar.getter();

  return v3 & 1;
}

uint64_t DOCItemCollectionViewController.pickerSupportsMultipleSelection.getter()
{
  result = [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) forPickingDocuments];
  if (result)
  {
    result = DOCItemCollectionViewController.multiSelectionOpenAction.getter();
    if (result)
    {

      return 1;
    }
  }

  return result;
}

Swift::Void __swiftcall DOCItemCollectionViewController.updateToolBarItems()()
{
  v1 = v0;
  v2 = [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) isPickerUI];
  v3 = MEMORY[0x277D85000];
  if (v2 & 1) == 0 || ((*((*MEMORY[0x277D85000] & *v0) + 0x148))())
  {
    v4 = (*((*v3 & *v0) + 0xBC0))();
    if ((v4 - 2) < 3u || (v4 & 1) == 0)
    {
      v5 = objc_opt_self();
      v6 = [v5 modernToolbar];
      v7 = [v6 isEnabled];

      if (v7)
      {
        v8 = ![v1 isEditing] || ((*((*v3 & *v1) + 0x148))() & 1) != 0 || !DOCItemCollectionViewController.useCompactBarOverlayLayout()();
        v9 = [v1 navigationController];
        if (v9)
        {
          v10 = v8;
          v11 = v9;
          [v9 setToolbarHidden:v10 animated:0];
        }
      }

      if (DOCItemCollectionViewController.useCompactBarOverlayLayout()() || ((*((*v3 & *v1) + 0x148))() & 1) != 0 || (v12 = [v5 modernToolbar], v13 = objc_msgSend(v12, sel_isEnabled), v12, (v13 & 1) == 0))
      {
        v14 = (*((*v3 & *v1) + 0xD0))();
        if (v14)
        {
          v16 = v15;
          ObjectType = swift_getObjectType();
          v25[3] = type metadata accessor for DOCItemCollectionViewController(0);
          v25[0] = v1;
          v18 = v1;
          v19 = DOCItemCollectionViewController.createToolbarButtons(imagesOnly:)(0);
          (*(v16 + 8))(v25, v19, 2, 0, ObjectType, v16);

          swift_unknownObjectRelease();
          v14 = __swift_destroy_boxed_opaque_existential_0(v25);
        }
      }

      if (((*((*v3 & *v1) + 0x148))(v14) & 1) != 0 && ([v1 doc_isAppearing] & 1) == 0)
      {
        v20 = [v1 navigationController];
        if (v20)
        {
          v21 = v20;
          v22 = (*((*v3 & *v1) + 0x1338))(v20);
          if (v22 >> 62)
          {
            v23 = __CocoaSet.count.getter();
          }

          else
          {
            v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          [v21 setToolbarHidden:v23 == 0 animated:{0, v25[0]}];
        }

        v24 = (*((*v3 & *v1) + 0xAE8))();
        [v24 updateTabBarVisibility];
      }
    }
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.dismissViewOptionsIfNeeded()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x1948))();
  if (v2)
  {
    v8 = v2;
    v3 = [v2 doc_hasAppearedOrIsAppearing];
    v4 = v8;
    if (v3)
    {
      v5 = DOCItemCollectionViewController.displayModeButton.getter();
      v6 = [v5 _doc_ipi_view];

      if (v6 && (v7 = [v6 window], v6, v7))
      {

        v4 = v7;
      }

      else
      {
        [v8 dismissViewControllerAnimated:0 completion:0];
        (*((*v1 & *v0) + 0x1950))(0);
        v4 = v8;
      }
    }
  }
}

double DOCItemCollectionViewController.BBIStorage.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  v0[5] = 0u;
  v0[6] = 0u;
  v0[7] = 0u;
  v0[8] = 0u;
  v0[9] = 0u;
  v0[10] = 0u;
  v0[11] = 0u;
  return result;
}

char *DOCItemCollectionViewController.getAvailableGroupingBehaviors(shouldInsertNoneOption:)(char a1)
{
  v3 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v1) + 0xF20))() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = (*((*v3 & *v1) + 0xA68))();
  v5 = (*((*v3 & *v4) + 0x218))();

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 32);
    v8 = MEMORY[0x277D84F90];
    do
    {
      v10 = *v7++;
      v9 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      }

      v12 = *(v8 + 2);
      v11 = *(v8 + 3);
      if (v12 >= v11 >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v8);
      }

      *(v8 + 2) = v12 + 1;
      v8[v12 + 32] = v9;
      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v13 = *(v8 + 2);
  if (!v13)
  {

    return MEMORY[0x277D84F90];
  }

  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v13 >= *(v8 + 3) >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v13 + 1, 1, v8);
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, 10);
  }

  return v8;
}

void __swiftcall DOCItemCollectionViewController.createGroupBySubmenuForSectionHeader()(UIMenu_optional *__return_ptr retstr)
{
  (*((*MEMORY[0x277D85000] & *v1) + 0xCE8))(&var1);
  if (var1 != 10)
  {

    DOCItemCollectionViewController.groupBySubmenu(withNoneOption:options:)(0, 0);
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.sortOption(changeTo:)(DocumentManagerExecutables::DOCItemSortMode changeTo)
{
  v2 = *changeTo;
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0xA68))();
  v5 = (*((*v3 & *v4) + 0x1D0))();

  v6 = *(v5 + 16);
  if (v6)
  {
    v63 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v7 = 32;
    v8 = v63;
    do
    {
      v59 = *(v5 + v7);
      DOCItemSortDescriptor.init(type:isReversed:)(&v59, 0, &v60);
      v9 = v60;
      v10 = v61;
      v11 = v62;
      v63 = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        v56 = v61;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v10 = v56;
        v8 = v63;
      }

      *(v8 + 16) = v13 + 1;
      v14 = v8 + 32 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v10;
      *(v14 + 56) = v11;
      ++v7;
      --v6;
    }

    while (v6);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  LOBYTE(v16) = v54;
  (*((*MEMORY[0x277D85000] & *v54) + 0x1160))(&v60, v15);
  v17 = v61;
  if (v61)
  {
    v5 = v60;
    LOBYTE(v16) = v62;
    if (specialized == infix<A>(_:_:)(v2, v60))
    {

      if (one-time initialization token for UI != -1)
      {
LABEL_110:
        swift_once();
      }

      v18 = 0xEC00000065746144;
      static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_249B9FA70;
      *(v19 + 56) = type metadata accessor for DOCItemCollectionViewController(0);
      *(v19 + 64) = lazy protocol witness table accessor for type DOCItemCollectionViewController and conformance NSObject(&lazy protocol witness table cache variable for type DOCItemCollectionViewController and conformance NSObject, type metadata accessor for DOCItemCollectionViewController);
      *(v19 + 32) = v54;
      if (v2 > 4)
      {
        if (v2 <= 6)
        {
          if (v2 == 5)
          {
            v18 = 0xE400000000000000;
            v20 = 1684957547;
          }

          else
          {
            v18 = 0xE800000000000000;
            v20 = 0x7942646572616873;
          }
        }

        else if (v2 == 7)
        {
          v20 = 0x6E6F697461657263;
        }

        else if (v2 == 8)
        {
          v20 = 0x6564644165746164;
          v18 = 0xE900000000000064;
        }

        else
        {
          v20 = 0x745364756F6C6369;
          v18 = 0xEC00000073757461;
        }
      }

      else if (v2 <= 1)
      {
        if (v2)
        {
          v20 = 0x646573557473616CLL;
        }

        else
        {
          v18 = 0x8000000249BC5DF0;
          v20 = 0xD000000000000010;
        }
      }

      else
      {
        v18 = 0xE400000000000000;
        if (v2 == 2)
        {
          v20 = 1701667182;
        }

        else if (v2 == 3)
        {
          v20 = 1936154996;
        }

        else
        {
          v20 = 1702521203;
        }
      }

      *(v19 + 96) = MEMORY[0x277D837D0];
      *(v19 + 104) = lazy protocol witness table accessor for type String and conformance String();
      *(v19 + 72) = v20;
      *(v19 + 80) = v18;
      v46 = v54;
      os_log(_:dso:log:type:_:)();

      outlined consume of DOCItemSortDescriptor?(v5, v17);
      LOBYTE(v63) = v5;
      DOCItemSortDescriptor.init(type:isReversed:)(&v63, (v16 & 1) == 0, &v60);
      v47 = v60;
      v48 = v61;
      v49 = v62;
      if (!(*((*MEMORY[0x277D85000] & *v46) + 0x100))())
      {
        goto LABEL_107;
      }

      v51 = v50;
      ObjectType = swift_getObjectType();
      LOBYTE(v60) = v47;
      v61 = v48;
      v62 = v49;
      (*(v51 + 8))(&v60, ObjectType, v51);

LABEL_106:

      v53 = swift_unknownObjectRelease();
      goto LABEL_108;
    }

    outlined consume of DOCItemSortDescriptor?(v5, v17);
  }

  v55 = *(v8 + 16);
  if (!v55)
  {
LABEL_81:

    return;
  }

  v21 = 0;
  v22 = (v8 + 56);
  while (1)
  {
    if (v21 >= *(v8 + 16))
    {
      __break(1u);
      goto LABEL_110;
    }

    v23 = *(v22 - 24);
    if (v23 > 4)
    {
      if (*(v22 - 24) <= 6u)
      {
        if (v23 == 5)
        {
          v27 = 1684957547;
        }

        else
        {
          v27 = 0x7942646572616873;
        }

        if (v23 == 5)
        {
          v16 = 0xE400000000000000;
        }

        else
        {
          v16 = 0xE800000000000000;
        }

        if (v2 <= 4)
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v23 == 7)
        {
          v27 = 0x6E6F697461657263;
          v31 = 1702125892;
        }

        else
        {
          if (v23 == 8)
          {
            v27 = 0x6564644165746164;
            v16 = 0xE900000000000064;
            if (v2 <= 4)
            {
              goto LABEL_36;
            }

            goto LABEL_61;
          }

          v27 = 0x745364756F6C6369;
          v31 = 1937077345;
        }

        v16 = v31 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v2 <= 4)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      v24 = 1936154996;
      if (v23 != 3)
      {
        v24 = 1702521203;
      }

      if (v23 == 2)
      {
        v24 = 1701667182;
      }

      v25 = 0xD000000000000010;
      if (*(v22 - 24))
      {
        v25 = 0x646573557473616CLL;
      }

      v26 = 0xEC00000065746144;
      if (!*(v22 - 24))
      {
        v26 = 0x8000000249BC5DF0;
      }

      if (*(v22 - 24) <= 1u)
      {
        v27 = v25;
      }

      else
      {
        v27 = v24;
      }

      if (*(v22 - 24) <= 1u)
      {
        v16 = v26;
      }

      else
      {
        v16 = 0xE400000000000000;
      }

      if (v2 <= 4)
      {
LABEL_36:
        if (v2 <= 1)
        {
          v29 = 0x646573557473616CLL;
          v30 = 0xEC00000065746144;
          if (!v2)
          {
            v29 = 0xD000000000000010;
            v30 = 0x8000000249BC5DF0;
          }
        }

        else
        {
          v28 = 1936154996;
          if (v2 != 3)
          {
            v28 = 1702521203;
          }

          if (v2 == 2)
          {
            v29 = 1701667182;
          }

          else
          {
            v29 = v28;
          }

          v30 = 0xE400000000000000;
        }

        goto LABEL_77;
      }
    }

LABEL_61:
    v32 = 0x745364756F6C6369;
    if (v2 == 8)
    {
      v32 = 0x6564644165746164;
    }

    v33 = 0xEC00000073757461;
    if (v2 == 8)
    {
      v33 = 0xE900000000000064;
    }

    if (v2 == 7)
    {
      v32 = 0x6E6F697461657263;
      v33 = 0xEC00000065746144;
    }

    v34 = 0x7942646572616873;
    if (v2 == 5)
    {
      v34 = 1684957547;
    }

    v35 = 0xE400000000000000;
    if (v2 != 5)
    {
      v35 = 0xE800000000000000;
    }

    v29 = v2 <= 6 ? v34 : v32;
    v30 = v2 <= 6 ? v35 : v33;
LABEL_77:
    v5 = *(v22 - 2);
    v17 = *(v22 - 1);
    v36 = *v22;
    if (v27 == v29 && v16 == v30)
    {
      break;
    }

    v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v57)
    {
      goto LABEL_89;
    }

    ++v21;

    v22 += 32;
    if (v55 == v21)
    {
      goto LABEL_81;
    }
  }

LABEL_89:

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_249B9FA70;
  *(v37 + 56) = type metadata accessor for DOCItemCollectionViewController(0);
  *(v37 + 64) = lazy protocol witness table accessor for type DOCItemCollectionViewController and conformance NSObject(&lazy protocol witness table cache variable for type DOCItemCollectionViewController and conformance NSObject, type metadata accessor for DOCItemCollectionViewController);
  *(v37 + 32) = v54;
  LOBYTE(v60) = v23;
  *&v61 = v5;
  *(&v61 + 1) = v17;
  v62 = v36;
  v38 = v54;

  v58 = v36;
  v39 = String.init<A>(describing:)();
  v41 = v40;
  *(v37 + 96) = MEMORY[0x277D837D0];
  *(v37 + 104) = lazy protocol witness table accessor for type String and conformance String();
  *(v37 + 72) = v39;
  *(v37 + 80) = v41;
  os_log(_:dso:log:type:_:)();

  if ((*((*MEMORY[0x277D85000] & *v38) + 0x100))(v42))
  {
    v44 = v43;
    v45 = swift_getObjectType();
    LOBYTE(v60) = v23;
    *&v61 = v5;
    *(&v61 + 1) = v17;
    v62 = v58;
    (*(v44 + 8))(&v60, v45, v44);

    goto LABEL_106;
  }

LABEL_107:

LABEL_108:
  specialized DOCItemCollectionViewController.updateOverlay(animated:)(v53);
}

id key path getter for DOCNode.isItemPinned : DOCNode@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isItemPinned];
  *a2 = result;
  return result;
}

void DOCItemCollectionViewController.groupOption(changeTo:)(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  if (one-time initialization token for UI != -1)
  {
LABEL_30:
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.UI);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v46[0] = v8;
    *v7 = 136315138;
    LOBYTE(v45[0]) = v3;
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v46);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2493AC000, v5, v6, "Change collection grouping behavior to: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C1FE850](v8, -1, -1);
    MEMORY[0x24C1FE850](v7, -1, -1);
  }

  v12 = MEMORY[0x277D85000];
  v13 = (*((*MEMORY[0x277D85000] & *v2) + 0xD60))();
  if (!v13[2])
  {
    goto LABEL_24;
  }

  v14 = v13[5];
  v15 = v13[7];
  v43 = v13[6];
  v44 = v13[4];
  v16 = v13[8];

  if (v3 == 10 || (*((*v12 & *v2) + 0xBD8))(v17) != 2)
  {
LABEL_23:

LABEL_24:

    goto LABEL_25;
  }

  v18 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (!v18)
  {
LABEL_32:
    __break(1u);
    return;
  }

  v39 = v16;
  v40 = v15;
  v41 = v14;
  v38 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  v19 = (*((*v12 & *v18) + 0x258))();
  v20 = v19;
  v42 = v2;
  v37 = v3;
  if (v19 >> 62)
  {
    v21 = __CocoaSet.count.getter();
  }

  else
  {
    v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v21)
  {
    v22 = 0;
    v23 = v20 & 0xC000000000000001;
    v2 = (v20 & 0xFFFFFFFFFFFFFF8);
    v24 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
    do
    {
      if (v23)
      {
        v26 = MEMORY[0x24C1FC540](v22, v20);
        v27 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }
      }

      else
      {
        if (v22 >= v2[2])
        {
          __break(1u);
          goto LABEL_30;
        }

        v26 = *(v20 + 8 * v22 + 32);
        swift_unknownObjectRetain();
        v27 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_22;
        }
      }

      if ([v26 v24[262]])
      {
        v28 = v23;
        v29 = v21;
        v3 = v20;
        (*((*v12 & *v42) + 0x820))(v46);
        v30 = v47;
        if (!v47)
        {
          __break(1u);
          goto LABEL_32;
        }

        v25 = v48;
        __swift_project_boxed_opaque_existential_1(v46, v47);
        v45[0] = v44;
        v45[1] = v41;
        v45[2] = v43;
        v45[3] = v40;
        v45[4] = v39;
        (*(v25 + 56))(v26, v45, v30, v25);
        __swift_destroy_boxed_opaque_existential_0(v46);
        (*((*v12 & *v38) + 0x130))(v26);
        v21 = v29;
        v23 = v28;
        v2 = (v20 & 0xFFFFFFFFFFFFFF8);
        v24 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
      }

      swift_unknownObjectRelease();
      ++v22;
    }

    while (v27 != v21);
  }

  v31 = swift_bridgeObjectRelease_n();
  LOBYTE(v3) = v37;
  v2 = v42;
LABEL_25:
  if ((*((*v12 & *v2) + 0x100))(v31))
  {
    v33 = v32;
    ObjectType = swift_getObjectType();
    LOBYTE(v46[0]) = v3;
    v35 = (*((*v12 & *v2) + 0xA68))();
    v36 = [v35 identifier];

    (*(v33 + 24))(v46, v36, ObjectType, v33);
    swift_unknownObjectRelease();
  }

  specialized DOCItemCollectionViewController.updateOverlay(animated:)();
}

unint64_t deepCopyItemsIfNeeded(_:)(unint64_t a1)
{
  v1 = a1;
  v2 = specialized _arrayConditionalCast<A, B>(_:)(a1);
  if (v2)
  {
    specialized _arrayForceCast<A, B>(_:)(v2);

    v3 = objc_allocWithZone(MEMORY[0x277CBEA60]);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v5 = [v3 initWithArray:isa copyItems:1];

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    return MEMORY[0x277D84F90];
  }

  else
  {
  }

  return v1;
}

void DOCOverlayUpdatable<>.applyTitleToNavigationItem(_:for:)(void *a1, DOCConcreteLocation_optional *a2)
{
  if (DOCBrowserContainedViewController._uip_neverShowNavigationTitle(for:)(a2))
  {
    v5 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_3:
      v6 = *(v5 + 4);
      v7 = *(v5 + 5);

      [a1 setLargeTitleDisplayMode_];

      v8.value._countAndFlagsBits = v6;
      v8.value._object = v7;
      UINavigationItem.doc_setAlternateLargeTitles(_:forTitle:)(v5, v8);

      v9 = MEMORY[0x24C1FAD20](v6, v7);

      goto LABEL_6;
    }
  }

  else
  {
    v5 = UIViewController.doc_largeNavigationTitleOptions(for:configuration:)(a2, *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration));

    if (*(v5 + 2))
    {
      goto LABEL_3;
    }
  }

  swift_bridgeObjectRelease_n();
  v9 = [(DOCConcreteLocation_optional *)a2 displayName];
  [a1 setLargeTitleDisplayMode_];
  [a1 set:0 alternateLargeTitles:?];
LABEL_6:
  [a1 setTitle_];
}

Swift::Void __swiftcall DOCItemCollectionViewController.toggleUseGroups()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0xCE8))(&v5 + 2);
  if (BYTE2(v5) == 10)
  {
    v3 = (*((*v1 & *v0) + 0xA68))(v2);
    (*((*v1 & *v3) + 0x200))(&v5);

    v4 = v5;
  }

  else
  {
    v4 = 10;
  }

  BYTE1(v5) = v4;
  DOCItemCollectionViewController.groupOption(changeTo:)(&v5 + 1);
}

Swift::Void __swiftcall DOCItemCollectionViewController.toggleViewOptions()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x1948))();
  if (v2)
  {
    v3 = v2;
    if ([v2 doc_hasAppearedOrIsAppearing])
    {
      *(swift_allocObject() + 16) = v3;
      v4 = v3;
      DOCRunInMainThread(_:)();

LABEL_10:

      return;
    }
  }

  v5 = (*((*v1 & *v0) + 0x198))();
  if (!v5 || (v6 = v5, v7 = [v5 overflowPresentationSource], v6, !v7))
  {
    v7 = DOCItemCollectionViewController.displayModeButton.getter();
  }

  v8 = DOCItemCollectionViewController.makeViewOptionsViewController(attachedTo:)(v7);
  (*((*v1 & *v0) + 0x1950))(v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = *((*v1 & *v0) + 0xBB8);

  v12 = v10(v11);
  if (v12)
  {
    v13 = v12;

    v14 = swift_allocObject();
    *(v14 + 16) = partial apply for closure #2 in DOCItemCollectionViewController.toggleViewOptions();
    *(v14 + 24) = v9;
    v15 = *((*v1 & *v13) + 0x360);

    v15(partial apply for thunk for @callee_guaranteed () -> (), v14, 1);

    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = (*((*v1 & *Strong) + 0x1948))();
    if (v18)
    {
      v19 = v18;
      v20 = swift_allocObject();
      *(v20 + 16) = v17;
      *(v20 + 24) = v19;
      v21 = v17;
      v22 = v19;
      DOCRunInMainThread(_:)();
    }

    else
    {
    }
  }

  swift_unknownObjectRelease();
}

id DOCItemCollectionViewController.viewOptionsKeyCommandShouldBeEnabled.getter()
{
  v0 = DOCItemCollectionViewController.displayModeButton.getter();
  v1 = [v0 isEnabled];

  return v1;
}

id DOCItemCollectionViewController.menuForDisplaying(in:)(char *a1)
{
  v2 = v1;
  v4 = [a1 isActive];
  v5 = MEMORY[0x277D85000];
  if (v4 && (v6 = *&a1[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController], (v7 = [v6 viewIfLoaded]) != 0) && (v8 = v7, v9 = objc_msgSend(v7, sel_isHidden), v8, (v9 & 1) == 0) && ((v10 = (*((*v5 & *v6) + 0xCB8))(), v10 >> 62) ? (v11 = __CocoaSet.count.getter()) : (v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v11 > 0) || (v12 = v2, (DOCSearchController.isActiveShowingNoResults.getter() & 1) != 0))
  {
    v12 = *&a1[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController];
  }

  v13 = *((*v5 & *v12) + 0xBD8);
  v14 = v12;
  v15 = v13();
  DOCItemCollectionViewController.createDisplayModeMenu(displayModeToSelect:)(v15, 0);
  v17 = v16;
  (*((*v5 & *v14) + 0x1160))(v46);
  v18 = v46[0];
  v19 = v46[1];
  v20 = DOCItemCollectionViewController.createSortOptionsMenu(sortDescriptorToShowActive:)(v46);
  outlined consume of DOCItemSortDescriptor?(v18, v19);
  v45[4] = v17;
  v45[5] = v20;
  v21 = MEMORY[0x277D84F90];
  v46[0] = MEMORY[0x277D84F90];
  v22 = v20;
  v23 = v17;
  for (i = 0; i != 2; ++i)
  {
    v25 = v45[i + 4];
    if (v25)
    {
      v26 = v25;
      MEMORY[0x24C1FB090]();
      if (*((v46[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v21 = v46[0];
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIMenuCSgMd);
  swift_arrayDestroy();
  v27 = DOCDisplayMode.image.getter(v15);
  if (v27)
  {
    if (one-time initialization token for symbolImageConfiguration != -1)
    {
      v43 = v27;
      swift_once();
      v27 = v43;
    }

    v28 = v27;
    v29 = [v27 imageWithConfiguration_];

    if (!(v21 >> 62))
    {
      goto LABEL_19;
    }
  }

  else
  {
    v29 = 0;
    if (!(v21 >> 62))
    {
LABEL_19:

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);
      preferredElementSize = v21;
      goto LABEL_20;
    }
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);

  preferredElementSize = _bridgeCocoaArray<A>(_:)();

LABEL_20:

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
  v31 = v29;
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  v47.value.super.isa = v29;
  v47.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v33, v32, 0, v47, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v44);
  v35 = v34;
  v36 = objc_opt_self();
  v37 = v35;
  v38 = DOCDisplayMode.title.getter(v15);
  v39 = MEMORY[0x24C1FAD20](v38);

  v40 = [v36 searchMenuButtonShowing_];

  if (!v40)
  {
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = MEMORY[0x24C1FAD20](v41);
  }

  [v37 setAccessibilityIdentifier_];

  return v37;
}

void thunk for @escaping @callee_guaranteed (@guaranteed [FPItem], @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = a3;
  v4(v5, a3);
}

void *DOCActionToolBarItem.docAction.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCActionToolBarItem_docAction;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCActionToolBarItem.docAction.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCActionToolBarItem_docAction;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t DOCActionToolBarItem.onSelectedItems.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCActionToolBarItem_onSelectedItems;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCActionToolBarItem.onSelectedItems.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCActionToolBarItem_onSelectedItems;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id DOCActionToolBarItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCActionToolBarItem.init()()
{
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCActionToolBarItem_docAction] = 0;
  v0[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCActionToolBarItem_onSelectedItems] = 1;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCActionToolBarItem();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DOCActionToolBarItem.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DOCActionToolBarItem.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCActionToolBarItem_docAction] = 0;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCActionToolBarItem_onSelectedItems] = 1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DOCActionToolBarItem();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

void DOCItemCollectionViewController.sender(_:report:animated:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = MEMORY[0x277D85000];
  v10 = (*((*MEMORY[0x277D85000] & *v4) + 0xBB8))();
  if (v10)
  {
    v11 = v10;
    v19 = *(v10 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController);

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    swift_unknownObjectRelease();
    if (v12 == v19)
    {
      v13 = (*((*v9 & *v4) + 0xBC0))();

      if ((v13 - 2) >= 3u && (v13 & 1) != 0 && (a3 & 0xFE) == 2 && (*((*v9 & *v4) + 0xD0))())
      {
        v15 = v14;
        ObjectType = swift_getObjectType();
        v20[3] = type metadata accessor for DOCItemCollectionViewController(0);
        v20[0] = v4;
        v17 = *(v15 + 8);
        v18 = v4;
        v17(v20, a2, a3, a4 & 1, ObjectType, v15);
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0(v20);
      }
    }

    else
    {
    }
  }
}

uint64_t DOCItemCollectionViewController.createLeadingButtons()()
{
  v1 = v0;
  if ([v0 isEditing] && ((*((*MEMORY[0x277D85000] & *v0) + 0x148))() & 1) == 0)
  {
    v2 = DOCItemCollectionViewController.selectAllButton(forItemGroup:)(0);
    v25 = v2;
    v3 = MEMORY[0x277D84F90];
    v24 = MEMORY[0x277D84F90];
    if (v2)
    {
      v4 = v2;
      MEMORY[0x24C1FB090]();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v3 = v24;
    }

    outlined destroy of CharacterSet?(&v25, &_sSo15UIBarButtonItemCSgMd);
    v5 = DOCItemCollectionViewController.actionButtons(for:)(1);
    v23 = v3;
    specialized Array.append<A>(contentsOf:)(v5);
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

  v6 = [v0 navigationController];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 viewControllers];

    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = v9 >> 62 ? __CocoaSet.count.getter() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v10 == 1)
    {
      v11 = [v1 navigationController];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 topViewController];

        if (v13)
        {
          type metadata accessor for DOCBrowserContainerController();
          v14 = swift_dynamicCastClass();
          if (v14 && (v15 = MEMORY[0x277D85000], (v16 = (*((*MEMORY[0x277D85000] & *v14) + 0xE8))()) != 0))
          {
            v17 = v16;
            type metadata accessor for DOCItemCollectionViewController(0);
            if (swift_dynamicCastClass())
            {
              v18 = v1;
              v19 = static NSObject.== infix(_:_:)();

              if (v19 & 1) != 0 && (DOCItemCollectionViewController.moveCancelButtonToLeadingButtons.getter())
              {
                v20 = (*((*v15 & *v18) + 0x1C8))();
                v21 = deepCopyItemsIfNeeded(_:)(v20);

                specialized Array.append<A>(contentsOf:)(v21);
              }
            }

            else
            {
            }
          }

          else
          {
          }
        }
      }
    }
  }

  return v23;
}

unint64_t DOCItemCollectionViewController.createTrailingButtons()()
{
  v3 = v0;
  v55 = MEMORY[0x277D84F90];
  v54 = objc_opt_self();
  if (([v54 _UIPTabInfrastructureEnabled] & 1) == 0)
  {
    appendSelectModeIfNecessary #1 (to:) in DOCItemCollectionViewController.createTrailingButtons()(&v55, v0);
  }

  v4 = [v0 isEditing];
  v5 = MEMORY[0x277D85000];
  if (v4)
  {
    goto LABEL_4;
  }

  if ([*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration] isPickerUI])
  {
    v8 = [v0 splitViewController];
    if (v8 && (v9 = v8, v10 = v5, v11 = [v8 doc_splitViewState], v9, LOBYTE(v9) = objc_msgSend(v11, sel_isSidebarShown), v11, v5 = v10, (v9 & 1) != 0) || (DOCItemCollectionViewController.moveCancelButtonToLeadingButtons.getter() & 1) != 0)
    {
LABEL_4:
      v6 = MEMORY[0x277D84F90];
      v7 = MEMORY[0x277D84F90];
      goto LABEL_11;
    }

    v6 = (*((*v5 & *v3) + 0x1C8))();
    v7 = MEMORY[0x277D84F90];
  }

  else
  {
    v12 = (*((*v5 & *v0) + 0x1C8))();
    v7 = specialized Array.split(prefixMaxLength:)(2uLL, v12);
    v14 = v13;

    v6 = v14;
  }

LABEL_11:
  specialized Array.append<A>(contentsOf:)(v6);
  v15 = v55;
  v53 = v7;
  if (!(v55 >> 62))
  {
    v16 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_41;
    }

    while (1)
    {
      v52 = v3;
      v5 = (v15 & 0xC000000000000001);

      v17 = 0;
      v3 = &selRef_displayModeHandler;
      v1 = v15;
      while (1)
      {
        v18 = v5 ? MEMORY[0x24C1FC540](v17, v15) : *(v15 + 32 + 8 * v17);
        v2 = v18;
        if ([(SEL *)v18 systemItem]== 1)
        {
          break;
        }

LABEL_15:
        if (++v17 == v16)
        {
          goto LABEL_40;
        }
      }

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
      }

      v19 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17 >= v19)
      {
        __break(1u);
        goto LABEL_85;
      }

      v20 = v19 - 1;
      v21 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v17 + 0x20);
      memmove(((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v17 + 32), ((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v17 + 40), 8 * (v19 - 1 - v17));
      *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v20;

      v22 = v1 >> 62;
      if (!(v1 >> 62))
      {
        v23 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_39;
        }

        goto LABEL_27;
      }

      v26 = __CocoaSet.count.getter();
      if ((v26 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      v16 = v26;
      if (!v26)
      {
LABEL_41:
        v2 = &selRef_displayModeHandler;
        v1 = &selRef_initWithFrame_;
        if (!DOCItemCollectionViewController.useCompactBarOverlayLayout()() || [v3 isEditing])
        {
          v28 = [v54 modernToolbar];
          v29 = [v28 isEnabled];

          if (!v29 || ![v3 isEditing] || ((*((*v5 & *v3) + 0x148))() & 1) != 0)
          {
            v15 = DOCItemCollectionViewController.displayModeButton.getter();
            MEMORY[0x24C1FB090]();
            if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_47;
            }

            goto LABEL_87;
          }
        }

        goto LABEL_48;
      }
    }

    v26 = __CocoaSet.count.getter();
    if (v26 < 0)
    {
      goto LABEL_89;
    }

    v27 = __CocoaSet.count.getter();
    v24 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
LABEL_39:
      __break(1u);
LABEL_40:

      v3 = v52;
      v5 = MEMORY[0x277D85000];
      goto LABEL_41;
    }

LABEL_27:
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v55 = v1;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v22)
      {
        if (v24 <= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_34:
          specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, v2);

          v55 = v1;
          goto LABEL_15;
        }

LABEL_33:
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v55 = v1;
        goto LABEL_34;
      }
    }

    else if (!v22)
    {
      goto LABEL_33;
    }

    __CocoaSet.count.getter();
    goto LABEL_33;
  }

LABEL_85:
  v26 = __CocoaSet.count.getter();
  if ((v26 & 0x8000000000000000) == 0)
  {
    goto LABEL_90;
  }

  __break(1u);
LABEL_87:
  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_47:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  DOCItemCollectionViewController.attachDisplayOptionsMenu(to:)(v15);

LABEL_48:
  v30 = DOCItemCollectionViewController.newFolderBarItemAvailability.getter();
  v31 = DOCItemCollectionViewController.newDocumentBarItemAvailability.getter();
  if (([v54 _UIPTabInfrastructureEnabled] & 1) != 0 || (v32 = DOCItemCollectionViewController.selectAllButton(forItemGroup:)(1)) == 0)
  {
    v35 = DOCItemCollectionViewController.newFolderButton.getter();
    v34 = v35;
    if (v30 != 2)
    {
      [v35 setEnabled_];
      v34 = v34;
      MEMORY[0x24C1FB090]();
      if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  else
  {
    v33 = v32;
    MEMORY[0x24C1FB090]();
    if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v34 = DOCItemCollectionViewController.newFolderButton.getter();
  }

  if (DOCItemCollectionViewController.useCompactBarOverlayLayout()() && ([v3 isEditing] & 1) == 0)
  {
    v36 = DOCItemCollectionViewController.legacyOverflowButton.getter();
    DOCItemCollectionViewController.createCompactLayoutMenu()();
    v38 = v37;
    [v36 setMenu_];
    UIBarButtonItem.configureOverflowRepresentationAsInlineMenu()();

    DOCItemCollectionViewController.legacyOverflowButton.getter();
    MEMORY[0x24C1FB090]();
    if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  if ([v54 _UIPTabInfrastructureEnabled])
  {
    appendSelectModeIfNecessary #1 (to:) in DOCItemCollectionViewController.createTrailingButtons()(&v55, v3);
  }

  v39 = DOCItemCollectionViewController.createDocumentButton.getter();
  v40 = v39;
  if (v31 != 2)
  {
    [v39 setEnabled_];
    v41 = v40;
    MEMORY[0x24C1FB090]();
    if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v42 = [v54 v2[293]];
  v43 = [v42 *(v1 + 440)];

  if (v43 && [v3 isEditing] && ((*((*v5 & *v3) + 0x148))() & 1) == 0 && !DOCItemCollectionViewController.useCompactBarOverlayLayout()())
  {
    v44 = DOCItemCollectionViewController.createToolbarButtons(imagesOnly:)(1);
    specialized Array.append<A>(contentsOf:)(v44);
  }

  if ([v54 _UIPTabInfrastructureEnabled])
  {
    v45 = _UISolariumEnabled();
    v46 = objc_opt_self();
    if (v45)
    {
      v47 = [v46 flexibleSpaceItem];
    }

    else
    {
      v47 = [v46 fixedSpaceItemOfWidth_];
    }

    v48 = v47;
    appendSelectAllButtonIfNecessary #1 (to:spacer:) in DOCItemCollectionViewController.createTrailingButtons()(&v55, v48);
  }

  if (((*((*v5 & *v3) + 0xC58))() & 1) == 0)
  {
    v49 = UIViewController.progressButtonItemForOverlay.getter();
    if (v49)
    {
      v50 = v49;
      MEMORY[0x24C1FB090]();
      if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  specialized Array.append<A>(contentsOf:)(v53);
  return v55;
}

uint64_t DOCItemCollectionViewController.createFixedTrailingButtons()()
{
  v1 = v0;
  v44 = MEMORY[0x277D84F90];
  v2 = DOCItemCollectionViewController.traitCollectionForBarLayout.getter();
  v3 = DOCItemCollectionViewController.multiSelectionOpenAction.getter();
  v4 = MEMORY[0x277D85000];
  if (v3)
  {
    v5 = v3;
    if (!DOCUsePadIdiomForTraits() || (v6 = [v2 horizontalSizeClass], v6 != 2))
    {
      v7 = (*((*v4 & *v0) + 0x1338))();
      if (v7 >> 62)
      {
        v42 = __CocoaSet.count.getter();

        if (v42)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v8)
        {
          goto LABEL_7;
        }
      }

      v6 = [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) forPickingFolders];
      if ((v6 & 1) == 0)
      {
        v20 = (*((*v4 & *v1) + 0x1C8))();
        v21 = deepCopyItemsIfNeeded(_:)(v20);

        specialized Array.append<A>(contentsOf:)(v21);
LABEL_25:

        goto LABEL_26;
      }
    }

LABEL_7:
    if ((*((*v4 & *v1) + 0x968))(v6) == 1)
    {
      DOCItemCollectionViewController.pickerIsLoadingIndicatorItem.getter();
      MEMORY[0x24C1FB090]();
      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_25;
    }

    v43[3] = type metadata accessor for DOCItemCollectionViewController(0);
    v43[0] = v1;
    v9 = v1;
    v10 = specialized static UIDocumentBrowserActionBarButton.button(from:target:selector:)(v5, v43, sel_actionBarButtonTriggeredWithActionBarButton_);
    v11 = __swift_destroy_boxed_opaque_existential_0(v43);
    v12 = (*((*v4 & *v9) + 0x1338))(v11);
    if (v12 >> 62)
    {
      v13 = __CocoaSet.count.getter();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v13 <= 0)
    {
      if (![*(v9 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) forPickingFolders] || (v15 = (*((*v4 & *v9) + 0xA68))(), v16 = *&v15[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain], v17 = v16, v15, !v16) || (v18 = objc_msgSend(v17, sel_supportsPickingFolders), v17, !v18) || !DOCItemCollectionViewController.exportablePickerTargetNode.getter())
      {
        v14 = 0;
        goto LABEL_21;
      }

      swift_unknownObjectRelease();
    }

    v14 = 1;
LABEL_21:
    [v10 setEnabled_];
    v19 = v10;
    MEMORY[0x24C1FB090]();
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    goto LABEL_25;
  }

LABEL_26:
  v22 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  if (([v22 forSavingDocuments] & 1) != 0 || (objc_msgSend(v22, sel_forPickingFolders) & 1) != 0 || (v23 = objc_msgSend(v22, sel_forPickingDownloadsFolder), v23))
  {
    v24 = DOCItemCollectionViewController.multiSelectionOpenAction.getter();
    if (v24)
    {
    }

    else
    {
      if ((*((*v4 & *v1) + 0x998))())
      {
        DOCItemCollectionViewController.configuredSaveButton()(v25);
      }

      else
      {
        DOCItemCollectionViewController.pickerIsLoadingIndicatorItem.getter();
      }

      MEMORY[0x24C1FB090]();
      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v23 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  if (((*((*v4 & *v1) + 0x160))(v23) & 1) != 0 && DOCItemCollectionViewController.useCompactBarOverlayLayout()())
  {
    v26 = (*((*v4 & *v1) + 0x1908))();
    v28 = (*(*v26 + 192))(v43);
    v29 = *(v27 + 8);
    if (!v29)
    {
      v30 = v27;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v31 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v32 = static UIBarButtonItem.doc_endEditingModeButton(withAction:)(v31);

      v33 = *(v30 + 8);
      *(v30 + 8) = v32;
      v34 = v32;

      type metadata accessor for DOCBarButtonItemGroup();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_249BA0290;
      *(v35 + 32) = v34;
      v36 = v34;
      v37 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

      v38 = *v30;
      *v30 = v37;

      v29 = 0;
    }

    v39 = v29;
    v28(v43, 0);

    MEMORY[0x24C1FB090](v40);
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  return v44;
}

unint64_t DOCItemCollectionViewController.validateBarButtonItems(_:)(unint64_t result)
{
  v2 = v1;
  v3 = result;
  if (result >> 62)
  {
    goto LABEL_19;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v6 = v3 & 0xC000000000000001;
      v7 = v3 & 0xFFFFFFFFFFFFFF8;
      v20 = *MEMORY[0x277CC6028];
      v21 = v4;
      v22 = v2;
      while (1)
      {
        if (v6)
        {
          v8 = MEMORY[0x24C1FC540](v5, v3);
        }

        else
        {
          if (v5 >= *(v7 + 16))
          {
            goto LABEL_18;
          }

          v8 = *(v3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v25 = v8;
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);
        v11 = v9;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables32DOCDocumentCreationBarButtonItem_pMd);
        if (swift_dynamicCast())
        {
          outlined init with take of DOCGoToFolderCandidate(v23, v26);
          v12 = v27;
          v13 = v28;
          __swift_project_boxed_opaque_existential_1(v26, v27);
          v14 = (*((*MEMORY[0x277D85000] & *v2) + 0xC70))();
          if (v14 && (v15 = [v14 fpfs_fpItem], swift_unknownObjectRelease(), v15))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_249BA0290;
            *(inited + 32) = v15;
            v17 = v15;
            v18 = specialized static DOCActionManager.canPerform(_:on:)(v20, inited);
            swift_setDeallocating();
            v4 = v21;
            v2 = v22;
            swift_arrayDestroy();
          }

          else
          {
            v19 = MEMORY[0x277D85000];
            v17 = (*((*MEMORY[0x277D85000] & *v2) + 0xA68))();
            v18 = (*((*v19 & *v17) + 0x258))();
          }

          (*(v13 + 8))(v18 & 1, v12, v13);
          result = __swift_destroy_boxed_opaque_existential_0(v26);
          v7 = v3 & 0xFFFFFFFFFFFFFF8;
          v6 = v3 & 0xC000000000000001;
        }

        else
        {

          v24 = 0;
          memset(v23, 0, sizeof(v23));
          result = outlined destroy of CharacterSet?(v23, &_s26DocumentManagerExecutables32DOCDocumentCreationBarButtonItem_pSgMd);
        }

        ++v5;
        if (v10 == v4)
        {
          return result;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      result = __CocoaSet.count.getter();
      v4 = result;
    }

    while (result);
  }

  return result;
}

Swift::Void __swiftcall DOCItemCollectionViewController.applyOverlayTitleSettings()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x198))();
  if (v3)
  {
    v4 = v3;
    (*((*v2 & *v0) + 0xA50))(&v70);
    v75[2] = v72;
    v75[3] = v73;
    v75[4] = v74;
    v75[0] = v70;
    v75[1] = v71;
    v5 = *(&v71 + 1);
    v6 = *(&v71 + 1);
    outlined destroy of DOCItemCollectionConfiguration(v75);
    v7 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
    v8 = *(UIViewController.doc_largeNavigationTitleOptions(for:configuration:)(v5, v7) + 2);

    if (DOCBrowserContainedViewController._uip_neverShowNavigationTitle(for:)(v5))
    {
      [v4 set:0 alternateLargeTitles:?];
      v9 = MEMORY[0x24C1FAD20](0, 0xE000000000000000);
      [v4 setTitle_];

      goto LABEL_40;
    }

    if ((*((*v2 & *v0) + 0x160))())
    {
      v10 = v8;
      v11 = _DocumentManagerBundle();
      if (!v11)
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v12 = v11;
      v13.value._object = 0xEB00000000656C62;
      v13.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v76._object = 0x8000000249C00F80;
      v14._countAndFlagsBits = 0x49207463656C6553;
      v14._object = 0xEC000000736D6574;
      v15._countAndFlagsBits = 0;
      v15._object = 0xE000000000000000;
      v76._countAndFlagsBits = 0xD000000000000040;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v13, v12, v15, v76);

      v17 = (*((*v2 & *v1) + 0x1338))(v16);
      if (v17 >> 62)
      {
        v18 = __CocoaSet.count.getter();

        if (v18)
        {
LABEL_8:
          v19 = [v1 traitCollection];
          v20 = [v19 horizontalSizeClass];

          if (v20 == 1 || (v21 = [v1 traitCollection], v22 = objc_msgSend(v21, sel_userInterfaceIdiom), v21, v22 == 6))
          {
            v23 = _DocumentManagerBundle();
            if (!v23)
            {
LABEL_51:
              __break(1u);
              goto LABEL_52;
            }

            v24 = v23;
            v69 = 0x8000000249C01040;
            v25 = 0x6D65744920756C25;
            v26 = 0xD000000000000058;
            v27 = 0xE900000000000073;
          }

          else
          {
            v34 = _DocumentManagerBundle();
            if (!v34)
            {
LABEL_53:
              __break(1u);
              return;
            }

            v24 = v34;
            v25 = 0xD000000000000012;
            v69 = 0x8000000249C00FF0;
            v27 = 0x8000000249C00FD0;
            v26 = 0xD000000000000049;
          }

          v35.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v35.value._object = 0xEB00000000656C62;
          v36._countAndFlagsBits = 0;
          v36._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(*&v25, v35, v24, v36, *&v26);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v37 = swift_allocObject();
          v38 = MEMORY[0x277D83B88];
          *(v37 + 16) = xmmword_249B9A480;
          v39 = MEMORY[0x277D83C10];
          *(v37 + 56) = v38;
          *(v37 + 64) = v39;
          *(v37 + 32) = v18;
          countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();
          object = v41;

          goto LABEL_37;
        }
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v18)
        {
          goto LABEL_8;
        }
      }

      v52 = _DocumentManagerBundle();
      if (!v52)
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v53 = v52;
      v77._object = 0x8000000249C00F80;
      v54._countAndFlagsBits = 0x49207463656C6553;
      v54._object = 0xEC000000736D6574;
      v55.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v55.value._object = 0xEB00000000656C62;
      v56._countAndFlagsBits = 0;
      v56._object = 0xE000000000000000;
      v77._countAndFlagsBits = 0xD000000000000040;
      v57 = NSLocalizedString(_:tableName:bundle:value:comment:)(v54, v55, v53, v56, v77);
      countAndFlagsBits = v57._countAndFlagsBits;
      object = v57._object;

      v8 = v10;
LABEL_37:
      [v4 set:0 alternateLargeTitles:?];
      v58 = MEMORY[0x24C1FAD20](countAndFlagsBits, object);

      [v4 setTitle_];

LABEL_38:
      if (v8)
      {
        v59 = 1;
LABEL_41:
        if (((*((*v2 & *v1) + 0xBC0))([v4 setLargeTitleDisplayMode_]) - 2) < 3u)
        {
          [v4 setBackButtonTitle_];
LABEL_47:
          DOCItemCollectionViewController.applyOverlayTitleMenus()();

          return;
        }

        v60 = (*((*v2 & *v1) + 0xBB8))();
        if (v60)
        {
          v61 = v60;
          (*((*v2 & *v60) + 0x330))();
        }

        v62 = _DocumentManagerBundle();
        if (v62)
        {
          v63 = v62;
          v78._countAndFlagsBits = 0xD000000000000030;
          v78._object = 0x8000000249C00F40;
          v64.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v64.value._object = 0xEB00000000656C62;
          v65._countAndFlagsBits = 0x686372616553;
          v65._object = 0xE600000000000000;
          v66._countAndFlagsBits = 0x686372616553;
          v66._object = 0xE600000000000000;
          v67 = NSLocalizedString(_:tableName:bundle:value:comment:)(v65, v64, v63, v66, v78);

          v68 = MEMORY[0x24C1FAD20](v67._countAndFlagsBits, v67._object);

          [v4 setBackButtonTitle_];

          goto LABEL_47;
        }

        __break(1u);
        goto LABEL_50;
      }

LABEL_40:
      v59 = 2;
      goto LABEL_41;
    }

    if (v5)
    {
      v28 = v6;
      v29 = UIViewController.doc_largeNavigationTitleOptions(for:configuration:)(v5, v7);

      if (!*(v29 + 2))
      {

        v30 = [v28 displayName];
        v31 = v30;
        if (v30)
        {
LABEL_23:
          v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v32 = v44;

          v29 = MEMORY[0x277D84F90];
LABEL_24:

          v46 = (*((*v2 & *v1) + 0x7C0))(v45);
          if (v47)
          {
            if (v46 == v33 && v47 == v32)
            {

              swift_bridgeObjectRelease_n();
              goto LABEL_38;
            }

            v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v49)
            {

              goto LABEL_38;
            }
          }

          else
          {
          }

          v50.value._countAndFlagsBits = v33;
          v50.value._object = v32;
          UINavigationItem.doc_setAlternateLargeTitles(_:forTitle:)(v29, v50);

          v51 = MEMORY[0x24C1FAD20](v33, v32);

          [v4 setTitle_];

          (*((*v2 & *v1) + 0x7C8))(0, 0);
          goto LABEL_38;
        }

LABEL_22:
        v43 = (*((*v2 & *v1) + 0xA68))(v30);
        v31 = [v43 displayName];

        goto LABEL_23;
      }
    }

    else
    {
      v29 = MEMORY[0x277D84F90];
      if (!*(MEMORY[0x277D84F90] + 16))
      {

        goto LABEL_22;
      }
    }

    v33 = *(v29 + 4);
    v32 = *(v29 + 5);

    goto LABEL_24;
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.applyOverlayPopoverPresentationItem()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x1948))();
  if (v2)
  {
    v3 = v2;
    v8 = [v2 popoverPresentationController];

    if (v8)
    {
      if ([v8 sourceItem])
      {
        v4 = swift_unknownObjectRelease();
        v5 = (*((*v1 & *v0) + 0x198))(v4);
        if (!v5 || (v6 = v5, v7 = [v5 overflowPresentationSource], v6, !v7))
        {
          v7 = DOCItemCollectionViewController.displayModeButton.getter();
        }

        [v8 setSourceItem_];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

uint64_t DOCItemCollectionViewController.supportsImportInCurrentLocation.getter()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0xC70))();
  if (v2 && (v3 = [v2 fpfs_fpItem], swift_unknownObjectRelease(), v3))
  {
    v4 = *MEMORY[0x277CC6028];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249BA0290;
    *(inited + 32) = v3;
    v6 = v3;
    LOBYTE(v4) = specialized static DOCActionManager.canPerform(_:on:)(v4, inited);
    swift_setDeallocating();
    swift_arrayDestroy();

    return v4 & 1;
  }

  else
  {
    v8 = (*((*v1 & *v0) + 0xA68))();
    v9 = (*((*v1 & *v8) + 0x258))();

    return v9 & 1;
  }
}

id DOCItemCollectionViewController.fullDocumentManagerViewController.getter()
{
  v1 = [v0 splitViewController];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = [v3 fullDocumentManagerViewController];

      result = v4;
      if (v4)
      {
        return result;
      }
    }

    else
    {
    }
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCFullDocumentManagerViewController);
  result = [v0 parentViewController];
  if (result)
  {
    v6 = result;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    while (![v6 isKindOfClass_])
    {
      v8 = [v6 parentViewController];

      v6 = v8;
      if (!v8)
      {
        return 0;
      }
    }

    objc_opt_self();
    return swift_dynamicCastObjCClassUnconditional();
  }

  return result;
}

Swift::Bool __swiftcall DOCBrowserContainedViewController._uip_neverShowNavigationTitle(for:)(DOCConcreteLocation_optional *a1)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  v2 = a1;
  if (!-[DOCConcreteLocation_optional isRoot](v2, sel_isRoot) || ![v1 enclosedInUIPDocumentLanding])
  {

LABEL_7:
    v8 = 0;
    return v8 & 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo27DOCDocumentSourceIdentifieraSgGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9FA70;
  *(inited + 32) = [(DOCConcreteLocation_optional *)v2 sourceIdentifier];
  v4 = [(DOCConcreteLocation_optional *)v2 originalSourceIdentifier];
  *(inited + 40) = v4;
  v12 = *MEMORY[0x277D060F8];
  MEMORY[0x28223BE20](v4, v5);
  v11 = &v12;
  v6 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v10, inited);
  if (v6)
  {

    v8 = 1;
  }

  else
  {
    v12 = *MEMORY[0x277D05DC0];
    MEMORY[0x28223BE20](v6, v7);
    v11 = &v12;
    v8 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v10, inited);
  }

  return v8 & 1;
}

Swift::Bool __swiftcall DOCItemCollectionViewController.useCompactBarOverlayLayout()()
{
  v1 = DOCItemCollectionViewController.traitCollectionForBarLayout.getter();
  v2 = [v1 horizontalSizeClass];

  v3 = v2 == 1;
  v4 = floatingBarLayoutRulesWidth #1 () in DOCItemCollectionViewController.useCompactBarOverlayLayout()(v0);
  if ((v5 & 1) == 0)
  {
    v6 = *&v4;
    if ([v0 enclosedInUIPDocumentLanding])
    {
      v7 = [v0 splitViewController];
      if (!v7 || (v8 = v7, v9 = UISplitViewController.hasEnoughRoomToTileSidebar.getter(), v8, (v9 & 1) != 0))
      {
        v6 = v6 + -319.0;
      }
    }

    return v6 <= 876.0;
  }

  return v3;
}

uint64_t DOCItemCollectionViewController.createToolbarButtons(imagesOnly:)(char a1)
{
  v2 = v1;
  v4 = DOCItemCollectionViewController.traitCollectionForBarLayout.getter();
  if (one-time initialization token for hSizeClass != -1)
  {
    swift_once();
  }

  v71 = static UITraitCollection.Traits.hSizeClass;
  v72 = qword_27EEE9C60;
  if (UITraitCollection.doc_hasSpecified(_:)(&v71))
  {

    v5 = MEMORY[0x277D85000];
    if ((*((*MEMORY[0x277D85000] & *v2) + 0x148))())
    {
      v6 = DOCItemCollectionViewController.selectAllButton.getter();
      v7 = (*((*v5 & *v2) + 0x1338))();
      if (v7 >> 62)
      {
        v8 = __CocoaSet.count.getter();
      }

      else
      {
        v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = (*((*v5 & *v2) + 0xEE8))(v9);
      if (v10 >> 62)
      {
        v11 = __CocoaSet.count.getter();
      }

      else
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      [v6 setEnabled_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_249BA37E0;
      *(v12 + 32) = v6;
      v13 = objc_opt_self();
      v14 = v6;
      *(v12 + 40) = [v13 flexibleSpaceItem];
      *(v12 + 48) = DOCItemCollectionViewController.deselectAllButton.getter();
    }

    else
    {
      (*((*v5 & *v2) + 0xA50))(&v71);
      v17 = v71;
      outlined destroy of DOCItemCollectionConfiguration(&v71);
      v68 = [v17 identifier];

      v18 = (*v5 & *v2) + 4920;
      v19 = *((*v5 & *v2) + 0x1338);
      v20 = v19();
      v21 = DOCItemCollectionViewController.bestTargetNode(for:)(v20);

      v67 = objc_opt_self();
      v22 = [v67 modernToolbar];
      v23 = [v22 isEnabled];

      v24 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_actionManager);
      v66 = v18;
      v65 = v19;
      v25 = v19();
      v26 = (*((*v5 & *v2) + 0xCB8))();
      if (v23)
      {
        v27 = DOCItemCollectionViewController.useCompactBarOverlayLayout()();
        v28 = v21;
        v29 = v21;
        v30 = v68;
        v31 = specialized DOCActionManager.navbarActions(for:allNodes:currentNode:in:isCollectionEmpty:isCompactMode:)(v25, v26, v29, v68, v27);
      }

      else
      {
        v28 = v21;
        v32 = v21;
        v30 = v68;
        v31 = specialized DOCActionManager.toolbarActions(for:allNodes:currentNode:in:isCollectionEmpty:)(v25, v26, v32, v68);
      }

      v33 = v31;
      v64 = v24;

      v34 = DOCItemCollectionViewController.traitCollectionForBarLayout.getter();
      v35 = *(v33 + 2);
      if (v35)
      {
        v68 = v28;
        v36 = v30;
        v70 = MEMORY[0x277D84F90];
        specialized ContiguousArray.reserveCapacity(_:)();
        v37 = (v33 + 40);
        do
        {
          v38 = *(v37 - 1);
          v39 = *v37;
          v37 += 8;
          v40 = v38;
          specialized static UIBarButtonItem.createActionToolBarItem(descriptor:itemViewController:containerTraits:imagesOnly:)(v38, v39, v2, v34, a1 & 1);

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v35;
        }

        while (v35);

        v12 = v70;
        v30 = v36;
      }

      else
      {

        v12 = MEMORY[0x277D84F90];
      }

      v70 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo27DOCDocumentSourceIdentifieraGMd);
      inited = swift_initStackObject();
      v42 = MEMORY[0x277D05DD0];
      *(inited + 16) = xmmword_249B9A480;
      *(inited + 32) = *v42;
      v69 = v30;
      MEMORY[0x28223BE20](inited, v43);
      v63[2] = &v69;
      v45 = v44;
      v46 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v63, inited);
      swift_setDeallocating();
      outlined destroy of DOCDocumentSourceIdentifier(inited + 32);
      if ((v46 & 1) == 0)
      {
        v47 = v30;
        v48 = specialized DOCItemCollectionViewController.createMoreButton(containerTraits:itemViewController:imageOnly:)(v34, a1 & 1);
        v49 = v65();
        v50 = DOCItemCollectionViewController.bestTargetNode(for:)(v49);
        v51 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
        isa = Array._bridgeToObjectiveC()().super.isa;
        v53 = [v64 _filteredMenuActionsFor_availabilityIdentifier_in_currentConfiguration_sortOverrideHandler_];

        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
        v54 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        swift_unknownObjectRelease();

        if (v54 >> 62)
        {
          v55 = __CocoaSet.count.getter();
        }

        else
        {
          v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        [(UIBarButtonItem *)v48 setEnabled:v55 > 0];
        v56 = [v67 modernToolbar];
        v57 = [v56 isEnabled];

        v30 = v47;
        if (!v57 || DOCItemCollectionViewController.useCompactBarOverlayLayout()())
        {
          v58 = [objc_opt_self() flexibleSpaceItem];
          MEMORY[0x24C1FB090]();
          if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        v59 = v48;
        MEMORY[0x24C1FB090]();
        if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v12 = v70;
        v60 = *((*MEMORY[0x277D85000] & *v2) + 0x1138);
        v61 = v59;
        v60(v59);
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v15 = [objc_opt_self() standardUserDefaults];
    v16 = MEMORY[0x24C1FAD20](0xD000000000000029, 0x8000000249BDA260);
    [v15 BOOLForKey_];

    return MEMORY[0x277D84F90];
  }

  return v12;
}

id DOCItemCollectionViewController.selectAllButton.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x1908))();
  v3 = (*(*v1 + 216))(v15);
  v4 = *(v2 + 8);
  if (v4)
  {
    v5 = *(v2 + 8);
  }

  else
  {
    v6 = v2;
    v7 = closure #1 in DOCItemCollectionViewController.selectAllButton.getter(v0);
    v8 = *(v6 + 8);
    *(v6 + 8) = v7;
    v9 = v7;

    type metadata accessor for DOCBarButtonItemGroup();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_249BA0290;
    *(v10 + 32) = v9;
    v5 = v9;
    v11 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

    v12 = *v6;
    *v6 = v11;

    v4 = 0;
  }

  v13 = v4;
  v3(v15, 0);

  return v5;
}

id DOCItemCollectionViewController.deselectAllButton.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x1908))();
  v3 = (*(*v1 + 240))(v15);
  v4 = *(v2 + 8);
  if (v4)
  {
    v5 = *(v2 + 8);
  }

  else
  {
    v6 = v2;
    v7 = closure #1 in DOCItemCollectionViewController.deselectAllButton.getter(v0);
    v8 = *(v6 + 8);
    *(v6 + 8) = v7;
    v9 = v7;

    type metadata accessor for DOCBarButtonItemGroup();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_249BA0290;
    *(v10 + 32) = v9;
    v5 = v9;
    v11 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

    v12 = *v6;
    *v6 = v11;

    v4 = 0;
  }

  v13 = v4;
  v3(v15, 0);

  return v5;
}

Swift::Bool __swiftcall DOCItemCollectionViewController.moreButtonEnabled()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x1338))();
  v2 = DOCItemCollectionViewController.bestTargetNode(for:)(v1);
  v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_actionManager);
  v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v6 = [v3 _filteredMenuActionsFor_availabilityIdentifier_in_currentConfiguration_sortOverrideHandler_];

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRelease();

  if (v7 >> 62)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v8 > 0;
}

Swift::Void __swiftcall DOCItemCollectionViewController.attachContextMenuToMoreButton(_:)(UIBarButtonItem *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x1338))();
  v4 = DOCItemCollectionViewController.bestTargetNode(for:)(v3);
  v5 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_actionManager);
  v6 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v8 = [v5 _filteredMenuActionsFor_availabilityIdentifier_in_currentConfiguration_sortOverrideHandler_];

  v118 = 0;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRelease();

  v108 = v1;
  if ((*((*v2 & *v1) + 0x1368))(v10))
  {
    if (v9 >> 62)
    {
      goto LABEL_98;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v109 = i;
      v106 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_249BA37E0;
      v13 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #0 of DOCItemCollectionViewController.attachContextMenuToMoreButton(_:));
      type metadata accessor for DOCItemCollectionViewController._DOCSectionDescriptor();
      swift_allocObject();
      DOCItemCollectionViewController._DOCSectionDescriptor.init()();
      v15 = v14;
      swift_beginAccess();
      *(v15 + 16) = v13;

      swift_beginAccess();
      *(v15 + 48) = 1;
      swift_beginAccess();
      *(v15 + 64) = 0;
      *(v15 + 72) = 0;

      swift_beginAccess();
      *(v15 + 80) = 0;
      *(v15 + 88) = 0;

      swift_beginAccess();
      *(v15 + 56) = 2;
      swift_beginAccess();
      *(v15 + 24) = 0;

      swift_beginAccess();
      *(v15 + 96) = 0;

      *(inited + 32) = v15;
      v111 = inited + 32;
      v16 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #1 of DOCItemCollectionViewController.attachContextMenuToMoreButton(_:));
      swift_allocObject();
      DOCItemCollectionViewController._DOCSectionDescriptor.init()();
      v18 = v17;
      swift_beginAccess();
      *(v18 + 16) = v16;

      swift_beginAccess();
      *(v18 + 48) = 1;
      swift_beginAccess();
      *(v18 + 64) = 0;
      *(v18 + 72) = 0;

      swift_beginAccess();
      *(v18 + 80) = 0;
      *(v18 + 88) = 0;

      swift_beginAccess();
      *(v18 + 56) = 2;
      swift_beginAccess();
      *(v18 + 24) = 0;

      swift_beginAccess();
      *(v18 + 96) = 0;

      *(inited + 40) = v18;
      v19 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #2 of DOCItemCollectionViewController.attachContextMenuToMoreButton(_:));
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_249BA0290;
      v21 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #3 of DOCItemCollectionViewController.attachContextMenuToMoreButton(_:));
      v22 = _DocumentManagerBundle();
      if (!v22)
      {
LABEL_103:
        __break(1u);
        return;
      }

      v23 = v22;
      swift__string._object = 0x8000000249BF1620;
      v24.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v24.value._object = 0xEB00000000656C62;
      v25._countAndFlagsBits = 0x6341206B63697551;
      v25._object = 0xED0000736E6F6974;
      v26._countAndFlagsBits = 0x6341206B63697551;
      v26._object = 0xED0000736E6F6974;
      swift__string._countAndFlagsBits = 0xD000000000000027;
      v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v24, v23, v26, swift__string);

      swift_allocObject();
      DOCItemCollectionViewController._DOCSectionDescriptor.init()();
      v29 = v28;
      swift_beginAccess();
      *(v29 + 16) = v21;

      swift_beginAccess();
      *(v29 + 48) = 0;
      swift_beginAccess();
      *(v29 + 64) = v27;

      swift_beginAccess();
      *(v29 + 80) = xmmword_249BB6110;

      swift_beginAccess();
      *(v29 + 56) = 2;
      swift_beginAccess();
      *(v29 + 24) = 0;

      swift_beginAccess();
      *(v29 + 96) = 0;

      *(v20 + 32) = v29;
      swift_allocObject();
      DOCItemCollectionViewController._DOCSectionDescriptor.init()();
      v31 = v30;
      swift_beginAccess();
      *(v31 + 16) = v19;

      swift_beginAccess();
      *(v31 + 48) = 1;
      swift_beginAccess();
      *(v31 + 64) = 0;
      *(v31 + 72) = 0;

      swift_beginAccess();
      *(v31 + 80) = 0;
      *(v31 + 88) = 0;

      swift_beginAccess();
      *(v31 + 56) = 2;
      swift_beginAccess();
      *(v31 + 24) = 0;

      swift_beginAccess();
      *(v31 + 96) = v20;

      v32 = 0;
      *(inited + 48) = v31;
      v117 = inited & 0xC000000000000001;
      v105._rawValue = (v9 + 32);
      v107 = inited & 0xFFFFFFFFFFFFFF8;
      v33 = &selRef_numberOfPreviewItems;
      v34 = v118;
      v9 = inited;
      v112 = inited;
      do
      {
        if ((v106 & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x24C1FC540](v32, v106);
        }

        else
        {
          if (v32 >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_97;
          }

          v35 = *(v105._rawValue + v32);
        }

        v36 = v35;
        v37 = __OFADD__(v32, 1);
        v38 = v32 + 1;
        if (v37)
        {
          goto LABEL_95;
        }

        v113 = v38;
        v114 = v35;
        v39 = 0;
        while (1)
        {
          if (v117)
          {
            v40 = MEMORY[0x24C1FC540](v39, v9);
          }

          else
          {
            if (v39 >= *(v107 + 16))
            {
              goto LABEL_96;
            }

            v40 = *(v111 + 8 * v39);
          }

          v41 = [v36 v33[338]];
          v42 = (*(*v40 + 152))();
          if (*(v42 + 16))
          {
            v43 = v42;
            Hasher.init(_seed:)();
            MEMORY[0x24C1FCBD0](v41);
            v44 = Hasher._finalize()();
            v45 = v43;
            v34 = v118;
            v46 = -1 << *(v45 + 32);
            v47 = v44 & ~v46;
            if ((*(v45 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47))
            {
              break;
            }
          }

LABEL_21:

          v50 = (*(*v40 + 344))(v49);
          if (v50)
          {
            v51 = v50;
            v115 = v50 & 0xFFFFFFFFFFFFFF8;
            if (v50 >> 62)
            {
              v9 = __CocoaSet.count.getter();
              if (v9)
              {
LABEL_24:
                v52 = 0;
                while (1)
                {
                  if ((v51 & 0xC000000000000001) != 0)
                  {
                    v53 = MEMORY[0x24C1FC540](v52, v51);
                    v37 = __OFADD__(v52++, 1);
                    if (v37)
                    {
                      goto LABEL_93;
                    }
                  }

                  else
                  {
                    if (v52 >= *(v115 + 16))
                    {
                      goto LABEL_94;
                    }

                    v53 = *(v51 + 32 + 8 * v52);

                    v37 = __OFADD__(v52++, 1);
                    if (v37)
                    {
                      goto LABEL_93;
                    }
                  }

                  v54 = (*(*v53 + 152))();
                  if (*(v54 + 16))
                  {
                    Hasher.init(_seed:)();
                    MEMORY[0x24C1FCBD0](v41);
                    v55 = Hasher._finalize()();
                    v56 = -1 << *(v54 + 32);
                    v57 = v55 & ~v56;
                    if ((*(v54 + 56 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
                    {
                      break;
                    }
                  }

LABEL_25:

                  if (v52 == v9)
                  {
                    goto LABEL_39;
                  }
                }

                v58 = ~v56;
                while (*(*(v54 + 48) + 8 * v57) != v41)
                {
                  v57 = (v57 + 1) & v58;
                  if (((*(v54 + 56 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
                  {
                    goto LABEL_25;
                  }
                }

                v59 = *(*v53 + 216);
                v36 = v114;
                v60 = v114;
                v61 = v59(v120);
                v63 = v62;
                MEMORY[0x24C1FB090]();
                if (*((*v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v61(v120, 0);

                v9 = v112;
                v33 = &selRef_numberOfPreviewItems;
                goto LABEL_48;
              }
            }

            else
            {
              v9 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v9)
              {
                goto LABEL_24;
              }
            }

LABEL_39:

            v34 = v118;
            v9 = v112;
            v33 = &selRef_numberOfPreviewItems;
            v36 = v114;
          }

          ++v39;

          if (v39 == 3)
          {
            goto LABEL_49;
          }
        }

        v48 = ~v46;
        while (*(*(v45 + 48) + 8 * v47) != v41)
        {
          v47 = (v47 + 1) & v48;
          if (((*(v45 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        v64 = *(*v40 + 216);
        v65 = v36;
        v66 = v64(v120);
        v68 = v67;
        MEMORY[0x24C1FB090]();
        if (*((*v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v66(v120, 0);
LABEL_48:

        v34 = v118;
LABEL_49:

        v32 = v113;
      }

      while (v113 != v109);

      v120[0] = MEMORY[0x277D84F90];
      if (!v117 && *(v107 + 16) < 3uLL)
      {
        __break(1u);
        goto LABEL_103;
      }

      v69 = 0;
      while (1)
      {
        v70 = v34;
        if (v117)
        {
          v71 = MEMORY[0x24C1FC540](v69, v9);
        }

        else
        {
          v71 = *(v111 + 8 * v69);
        }

        v72 = *(*v71 + 200);
        v73 = v72();
        if (v73 >> 62)
        {
          v99 = __CocoaSet.count.getter();

          if (!v99)
          {
            goto LABEL_71;
          }
        }

        else
        {
          v74 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);

          if (!v74)
          {
            goto LABEL_71;
          }
        }

        v76 = (v72)(v75);
        v77 = DOCItemCollectionViewController.createActionsFromBrowserActions(_:sender:)(v76);

        v79 = (*(*v71 + 296))(v78);
        if (v80)
        {
          v81 = v79;
        }

        else
        {
          v81 = 0;
        }

        if (v80)
        {
          v82 = v80;
        }

        else
        {
          v82 = 0xE000000000000000;
        }

        v83 = (*(*v71 + 272))(v79);
        if (v77 >> 62)
        {
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);

          preferredElementSize = _bridgeCocoaArray<A>(_:)();
        }

        else
        {

          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);
          preferredElementSize = v77;
        }

        v85 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
        v86._countAndFlagsBits = v81;
        v86._object = v82;
        v122.value.super.isa = 0;
        v122.is_nil = 0;
        UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v85, v86, 0, v122, 1, v83, preferredElementSize, v105);
        v88 = v87;
        MEMORY[0x24C1FB090]();
        if (*((v120[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v120[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v9 = v112;
LABEL_71:
        v89 = (*(*v71 + 344))(v75);
        if (!v89)
        {
          v34 = v70;
          goto LABEL_54;
        }

        v90 = v89;
        v116 = v69;
        v91 = v89 & 0xFFFFFFFFFFFFFF8;
        v34 = v70;
        v92 = v89 >> 62 ? __CocoaSet.count.getter() : *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v118 = v108;
        v9 = a1;
        v93 = v71;

        if (v92)
        {
          break;
        }

LABEL_53:

        v9 = v112;
        v69 = v116;
LABEL_54:
        ++v69;

        if (v69 == 3)
        {

          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
          v100 = v120[0];

          v101._countAndFlagsBits = 0;
          v101._object = 0xE000000000000000;
          v123.value.super.isa = 0;
          v123.is_nil = 0;
          UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v102, v101, 0, v123, 1, 0xFFFFFFFFFFFFFFFFLL, v100, v105);
          v104 = v103;
          [(UIBarButtonItem *)a1 setMenu:v103];

          UIBarButtonItem.configureOverflowRepresentationAsInlineMenu()();

          return;
        }
      }

      v94 = 0;
      v95 = v91;
      while ((v90 & 0xC000000000000001) != 0)
      {
        v96 = MEMORY[0x24C1FC540](v94, v90);
        v97 = v94 + 1;
        if (__OFADD__(v94, 1))
        {
          goto LABEL_91;
        }

LABEL_79:
        v119 = v96;
        closure #1 in DOCItemCollectionViewController.attachContextMenuToMoreButton(_:)(&v119, v118, v9, v93, v120);

        ++v94;
        v98 = v97 == v92;
        v91 = v95;
        if (v98)
        {
          goto LABEL_53;
        }
      }

      if (v94 >= *(v91 + 16))
      {
        goto LABEL_92;
      }

      v96 = *(v90 + 8 * v94 + 32);

      v97 = v94 + 1;
      if (!__OFADD__(v94, 1))
      {
        goto LABEL_79;
      }

LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      ;
    }
  }
}

uint64_t DOCItemCollectionViewController.additionalToolbarActions(for:)(unint64_t a1)
{
  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = DOCItemCollectionViewController.bestTargetNode(for:)(a1);
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_actionManager);
  v4 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v6 = [v3 _filteredMenuActionsFor_availabilityIdentifier_in_currentConfiguration_sortOverrideHandler_];

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRelease();

  return v7;
}

Swift::Void __swiftcall DOCItemCollectionViewController.barButtonTapped(sender:)(UIBarButtonItem *sender)
{
  v2 = v1;
  type metadata accessor for DOCActionToolBarItem();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0x277D85000];
    v7 = *((*MEMORY[0x277D85000] & *v4) + 0x60);
    v18 = sender;
    v8 = v7();
    if (!v8)
    {
      [v2 setEditing:0 animated:1];
      v14 = v18;
LABEL_17:

      return;
    }

    v19 = v8;
    if ((*((*v6 & *v5) + 0x78))())
    {
      v9 = *((*v6 & *v2) + 0x1338);
      v10 = v9();
      if (v10 >> 62)
      {
        v11 = __CocoaSet.count.getter();
      }

      else
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v11 < 1)
      {

LABEL_16:
        v14 = v19;
        goto LABEL_17;
      }

      v13 = (v9)(v12);
    }

    else
    {
      v13 = (*((*v6 & *v2) + 0xCB8))();
    }

    v15 = v13;
    v16 = v18;
    v17 = DOCItemCollectionViewController.actionContext(from:)();

    specialized DOCActionManager.perform(_:on:actionContext:)(v19, v15, v17);

    if ([(UIBarButtonItem *)v19 performActionExitsEditMode])
    {
      [v2 setEditing:0 animated:1];
    }

    goto LABEL_16;
  }

  [v2 setEditing:0 animated:1];
}

uint64_t DOCItemCollectionViewController.createActionsFromBrowserActions(_:sender:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    result = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v11 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v5 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C1FC540](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      v9 = v6;
      closure #1 in DOCItemCollectionViewController.createActionsFromBrowserActions(_:sender:)(&v9, v8, &v10);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v5 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return result;
}

void closure #1 in DOCItemCollectionViewController.attachContextMenuToMoreButton(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a1;
  v8 = (*(**a1 + 296))();
  if (!v9)
  {
    return;
  }

  v10 = v9;
  v60 = a5;
  title = v8;
  v11 = (*(*v7 + 320))();
  if (!v12)
  {

    return;
  }

  v13 = v12;
  v58 = v11;
  v59 = a4;
  v14 = *(*v7 + 200);
  v15 = (*v7 + 200);
  v16 = v14();
  if (v16 >> 62)
  {
    v17 = __CocoaSet.count.getter();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v17)
  {

    return;
  }

  v19 = (v14)(v18);
  v20 = DOCItemCollectionViewController.createActionsFromBrowserActions(_:sender:)(v19);

  v21 = MEMORY[0x24C1FAD20](v58, v13);

  v22 = [objc_opt_self() systemImageNamed_];

  if (v20 >> 62)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);

    preferredElementSize = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);
    preferredElementSize = v20;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
  v24._countAndFlagsBits = title;
  v24._object = v10;
  v62.value.super.isa = v22;
  v62.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v25, v24, 0, v62, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v56);
  v27 = v26;
  v28 = (*(*v59 + 200))();
  if (!(v28 >> 62))
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v29)
    {
      goto LABEL_10;
    }

LABEL_33:
    v15 = v27;
    MEMORY[0x24C1FB090]();
    if (*((*v60 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_34:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      return;
    }

LABEL_41:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_34;
  }

  v54 = __CocoaSet.count.getter();

  if (!v54)
  {
    goto LABEL_33;
  }

LABEL_10:
  v30 = *v60;
  if (!(*v60 >> 62))
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v31)
    {
      goto LABEL_12;
    }

LABEL_36:

    return;
  }

  v31 = __CocoaSet.count.getter();
  if (!v31)
  {
    goto LABEL_36;
  }

LABEL_12:
  v32 = v31 - 1;
  if (__OFSUB__(v31, 1))
  {
    __break(1u);
  }

  else if ((v30 & 0xC000000000000001) == 0)
  {
    if ((v32 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v32 < *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v33 = *(v30 + 8 * v32 + 32);
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_41;
  }

  v33 = MEMORY[0x24C1FC540](v32, v30);

LABEL_17:
  objc_opt_self();
  v34 = swift_dynamicCastObjCClass();
  if (!v34)
  {

    return;
  }

  v35 = v34;
  v36 = [v34 children];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);
  v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249BA0290;
  *(inited + 32) = v27;
  v39 = v27;
  specialized Array.append<A>(contentsOf:)(inited);
  v40 = v37;
  if (*v60 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_20;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (!*((*v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_43;
  }

LABEL_20:
  v41 = specialized Array._customRemoveLast()();
  if (v41)
  {
    goto LABEL_24;
  }

  if (*v60 >> 62)
  {
    v55 = __CocoaSet.count.getter();
    v43 = __OFSUB__(v55, 1);
    v44 = v55 - 1;
    if (!v43)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v42 = *((*v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v43 = __OFSUB__(v42, 1);
    v44 = v42 - 1;
    if (!v43)
    {
LABEL_23:
      v41 = specialized Array.remove(at:)(v44);
LABEL_24:

      v45 = [v35 title];
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v47;

      v49 = [v35 options];
      v50 = [v35 preferredElementSize];
      v51._countAndFlagsBits = v46;
      v51._object = v48;
      v63.value.super.isa = 0;
      v63.is_nil = 0;
      UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v52, v51, 0, v63, v49, v50, v40, v57);
      v15 = v53;
      MEMORY[0x24C1FB090]();
      if (*((*v60 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_25:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        return;
      }

LABEL_44:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      goto LABEL_25;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall UIBarButtonItem.configureOverflowRepresentationAsInlineMenu()()
{
  v1 = v0;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_249BA0290;
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in UIBarButtonItem.configureOverflowRepresentationAsInlineMenu();
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
  aBlock[3] = &block_descriptor_177;
  v5 = _Block_copy(aBlock);

  v6 = [v3 elementWithUncachedProvider_];
  _Block_release(v5);
  *(preferredElementSize + 32) = v6;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v13.value.super.isa = 0;
  v13.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v8, v7, 0, v13, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v11);
  v10 = v9;
  [v1 setMenuRepresentation_];
}

void closure #1 in DOCItemCollectionViewController.createActionsFromBrowserActions(_:sender:)(id *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = [*a1 image];
  v6 = [v4 localizedTitle];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = 2 * ([v4 actionStyle] == 1);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
  v8 = swift_allocObject();
  v41 = a2;
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = v9;
  v10[4] = v4;
  v11 = v4;
  v12 = v5;
  v39 = v10;
  v13 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v14 = [v11 identifier];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {

LABEL_5:
    v20 = 1;
LABEL_6:
    [v13 setState_];
    goto LABEL_7;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
    goto LABEL_5;
  }

  v21 = [v11 identifier];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
  {
  }

  else
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v27 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v40 = *((*MEMORY[0x277D85000] & *v41) + 0x1348);
  v28 = v40(v26);
  swift_getKeyPath();
  if (v28 >> 62)
  {
LABEL_35:
    v29 = __CocoaSet.count.getter();
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = 0;
  while (v29 != v30)
  {
    if ((v28 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x24C1FC540](v30, v28);
    }

    else
    {
      if (v30 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v31 = *(v28 + 8 * v30 + 32);
      swift_unknownObjectRetain();
    }

    v32 = [v31 isItemPinned];
    swift_unknownObjectRelease();
    if (v32)
    {
      v29 = v30;
      break;
    }

    if (__OFADD__(v30++, 1))
    {
      goto LABEL_34;
    }
  }

  if (v28 >> 62)
  {
    v34 = __CocoaSet.count.getter();
  }

  else
  {
    v34 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = specialized LazyFilterSequence<>.distance(from:to:)(v29, v34, v28, partial apply for implicit closure #1 in DOCItemCollectionViewController.contextMenuConfigurationForItems(at:indexPathOfPresentingItem:));

  if (v35 >= 1)
  {
    v37 = v40(v36);
    v38 = v37 >> 62 ? __CocoaSet.count.getter() : *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v35 < v38)
    {
      v20 = 2;
      goto LABEL_6;
    }
  }

LABEL_7:

  *a3 = v13;
}

void closure #1 in closure #1 in DOCItemCollectionViewController.createActionsFromBrowserActions(_:sender:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      v9 = (*((*MEMORY[0x277D85000] & *v6) + 0x1348))();
      All = specialized Array<A>.fpfs_syncFetchAllFPItems()(v9);

      if (All)
      {
        v11 = *(v6 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_actionManager);
        v12 = v11;

        if (All >> 62)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
          v13 = _bridgeCocoaArray<A>(_:)();
        }

        else
        {
          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          v13 = All;
        }

        v14 = v8;
        v15 = DOCItemCollectionViewController.actionContext(from:)();

        specialized DOCActionManager.perform(_:on:actionContext:)(a4, v13, v15);

        if ([a4 performActionExitsEditMode])
        {
          [v6 setEditing:0 animated:1];
        }
      }

      else
      {
        v14 = v6;
        v6 = v8;
      }
    }
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.attachDisplayOptionsMenu(to:)(UIBarButtonItem *to)
{
  v2 = v1;
  DOCItemCollectionViewController.createDisplayModeMenu(displayModeToSelect:)(0, 1);
  v28[4] = v4;
  memset(v26, 0, sizeof(v26));
  v27 = 0;
  v28[5] = DOCItemCollectionViewController.createSortOptionsMenu(sortDescriptorToShowActive:)(v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_249BA0290;
  v6 = _DocumentManagerBundle();
  if (v6)
  {
    v7 = v6;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
    swift__string._object = 0x8000000249BE0C60;
    v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v8.value._object = 0xEB00000000656C62;
    v9._countAndFlagsBits = 0x74704F2077656956;
    v9._object = 0xEC000000736E6F69;
    v10._countAndFlagsBits = 0x74704F2077656956;
    v10._object = 0xEC000000736E6F69;
    swift__string._countAndFlagsBits = 0xD000000000000025;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v8, v7, v10, swift__string);

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    *(preferredElementSize + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    v29.value.super.isa = 0;
    v29.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v12, v11, 0, v29, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0);
    v13 = 0;
    v28[6] = v14;
    v15 = MEMORY[0x277D84F90];
    v26[0] = MEMORY[0x277D84F90];
LABEL_3:
    if (v13 <= 3)
    {
      v16 = 3;
    }

    else
    {
      v16 = v13;
    }

    while (v13 != 3)
    {
      if (v16 == v13)
      {
        __break(1u);
        goto LABEL_16;
      }

      v17 = v28[v13++ + 4];
      if (v17)
      {
        v18 = v17;
        MEMORY[0x24C1FB090]();
        if (*((v26[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v15 = v26[0];
        goto LABEL_3;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIMenuCSgMd);
    swift_arrayDestroy();
    if (!(v15 >> 62))
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);
      v19 = v15;
      goto LABEL_14;
    }

LABEL_16:
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);

    v19 = _bridgeCocoaArray<A>(_:)();

LABEL_14:

    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    v30.value.super.isa = 0;
    v30.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v21, v20, 0, v30, 0, 0xFFFFFFFFFFFFFFFFLL, v19, v25);
    v23 = v22;
    [(UIBarButtonItem *)to setMenu:v22];
    UIBarButtonItem.configureOverflowRepresentationAsInlineMenu()();
    v24 = (*((*MEMORY[0x277D85000] & *v2) + 0xBD8))();
    specialized DOCItemCollectionViewController.applyDisplayMode(_:toMenuButton:)(v24, to);
  }

  else
  {
    __break(1u);
  }
}

void DOCItemCollectionViewController.createDisplayModeMenu(displayModeToSelect:)(uint64_t a1, char a2)
{
  LOBYTE(v3) = a2;
  v4 = MEMORY[0x277D85000];
  if (!(*((*MEMORY[0x277D85000] & *v2) + 0x100))())
  {
    return;
  }

  v6 = v5;
  ObjectType = swift_getObjectType();
  v8 = (*(v6 + 48))(ObjectType, v6);
  v9 = swift_unknownObjectRelease();
  if (!*(v8 + 2))
  {

    return;
  }

  v10 = v53;
  if (((*((*v4 & *v53) + 0xF18))(v9) & 1) == 0)
  {
    goto LABEL_24;
  }

  v11 = *(v8 + 2);
  if (!v11)
  {
LABEL_8:
    v12 = *(v8 + 2);
    goto LABEL_16;
  }

  v12 = 0;
  v10 = -40;
  while (*&v8[8 * v12 + 32] != 3)
  {
    ++v12;
    v10 -= 8;
    if (v11 == v12)
    {
      goto LABEL_8;
    }
  }

  v13 = (v12 + 1);
  if (__OFADD__(v12, 1))
  {
    goto LABEL_126;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_127;
  }

  while (1)
  {
    v11 = *(v8 + 2);
    if (v13 != v11)
    {
      v21 = v8 + 32;
      v22 = &v8[-v10];
      while (v13 < v11)
      {
        if (*v22 != 3)
        {
          if (v13 != v12)
          {
            if (v12 >= v11)
            {
              goto LABEL_114;
            }

            v23 = *&v21[8 * v12];
            *&v21[8 * v12] = *v22;
            *v22 = v23;
            v11 = *(v8 + 2);
          }

          ++v12;
        }

        ++v13;
        v22 += 8;
        if (v13 == v11)
        {
          goto LABEL_14;
        }
      }

LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }

    v11 = v13;
LABEL_14:
    if (v11 < v12)
    {
      goto LABEL_118;
    }

    if (v12 < 0)
    {
      goto LABEL_119;
    }

LABEL_16:
    v13 = v12;
    if (__OFADD__(v11, v12 - v11))
    {
      goto LABEL_116;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = v8;
    if (!isUniquelyReferenced_nonNull_native || v12 > *(v8 + 3) >> 1)
    {
      if (v11 <= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v11;
      }

      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v15, 1, v8);
      v55 = v8;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v12, v11, 0);
LABEL_24:
    v12 = objc_opt_self();
    v16 = [v12 outlineView];
    v17 = [v16 isEnabled];

    if (!v17)
    {
      goto LABEL_53;
    }

    v18 = [v12 enableOldListToo];
    v10 = [v18 isEnabled];

    if (v10)
    {
      goto LABEL_53;
    }

    v19 = *(v8 + 2);
    if (!v19)
    {
      break;
    }

    v20 = 0;
    v10 = -40;
    while (*&v8[8 * v20 + 32] != 1)
    {
      ++v20;
      v10 -= 8;
      if (v19 == v20)
      {
        goto LABEL_30;
      }
    }

    v13 = (v20 + 1);
    if (__OFADD__(v20, 1))
    {
      __break(1u);
    }

    else if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_41;
    }

    v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
LABEL_41:
    v19 = *(v8 + 2);
    if (v13 != v19)
    {
      v44 = v8 + 32;
      v45 = &v8[-v10];
      while (v13 < v19)
      {
        if (*v45 != 1)
        {
          if (v13 != v20)
          {
            if (v20 >= v19)
            {
              goto LABEL_122;
            }

            v46 = *&v44[8 * v20];
            *&v44[8 * v20] = *v45;
            *v45 = v46;
            v19 = *(v8 + 2);
          }

          ++v20;
        }

        ++v13;
        v45 += 8;
        if (v13 == v19)
        {
          goto LABEL_43;
        }
      }

LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    v19 = v20 + 1;
LABEL_43:
    if (v19 < v20)
    {
      goto LABEL_124;
    }

    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_45;
    }

LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
  }

LABEL_30:
  v20 = *(v8 + 2);
LABEL_45:
  v13 = v20;
  if (__OFADD__(v19, v20 - v19))
  {
    goto LABEL_123;
  }

  v24 = swift_isUniquelyReferenced_nonNull_native();
  v55 = v8;
  if (!v24 || v20 > *(v8 + 3) >> 1)
  {
    if (v19 <= v20)
    {
      v25 = v20;
    }

    else
    {
      v25 = v19;
    }

    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v24, v25, 1, v8);
    v55 = v8;
  }

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v20, v19, 0);
LABEL_53:
  v13 = [v12 outlineView];
  v10 = [v13 isEnabled];

  if (v10)
  {
    goto LABEL_73;
  }

  v27 = *(v8 + 2);
  if (!v27)
  {
LABEL_58:
    v12 = *(v8 + 2);
    goto LABEL_65;
  }

  v12 = 0;
  v10 = -40;
  while (*&v8[8 * v12 + 32] != 2)
  {
    ++v12;
    v10 -= 8;
    if (v27 == v12)
    {
      goto LABEL_58;
    }
  }

  v13 = (v12 + 1);
  if (__OFADD__(v12, 1))
  {
    __break(1u);
  }

  else if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_61;
  }

  v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
LABEL_61:
  v27 = *(v8 + 2);
  if (v13 != v27)
  {
    v41 = v8 + 32;
    v42 = &v8[-v10];
    while (v13 < v27)
    {
      if (*v42 != 2)
      {
        if (v13 != v12)
        {
          if (v12 >= v27)
          {
            goto LABEL_115;
          }

          v43 = *&v41[8 * v12];
          *&v41[8 * v12] = *v42;
          *v42 = v43;
          v27 = *(v8 + 2);
        }

        ++v12;
      }

      ++v13;
      v42 += 8;
      if (v13 == v27)
      {
        goto LABEL_63;
      }
    }

    goto LABEL_112;
  }

  v27 = v12 + 1;
LABEL_63:
  if (v27 < v12)
  {
LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  if (v12 < 0)
  {
    goto LABEL_121;
  }

LABEL_65:
  v13 = v12;
  if (__OFADD__(v27, v12 - v27))
  {
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v28 = swift_isUniquelyReferenced_nonNull_native();
  v55 = v8;
  if (!v28 || v12 > *(v8 + 3) >> 1)
  {
    if (v27 <= v12)
    {
      v29 = v12;
    }

    else
    {
      v29 = v27;
    }

    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v28, v29, 1, v8);
    v55 = v8;
  }

  v26 = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v12, v27, 0);
LABEL_73:
  if (v3)
  {
    a1 = (*((*v4 & *v53) + 0xBD8))(v26);
  }

  v3 = *(v8 + 2);
  if (v3)
  {
    v54 = MEMORY[0x277D84F90];
    v10 = &v54;
    specialized ContiguousArray.reserveCapacity(_:)();
    v12 = 0;
    while (1)
    {
      if (v12 >= *(v8 + 2))
      {
        __break(1u);
        goto LABEL_111;
      }

      v36 = *&v8[8 * v12 + 32];
      if (v36 > 1)
      {
        break;
      }

      if (v36)
      {
        if (v36 != 1)
        {
          goto LABEL_132;
        }

LABEL_85:
        v30 = 0x6C75622E7473696CLL;
        v31 = 0xEB0000000074656CLL;
        goto LABEL_78;
      }

      v30 = 0x672E657261757173;
      v31 = 0xEF3278322E646972;
LABEL_78:
      v32 = MEMORY[0x24C1FAD20](v30, v31);
      ++v12;
      v33 = [objc_opt_self() systemImageNamed_];

      DOCDisplayMode.title.getter(v36);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x24C1FAD20](v34);

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
      v35 = swift_allocObject();
      swift_unknownObjectWeakInit();
      preferredElementSize = UIMenuElementSizeSmall;
      v48._rawValue = 0;
      v50 = partial apply for closure #1 in closure #4 in DOCItemCollectionViewController.createDisplayModeMenu(displayModeToSelect:);
      v51 = v35;
      v49 = v36 == a1;
      v13 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v4 = *(v54 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v10 = &v54;
      specialized ContiguousArray._endMutation()();
      if (v3 == v12)
      {

        v37 = v54;
        if (v54 >> 62)
        {
          goto LABEL_93;
        }

LABEL_89:

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);
        v38 = v37;
        goto LABEL_90;
      }
    }

    if (v36 != 2)
    {
      if (v36 != 3)
      {
LABEL_132:
        _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
        __break(1u);
        return;
      }

      v31 = 0x8000000249BE99D0;
      v30 = 0xD000000000000013;
      goto LABEL_78;
    }

    goto LABEL_85;
  }

  v37 = MEMORY[0x277D84F90];
  if (!(MEMORY[0x277D84F90] >> 62))
  {
    goto LABEL_89;
  }

LABEL_93:
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);

  v38 = _bridgeCocoaArray<A>(_:)();

LABEL_90:

  v39 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
  v40._countAndFlagsBits = 0;
  v40._object = 0xE000000000000000;
  v56.value.super.isa = 0;
  v56.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v39, v40, 0, v56, 1, 0xFFFFFFFFFFFFFFFFLL, v38, v48);
}

uint64_t DOCItemCollectionViewController.createSortOptionsMenu(sortDescriptorToShowActive:)(uint64_t a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = MEMORY[0x277D85000];
  v52 = *((*MEMORY[0x277D85000] & *v1) + 0xA68);
  v8 = v52();
  v9 = (*((*v7 & *v8) + 0x1D0))();

  v10 = *(v9 + 16);
  if (v10)
  {
    v55 = v4;
    v56 = v5;
    v58 = v2;
    v62 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v11 = 32;
    v12 = v62;
    do
    {
      LOBYTE(v61) = *(v9 + v11);
      DOCItemSortDescriptor.init(type:isReversed:)(&v61, 0, &v66);
      v13 = v66;
      v14 = v67;
      v15 = v68;
      v62 = v12;
      v17 = *(v12 + 16);
      v16 = *(v12 + 24);
      if (v17 >= v16 >> 1)
      {
        v53 = v67;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
        v14 = v53;
        v12 = v62;
      }

      *(v12 + 16) = v17 + 1;
      v18 = v12 + 32 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v14;
      *(v18 + 56) = v15;
      ++v11;
      --v10;
    }

    while (v10);

    v2 = v58;
    v4 = v55;
    v5 = v56;
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  v59 = *(v12 + 16);
  if (!v59)
  {

    return 0;
  }

  v66 = 0;
  v67 = 0uLL;
  v68 = 0;
  if (v3)
  {

    outlined consume of DOCItemSortDescriptor?(0, 0);
    v66 = v4;
  }

  else
  {
    (*((*MEMORY[0x277D85000] & *v2) + 0x1160))(&v62, v19);
    v3 = v63;
    if (v63)
    {
      v6 = v65;
      v5 = v64;
      v20 = v62;
      v21 = 0;
      v22 = 0;
    }

    else
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCUserInterfaceStateStore);
      static DOCUserInterfaceStateStore.retrieveDefaultSortMode(configuration:)(*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration), &v62);
      v3 = v63;
      if (!v63)
      {
        if (!v67)
        {
          goto LABEL_22;
        }

        goto LABEL_18;
      }

      v6 = v65;
      v5 = v64;
      v20 = v62;
      v21 = v66;
      v22 = v67;
    }

    outlined consume of DOCItemSortDescriptor?(v21, v22);
    v66 = v20;
  }

  *&v67 = v3;
  *(&v67 + 1) = v5;
  v68 = v6;
LABEL_18:
  if (specialized Sequence.contains(where:)(v12, &v66))
  {
    v23 = v67;
    if (!v67)
    {
LABEL_20:

      v24 = v66;
      v25 = 0;
LABEL_46:
      outlined consume of DOCItemSortDescriptor?(v24, v25);
      return 0;
    }

    goto LABEL_24;
  }

LABEL_22:
  if (!*(v12 + 16))
  {
    __break(1u);

    __break(1u);
    return result;
  }

  v57 = *(v12 + 32);
  v27 = *(v12 + 40);
  v26 = *(v12 + 48);
  v28 = *(v12 + 56);
  v29 = v66;
  v30 = v67;

  v23 = v27;
  outlined consume of DOCItemSortDescriptor?(v29, v30);
  v66 = v57;
  *&v67 = v27;
  *(&v67 + 1) = v26;
  v68 = v28;
  if (!v27)
  {
    goto LABEL_20;
  }

LABEL_24:
  v31 = v66;
  LOBYTE(v62) = v66;
  v54 = DOCItemSortMode.isDateMode.getter();
  v32 = v52();
  v33 = (*((*MEMORY[0x277D85000] & *v32) + 0x1D0))();

  v34 = 0;
  v35 = *(v33 + 16);
  while (1)
  {
    if (v35 == v34)
    {
      v36 = 10;
LABEL_30:

      v37 = 0;
      v38 = MEMORY[0x277D84F90];
      v61 = MEMORY[0x277D84F90];
      v39 = (v12 + 56);
      do
      {
        if (v37 >= *(v12 + 16))
        {
          __break(1u);
          goto LABEL_42;
        }

        v40 = *v39;
        v41 = *(v39 - 2);
        v42 = *(v39 - 1);
        LOBYTE(v62) = *(v39 - 24);
        v63 = v41;
        v64 = v42;
        v65 = v40;

        closure #4 in DOCItemCollectionViewController.createSortOptionsMenu(sortDescriptorToShowActive:)(&v62, v31, v54 & 1, v36, v31, v23, &v60);

        if (v60)
        {
          MEMORY[0x24C1FB090](v43);
          if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v38 = v61;
        }

        ++v37;
        v39 += 32;
      }

      while (v59 != v37);

      if (v38 >> 62)
      {
        goto LABEL_43;
      }

      v44 = v23;
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);
        preferredElementSize = v38;
        goto LABEL_40;
      }

LABEL_45:

      v24 = v31;
      v25 = v44;
      goto LABEL_46;
    }

    if (v34 >= *(v33 + 16))
    {
      break;
    }

    v36 = *(v33 + v34++ + 32);
    LOBYTE(v62) = v36;
    if (DOCItemSortMode.isDateMode.getter())
    {
      goto LABEL_30;
    }
  }

LABEL_42:
  __break(1u);
LABEL_43:
  v44 = v23;
  if (!__CocoaSet.count.getter())
  {
    goto LABEL_45;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);

  preferredElementSize = _bridgeCocoaArray<A>(_:)();

LABEL_40:

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  v69.value.super.isa = 0;
  v69.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v47, v46, 0, v69, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v51);
  v49 = v48;
  outlined consume of DOCItemSortDescriptor?(v31, v44);
  return v49;
}

Swift::Void __swiftcall DOCItemCollectionViewController.attachCompactLayoutContextMenu(to:)(UIBarButtonItem *to)
{
  DOCItemCollectionViewController.createCompactLayoutMenu()();
  v3 = v2;
  [(UIBarButtonItem *)to setMenu:v2];
  UIBarButtonItem.configureOverflowRepresentationAsInlineMenu()();
}

void DOCItemCollectionViewController.createCompactLayoutMenu()()
{
  v1 = v0;
  v2 = MEMORY[0x277D84F90];
  v41 = MEMORY[0x277D84F90];
  v40[4] = DOCItemCollectionViewController.actionForSelect()();
  v40[5] = DOCItemCollectionViewController.actionForNewFolder()();
  if ([v0 isEditing] & 1) == 0 && (specialized static DOCDocumentScannerUtil.canPresentScanner.getter() & 1) != 0 && (v3 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration], objc_msgSend(*&v1[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration], sel_isFilesApp)) && (objc_msgSend(v3, sel_isPickerUI) & 1) == 0 && (specialized static DOCDocumentScannerUtil.canPresentScanner.getter())
  {
    v4 = MEMORY[0x24C1FAD20](0xD000000000000013, 0x8000000249BDAC40);
    v5 = [objc_opt_self() systemImageNamed_];

    if (one-time initialization token for scanDocumentActionTitle != -1)
    {
      swift_once();
    }

    MEMORY[0x24C1FAD20](0xD000000000000016, 0x8000000249BDAC60);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v36._rawValue = 0;
    v6 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }

  else
  {
    v6 = 0;
  }

  v40[6] = v6;
  v7 = 0;
  v40[7] = DOCItemCollectionViewController.actionForConnectingToServer()();
  v38[0] = v2;
LABEL_11:
  if (v7 <= 4)
  {
    v8 = 4;
  }

  else
  {
    v8 = v7;
  }

  while (v7 != 4)
  {
    if (v8 == v7)
    {
      __break(1u);
      goto LABEL_39;
    }

    v9 = v40[v7++ + 4];
    if (v9)
    {
      v10 = v9;
      MEMORY[0x24C1FB090](v10, v11, v12, v13, v14);
      if (*((v38[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v2 = v38[0];
      goto LABEL_11;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIActionCSgMd);
  swift_arrayDestroy();
  if (!(v2 >> 62))
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);
    preferredElementSize = v2;
    goto LABEL_22;
  }

LABEL_39:
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);

  preferredElementSize = _bridgeCocoaArray<A>(_:)();

LABEL_22:

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v42.value.super.isa = 0;
  v42.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v17, v16, 0, v42, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v36);
  MEMORY[0x24C1FB090]();
  if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  DOCItemCollectionViewController.createDisplayModeMenu(displayModeToSelect:)(0, 1);
  if (v18)
  {
    v19 = v18;
    MEMORY[0x24C1FB090]();
    if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  memset(v38, 0, sizeof(v38));
  v39 = 0;
  v20 = DOCItemCollectionViewController.createSortOptionsMenu(sortDescriptorToShowActive:)(v38);
  if (v20)
  {
    v21 = v20;
    MEMORY[0x24C1FB090]();
    if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_249BA0290;
  v23 = _DocumentManagerBundle();
  if (v23)
  {
    v24 = v23;
    swift__string._object = 0x8000000249BE0C60;
    v25.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v25.value._object = 0xEB00000000656C62;
    v26._countAndFlagsBits = 0x74704F2077656956;
    v26._object = 0xEC000000736E6F69;
    swift__string._countAndFlagsBits = 0xD000000000000025;
    v27._countAndFlagsBits = 0x74704F2077656956;
    v27._object = 0xEC000000736E6F69;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v26, v25, v24, v27, swift__string);

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v22 + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    v43.value.super.isa = 0;
    v43.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v29, v28, 0, v43, 1, 0xFFFFFFFFFFFFFFFFLL, v22, 0);
    v31 = v30;
    MEMORY[0x24C1FB090]();
    if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v32 = v41;
    if (v41 >> 62)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);

      v33 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);
      v33 = v32;
    }

    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    v44.value.super.isa = 0;
    v44.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v35, v34, 0, v44, 0, 0xFFFFFFFFFFFFFFFFLL, v33, v37);
  }

  else
  {
    __break(1u);
  }
}