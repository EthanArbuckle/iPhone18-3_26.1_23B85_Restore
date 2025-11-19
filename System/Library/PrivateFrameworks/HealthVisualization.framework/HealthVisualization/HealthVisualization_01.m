uint64_t sub_1D145A100(uint64_t a1)
{
  sub_1D1453238();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D145A15C(double *a1, uint64_t a2, int *a3)
{
  v4 = *(a1 + 2);
  v57 = a1[5];
  v58 = a1[4];
  v55 = a1[7];
  v56 = a1[6];
  v54 = a1[8];
  v52 = *a1;
  v53 = a1[9];
  v77 = *a3;
  v78 = *(a3 + 4);
  v5 = *(a3 + 5);
  v63 = *(a3 + 6);
  v6 = *(a3 + 7);
  v60 = *(a3 + 8);
  v7 = *(a3 + 9);
  v76 = *(a3 + 25);
  v75 = v7;
  v62 = *(a2 + 16);
  if (v62)
  {
    v8 = v3;
    v9 = 0;
    v61 = a2 + 32;
    v10 = 41;
    v51 = v3;
    do
    {
      v11 = *(v8 + 16);
      if (v9 >= *(v11 + 16))
      {
        v67 = v77;
        v68 = v78;
        v65 = v75;
        v13 = v76;
      }

      else
      {
        v12 = (v11 + v10);
        v67 = *(v12 - 9);
        v68 = *(v12 - 5);
        v5 = *(v12 - 4);
        v63 = *(v12 - 3);
        v6 = *(v12 - 2);
        v60 = *(v12 - 1);
        v65 = *v12;
        v13 = *(v12 + 8);
      }

      v66 = v13;
      v14 = *(v61 + 8 * v9);
      v15 = *(v14 + 16);

      if (v15 && (v16 = sub_1D1451D94(2u), (v17 & 1) != 0))
      {
        v18 = *(*(v14 + 56) + 40 * v16);
      }

      else
      {
        v18 = MEMORY[0x1E69E7CC0];
      }

      LOBYTE(v64.a) = v63;
      v19.super.isa = DiagramConfiguration.Color.toColor()().super.isa;
      LOBYTE(v64.a) = v6;
      v20 = DiagramConfiguration.LineWidth.toPoints()();
      if (v5 > 1u)
      {
        if (v5 != 3)
        {
          sub_1D15A4908();
          __break(1u);
          return;
        }

        if (!*(v18 + 16))
        {

          goto LABEL_5;
        }

        v30 = *(v18 + 32);

        v85.origin.x = sub_1D145664C();
        v81.y = CGRectGetMinY(v85);
        v64.a = v58;
        v64.b = v57;
        v64.c = v56;
        v64.d = v55;
        v64.tx = v54;
        v64.ty = v53;
        v81.x = v30;
        CGPointApplyAffineTransform(v81, &v64);
        v86.origin.x = sub_1D145664C();
        v82.y = CGRectGetMaxY(v86);
        v64.a = v58;
        v64.b = v57;
        v64.c = v56;
        v64.d = v55;
        v64.tx = v54;
        v64.ty = v53;
        v82.x = v30;
        CGPointApplyAffineTransform(v82, &v64);
        CGContextSetLineWidth(v4, v20);
        CGContextSetLineCap(v4, kCGLineCapRound);
        v31 = [(objc_class *)v19.super.isa CGColor];
        CGContextSetStrokeColorWithColor(v4, v31);

        sub_1D15A4298();
        sub_1D15A42A8();
        CGContextStrokePath(v4);
      }

      else
      {
        if (v5)
        {

          if (*(v14 + 16))
          {
            v32 = sub_1D1451D94(2u);
            if (v33)
            {
              v59 = v5;
              v34 = (*(v14 + 56) + 40 * v32);
              v35 = *v34;
              v36 = v34[2];

              if (*(v35 + 16))
              {
                v37 = *(v35 + 40);

                v64.a = v58;
                v64.b = v57;
                v64.c = v56;
                v64.d = v55;
                v64.tx = v54;
                v64.ty = v53;
                v83.x = 0.0;
                v83.y = v37;
                CGPointApplyAffineTransform(v83, &v64);
                v64.a = v58;
                v64.b = v57;
                v64.c = v56;
                v64.d = v55;
                v64.tx = v54;
                v64.ty = v53;
                v84.x = 0.0;
                v84.y = v37;
                y = CGPointApplyAffineTransform(v84, &v64).y;
                if (!v36)
                {
                  goto LABEL_31;
                }

                LOBYTE(v64.a) = v60;

                static DiagramGenerator.computeRightMarginAnnotationBounds(at:annotation:textAttributes:)(v36, &v64, &v73, v52, y);

                if (v74)
                {

LABEL_31:
                  CGContextSetLineWidth(v4, v20);
                  CGContextSetLineCap(v4, kCGLineCapRound);
                  v39 = [(objc_class *)v19.super.isa CGColor];
                  CGContextSetStrokeColorWithColor(v4, v39);

                  sub_1D15A4298();
                  sub_1D15A42A8();
                  CGContextStrokePath(v4);
LABEL_43:

LABEL_44:
                  v77 = v67;
                  v78 = v68;
                  v75 = v65;
                  v76 = v66;
                  v5 = v59;
                  goto LABEL_6;
                }

                x = v73.origin.x;
                v43 = v73.origin.y;
                CGRectGetWidth(v73);
                CGContextSetLineWidth(v4, v20);
                CGContextSetLineCap(v4, kCGLineCapRound);
                v45 = [(objc_class *)v19.super.isa CGColor];
                CGContextSetStrokeColorWithColor(v4, v45);

                sub_1D15A4298();
                sub_1D15A42A8();
                CGContextStrokePath(v4);
                v46 = sub_1D15A3EF8();

                LOBYTE(v64.a) = v60;
                DiagramConfiguration.TextAttributes.toTextAttributes()();
                type metadata accessor for Key(0);
                sub_1D14587E0();
                v47 = sub_1D15A3E48();

                [v46 drawAtPoint:v47 withAttributes:{x, v43}];
LABEL_42:

                v8 = v51;
                goto LABEL_43;
              }

LABEL_34:

              goto LABEL_38;
            }
          }
        }

        else
        {

          if (*(v14 + 16))
          {
            v21 = sub_1D1451D94(2u);
            if (v22)
            {
              v59 = v5;
              v23 = (*(v14 + 56) + 40 * v21);
              v24 = *v23;
              v25 = v23[2];
              v26 = v23[4];

              if (!*(v24 + 16))
              {

                goto LABEL_34;
              }

              v27 = *(v24 + 40);

              v64.a = v58;
              v64.b = v57;
              v64.c = v56;
              v64.d = v55;
              v64.tx = v54;
              v64.ty = v53;
              v79.x = 0.0;
              v79.y = v27;
              v28 = CGPointApplyAffineTransform(v79, &v64);
              v64.a = v58;
              v64.b = v57;
              v64.c = v56;
              v64.d = v55;
              v64.tx = v54;
              v64.ty = v53;
              v80.x = 0.0;
              v80.y = v27;
              CGPointApplyAffineTransform(v80, &v64);
              CGContextSetLineWidth(v4, v20);
              CGContextSetLineCap(v4, kCGLineCapRound);
              v29 = [(objc_class *)v19.super.isa CGColor];
              CGContextSetStrokeColorWithColor(v4, v29);

              sub_1D15A4298();
              sub_1D15A42A8();
              CGContextStrokePath(v4);
              if (v25)
              {
                LOBYTE(v64.a) = v60;

                static DiagramGenerator.computeLeftMarginAnnotationBounds(at:annotation:above:textAttributes:)(v25, 1, &v64, v69, 0.0, v28.y);
                if (v70)
                {
                }

                else
                {
                  v41 = *v69;
                  v40 = *&v69[1];
                  v50 = sub_1D15A3EF8();

                  LOBYTE(v64.a) = v60;
                  DiagramConfiguration.TextAttributes.toTextAttributes()();
                  type metadata accessor for Key(0);
                  sub_1D14587E0();
                  v42 = sub_1D15A3E48();

                  [v50 drawAtPoint:v42 withAttributes:{v41, v40}];

                  v8 = v51;
                }
              }

              if (!v26)
              {

                goto LABEL_44;
              }

              LOBYTE(v64.a) = v60;
              static DiagramGenerator.computeLeftMarginAnnotationBounds(at:annotation:above:textAttributes:)(v25, 0, &v64, v71, 0.0, v28.y);

              if ((v72 & 1) == 0)
              {
                v49 = *v71;
                v48 = *&v71[1];
                v46 = sub_1D15A3EF8();

                LOBYTE(v64.a) = v60;
                DiagramConfiguration.TextAttributes.toTextAttributes()();
                type metadata accessor for Key(0);
                sub_1D14587E0();
                v47 = sub_1D15A3E48();

                [v46 drawAtPoint:v47 withAttributes:{v49, v48}];
                goto LABEL_42;
              }

LABEL_38:

              goto LABEL_43;
            }
          }
        }
      }

LABEL_5:
      v77 = v67;
      v78 = v68;
      v75 = v65;
      v76 = v66;
LABEL_6:
      ++v9;
      v10 += 32;
    }

    while (v62 != v9);
  }
}

void sub_1D145AAC0(double *a1, char a2, char *a3)
{
  v4 = *(a1 + 2);
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v10 = a1[8];
  v9 = a1[9];
  v101 = a3[1];
  v102 = *a3;
  v99 = a3[3];
  v100 = a3[2];
  v98 = a3[4];
  v11 = *(a3 + 5);
  *(v140 + 14) = *(a3 + 19);
  v140[0] = v11;
  v95 = *(v3 + 96);
  v92 = *(v95 + 16);
  if (!v92)
  {
    return;
  }

  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  v90 = v6;
  v91 = v5;
  v104 = v7;
  while (1)
  {
    if (v12 >= *(v95 + 16))
    {
      __break(1u);
      goto LABEL_95;
    }

    v14 = *(v94 + 16);
    if (v12 >= *(v14 + 16))
    {
      v109[0] = v140[0];
      v16 = *(v140 + 14);
    }

    else
    {
      v15 = v14 + 32 * v12;
      v101 = *(v15 + 33);
      v102 = *(v15 + 32);
      v99 = *(v15 + 35);
      v100 = *(v15 + 34);
      v98 = *(v15 + 36);
      v109[0] = *(v15 + 37);
      v16 = *(v15 + 51);
    }

    *(v109 + 14) = v16;
    v17 = *(v95 + 32 + 8 * v12);
    v18 = *(v17 + 16);

    if (!v18)
    {
      v23 = v13;
LABEL_34:

      v34 = v13;
      goto LABEL_35;
    }

    v19 = sub_1D1451D94(0);
    if ((v20 & 1) != 0 && (v21 = *(*(v17 + 56) + 40 * v19), (v22 = *(v21 + 16)) != 0))
    {
      v108 = v13;

      sub_1D145B8B4(0, v22, 0);
      sub_1D15A4148();
      v23 = v108;
      v24 = (v21 + 40);
      do
      {
        v25 = *(v24 - 1);
        v26 = *v24;
        sub_1D15A4138();
        sub_1D15A4128();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v107.a = v6;
        v107.b = v5;
        v107.c = v7;
        v107.d = v8;
        v107.tx = v10;
        v107.ty = v9;
        v141.x = v25;
        v141.y = v26;
        v27 = CGPointApplyAffineTransform(v141, &v107);

        v108 = v23;
        v29 = *(*&v23 + 16);
        v28 = *(*&v23 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1D145B8B4((v28 > 1), v29 + 1, 1);
          v23 = v108;
        }

        *(*&v23 + 16) = v29 + 1;
        *(*&v23 + 16 * v29 + 32) = v27;
        v24 += 2;
        --v22;
      }

      while (v22);

      v13 = MEMORY[0x1E69E7CC0];
      if (!*(v17 + 16))
      {
        goto LABEL_34;
      }
    }

    else
    {
      v23 = v13;
      if (!*(v17 + 16))
      {
        goto LABEL_34;
      }
    }

    v30 = sub_1D1451D94(1u);
    if ((v31 & 1) == 0)
    {
      goto LABEL_34;
    }

    v32 = *(*(v17 + 56) + 40 * v30);

    v33 = *(v32 + 16);
    if (!v33)
    {
      goto LABEL_34;
    }

    v108 = v13;
    sub_1D145B8B4(0, v33, 0);
    sub_1D15A4148();
    v34 = v108;
    v35 = (v32 + 40);
    do
    {
      v36 = *(v35 - 1);
      v37 = *v35;
      sub_1D15A4138();
      sub_1D15A4128();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v107.a = v6;
      v107.b = v5;
      v107.c = v7;
      v107.d = v8;
      v107.tx = v10;
      v107.ty = v9;
      v142.x = v36;
      v142.y = v37;
      v38 = CGPointApplyAffineTransform(v142, &v107);

      v108 = v34;
      v40 = *(*&v34 + 16);
      v39 = *(*&v34 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1D145B8B4((v39 > 1), v40 + 1, 1);
        v34 = v108;
      }

      *(*&v34 + 16) = v40 + 1;
      *(*&v34 + 16 * v40 + 32) = v38;
      v35 += 2;
      --v33;
    }

    while (v33);

    v13 = MEMORY[0x1E69E7CC0];
LABEL_35:
    LOBYTE(v107.a) = v102;
    v41 = DiagramConfiguration.LineWidth.toPoints()();
    LOBYTE(v107.a) = v98;
    v42 = DiagramConfiguration.LineRadius.toFloat()();
    LOBYTE(v107.a) = v99;
    v43 = DiagramConfiguration.LineRadius.toFloat()();
    LOBYTE(v107.a) = v101;
    v44.super.isa = DiagramConfiguration.Color.toColor()().super.isa;
    LOBYTE(v107.a) = v100;
    v45.super.isa = DiagramConfiguration.Color.toColor()().super.isa;
    if ((a2 & 1) == 0)
    {
      break;
    }

    v46 = *(*&v34 + 16);
    if (!v46)
    {

      v140[0] = v109[0];
      *(v140 + 14) = *(v109 + 14);
      v7 = v104;
      goto LABEL_6;
    }

    isa = v44.super.isa;
    v105 = v12;
    v107.a = v13;
    v47 = v41 * 0.8;
    sub_1D145BF98(0, v46, 0);
    sub_1D15A4148();
    v48 = v43 + v43;
    a = v107.a;
    v50 = (*&v34 + 40);
    do
    {
      v51 = *(v50 - 1);
      v52 = *v50;
      sub_1D15A4138();
      sub_1D15A4128();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v107.a = a;
      v54 = *(*&a + 16);
      v53 = *(*&a + 24);
      if (v54 >= v53 >> 1)
      {
        sub_1D145BF98((v53 > 1), v54 + 1, 1);
        a = v107.a;
      }

      *(*&a + 16) = v54 + 1;
      v55 = (*&a + 32 * v54);
      v55[4] = v51 - v43;
      v55[5] = v52 - v43;
      v55[6] = v48;
      v55[7] = v48;
      v50 += 2;
      --v46;
    }

    while (v46);

    v66 = [(objc_class *)v45.super.isa CGColor];
    CGContextSetFillColorWithColor(v4, v66);

    v12 = v105;
    if (v47 > 0.0)
    {
      CGContextSetBlendMode(v4, kCGBlendModeClear);
      v67 = *(*&a + 16);
      if (v67)
      {
        v68 = -v47;
        v69 = (*&a + 56);
        do
        {
          v70 = *(v69 - 3);
          v71 = *(v69 - 2);
          v72 = *(v69 - 1);
          v73 = *v69;
          sub_1D15A4138();
          sub_1D15A4128();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v143.origin.x = v70;
          v143.origin.y = v71;
          v143.size.width = v72;
          v143.size.height = v73;
          v144 = CGRectInset(v143, v68, v68);
          CGContextFillEllipseInRect(v4, v144);

          v69 += 4;
          --v67;
        }

        while (v67);
      }
    }

    CGContextSetBlendMode(v4, kCGBlendModeNormal);
    v74 = *(*&a + 16);
    if (v74)
    {
      v75 = (*&a + 56);
      v6 = v90;
      do
      {
        v76 = *(v75 - 3);
        v77 = *(v75 - 2);
        v78 = *(v75 - 1);
        v79 = *v75;
        sub_1D15A4138();
        sub_1D15A4128();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v145.origin.x = v76;
        v145.origin.y = v77;
        v145.size.width = v78;
        v145.size.height = v79;
        CGContextFillEllipseInRect(v4, v145);

        v75 += 4;
        --v74;
      }

      while (v74);

      v140[0] = v109[0];
      *(v140 + 14) = *(v109 + 14);
    }

    else
    {

      v140[0] = v109[0];
      *(v140 + 14) = *(v109 + 14);
      v6 = v90;
    }

    v5 = v91;
    v7 = v104;
LABEL_5:
    v13 = MEMORY[0x1E69E7CC0];
LABEL_6:
    if (++v12 == v92)
    {
      return;
    }
  }

  v56 = *(*&v23 + 16);
  v7 = v104;
  if (!v56)
  {

    v140[0] = v109[0];
    *(v140 + 14) = *(v109 + 14);
    goto LABEL_6;
  }

  v103 = v45.super.isa;
  v97 = v44.super.isa;
  if (v42 <= 0.0)
  {
    Mutable = CGPathCreateMutable();
    sub_1D15A4148();
    sub_1D15A4138();
    sub_1D15A4128();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v129 = 0;
    v130 = 0;
    v128 = 0x3FF0000000000000;
    v131 = 0x3FF0000000000000;
    v132 = 0;
    v133 = 0;
    sub_1D15A43A8();

    v80 = v56 - 1;
    if (v56 == 1)
    {
      v7 = v104;
    }

    else
    {
      v106 = v12;
      v81 = *&v23 + 56;
      do
      {
        sub_1D15A4138();
        sub_1D15A4128();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v135 = 0;
        v136 = 0;
        v134 = 0x3FF0000000000000;
        v137 = 0x3FF0000000000000;
        v138 = 0;
        v139 = 0;
        sub_1D15A43C8();

        v81 += 16;
        --v80;
      }

      while (v80);
      v7 = v104;
LABEL_80:
      v12 = v106;
    }

    v82 = Mutable;
    CGContextSetLineWidth(v4, v41);
    CGContextSetLineJoin(v4, kCGLineJoinRound);
    CGContextSetLineCap(v4, kCGLineCapRound);
    CGContextSetBlendMode(v4, kCGBlendModeNormal);
    v83 = [(objc_class *)v97 CGColor];
    CGContextSetStrokeColorWithColor(v4, v83);

    CGContextAddPath(v4, v82);
    CGContextStrokePath(v4);

    v140[0] = v109[0];
    *(v140 + 14) = *(v109 + 14);
    goto LABEL_5;
  }

  v106 = v12;
  v107.a = v23;
  *&v107.b = *&v23 + 32;
  *&v107.c = 1;
  *&v107.d = (2 * v56) | 1;

  sub_1D145B8D8(&unk_1F4D3AB38);
  b = v107.b;
  c = v107.c;
  d = v107.d;

  Mutable = CGPathCreateMutable();
  v61 = *(*&v23 + 16);

  swift_unknownObjectRetain();
  v89 = v61;
  if (!v61)
  {
    goto LABEL_56;
  }

  v62 = *&d >> 1;
  if (*&c <= *&d >> 1)
  {
    *&v63 = *&d >> 1;
  }

  else
  {
    v63 = c;
  }

  if (!*(*&v23 + 16))
  {
    goto LABEL_95;
  }

  v87 = *&v63 - *&c;
  v64 = __OFSUB__(v62, *&c);
  v65 = v62 - *&c;
  v88 = v65;
  if (!v65)
  {
    goto LABEL_56;
  }

  if ((v65 < 0) ^ v64 | (v65 == 0))
  {
    goto LABEL_96;
  }

  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v111 = 0;
  v112 = 0;
  v110 = 0x3FF0000000000000;
  v113 = 0x3FF0000000000000;
  v114 = 0;
  v115 = 0;
  sub_1D15A43A8();

  v5 = v91;
  v7 = v104;
  if (v61 == 1)
  {
LABEL_56:
    swift_unknownObjectRelease_n();
    swift_bridgeObjectRelease_n();
    goto LABEL_80;
  }

  v84 = *&b + 16 * *&c + 24;
  v85 = *&v23 + 56;
  v86 = 1;
  while (v86 < *(*&v23 + 16))
  {
    if (v88 == v86)
    {
      goto LABEL_56;
    }

    if (v87 == v86)
    {
      goto LABEL_96;
    }

    sub_1D15A4148();
    sub_1D15A4138();
    sub_1D15A4128();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (v86 >= v56 - 1)
    {
      v123 = 0;
      v124 = 0;
      v122 = 0x3FF0000000000000;
      v125 = 0x3FF0000000000000;
      v126 = 0;
      v127 = 0;
      sub_1D15A43C8();
    }

    else
    {
      v117 = 0;
      v118 = 0;
      v116 = 0x3FF0000000000000;
      v119 = 0x3FF0000000000000;
      v120 = 0;
      v121 = 0;
      sub_1D15A43B8();
    }

    v6 = v90;
    ++v86;

    v84 += 16;
    v85 += 16;
    v5 = v91;
    v7 = v104;
    if (v89 == v86)
    {
      goto LABEL_56;
    }
  }

LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
}

char *sub_1D145B78C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D14531D4(0, &qword_1EE05B438, type metadata accessor for CGPoint, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1D145B8B4(char *a1, int64_t a2, char a3)
{
  result = sub_1D145B78C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1D145B8D8(uint64_t result)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = (v2 >> 1) - v3;
  if (__OFSUB__(v2 >> 1, v3))
  {
    __break(1u);
    goto LABEL_34;
  }

  v5 = result;
  v6 = *(result + 16);
  if ((v2 & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = v1[1];
  sub_1D15A4BC8();
  swift_unknownObjectRetain();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    swift_unknownObjectRelease();
    v8 = MEMORY[0x1E69E7CC0];
  }

  v9 = *(v8 + 16);
  if (v7 + 16 * v3 + 16 * v4 != v8 + 16 * v9 + 32)
  {

LABEL_7:
    v10 = v4;
    goto LABEL_9;
  }

  v11 = *(v8 + 24);

  v12 = (v11 >> 1) - v9;
  v13 = __OFADD__(v4, v12);
  v10 = v4 + v12;
  if (v13)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_9:
  result = v4 + v6;
  if (__OFADD__(v4, v6))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v10 < result)
  {
    if (v10 + 0x4000000000000000 < 0)
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v14 = 2 * v10;
    if (v14 > result)
    {
      result = v14;
    }
  }

  result = sub_1D145BAE8(result);
  v16 = v1[2];
  v15 = v1[3];
  v17 = (v15 >> 1) - v16;
  if (__OFSUB__(v15 >> 1, v16))
  {
    goto LABEL_35;
  }

  v18 = (v1[1] + 16 * v16 + 16 * v17);
  if ((v15 & 1) == 0)
  {
LABEL_20:
    v21 = v17;
    goto LABEL_22;
  }

  sub_1D15A4BC8();
  swift_unknownObjectRetain();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
    v19 = MEMORY[0x1E69E7CC0];
  }

  v20 = *(v19 + 16);
  if (v18 != (v19 + 16 * v20 + 32))
  {

    goto LABEL_20;
  }

  v22 = *(v19 + 24);

  v23 = (v22 >> 1) - v20;
  v13 = __OFADD__(v17, v23);
  v21 = v17 + v23;
  if (v13)
  {
LABEL_41:
    __break(1u);
    return result;
  }

LABEL_22:
  v24 = v21 - v17;
  if (__OFSUB__(v21, v17))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (!v6)
  {
    goto LABEL_28;
  }

  if (v24 < v6)
  {
    goto LABEL_37;
  }

  result = memcpy(v18, (v5 + 32), 16 * v6);
  if (v6 <= 0)
  {
    goto LABEL_28;
  }

  result = v17 + v6;
  if (__OFADD__(v17, v6))
  {
    goto LABEL_39;
  }

  result = sub_1D145BD6C(result);
LABEL_28:
  if (v6 == v24)
  {

    return sub_1D15235E0(v5, v6);
  }

  return result;
}

uint64_t sub_1D145BAE8(uint64_t result)
{
  v2 = result;
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  *v1 = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = v1[2];
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = v1[1];
  sub_1D15A4BC8();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v9 + 16);
  if (v8 + 16 * v6 + 16 * v7 != v9 + 16 * v10 + 32)
  {

    goto LABEL_9;
  }

  v11 = *(v9 + 24);

  v12 = (v11 >> 1) - v10;
  v13 = __OFADD__(v7, v12);
  v7 += v12;
  if (!v13)
  {
LABEL_9:
    if (v7 >= v2)
    {
LABEL_17:
      *v1 = v5;
      return result;
    }

LABEL_10:
    v14 = v1[2];
    if (__OFSUB__(v4, v14))
    {
      __break(1u);
    }

    else
    {
      result = sub_1D145BC60(v4 - v14, v2);
      if (v4 >= v14)
      {
        v5 = result;
        v15 = result + 32;
        result = memcpy((result + 32), (v1[1] + 16 * v14), 16 * (v4 - v14));
        if (!__OFSUB__(0, v14))
        {
          v16 = *(v5 + 16);
          v13 = __OFADD__(v14, v16);
          v17 = v14 + v16;
          if (!v13)
          {
            if (v17 >= v14)
            {
              if ((v17 & 0x8000000000000000) == 0)
              {
                v18 = (2 * v17) | 1;
                result = swift_unknownObjectRelease();
                v1[1] = v15 - 16 * v14;
                v1[2] = v14;
                v1[3] = v18;
                goto LABEL_17;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1D145BC60(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D145BD08(0, &qword_1EE05B438, type metadata accessor for CGPoint, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void sub_1D145BD08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D145BD6C(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = v3 >> 1;
  v5 = __OFSUB__(v3 >> 1, v2);
  v6 = (v3 >> 1) - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result - v6;
  if (__OFSUB__(result, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return result;
  }

  sub_1D15A4BC8();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x1E69E7CC0];
  }

  v8 = *(result + 16);
  v5 = __OFADD__(v8, v7);
  v9 = v8 + v7;
  if (v5)
  {
    goto LABEL_13;
  }

  *(result + 16) = v9;

  v10 = v4 + v7;
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  *(v1 + 24) = v3 & 1 | (2 * v10);
  return result;
}

id sub_1D145BE24(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

id sub_1D145BE90(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if ([a1 userInterfaceStyle] == 2)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

char *sub_1D145BF98(char *a1, int64_t a2, char a3)
{
  result = sub_1D145BFB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D145BFB8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D14531D4(0, &qword_1EE059680, type metadata accessor for CGRect, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

void sub_1D145C0E0(CGContext *a1, double *a2, unsigned __int8 *a3, CGFloat *a4, double a5)
{
  v7 = a2[1];
  v8 = a2[2];
  v10 = a2[3];
  v9 = a2[4];
  v11 = a2[5];
  v12 = a2[6];
  v58 = *a3;
  v13 = a3[1];
  v14 = a3[3];
  v56 = a3[4];
  LODWORD(v15) = a3[5];
  v16 = a3[6];
  v17 = *a4;
  sub_1D145664C();
  v67 = v8;
  v68 = v7;
  v82.a = v7;
  v82.b = v8;
  v82.c = v10;
  v82.d = v9;
  v82.tx = v11;
  v82.ty = v12;
  v83.x = 0.0;
  y = CGPointApplyAffineTransform(v83, &v82).y;
  v18 = *(v5 + 160);
  if (*(v5 + 168))
  {
    v18 = 0.0;
  }

  v62 = v18;
  if (v15 > 1)
  {
    v61 = 1;
  }

  else
  {
    v61 = sub_1D15A4BA8();
  }

  v15 = v15;

  if (v16 && v16 != 1)
  {
    v57 = 1;
  }

  else
  {
    v57 = sub_1D15A4BA8();
  }

  if (v56)
  {
    v19 = -1.0;
  }

  else
  {
    v19 = -2.0;
  }

  if ((flt_1D15B3C74[v15] + v19) < 0.0)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = flt_1D15B3C74[v15] + v19;
  }

  LOBYTE(v82.a) = v13;
  DiagramConfiguration.TextAttributes.toTextAttributes()();
  Mutable = CGPathCreateMutable();
  v82.a = v17;

  v22 = 0;
  sub_1D145D014(&v82);
  path = Mutable;
  v54 = v14;
  c = a1;
  a = v82.a;
  v66 = *(*&v82.a + 16);
  if (v66)
  {
    v24 = 0;
    v25 = y + v62;
    v65 = *&v82.a + 32;
    v26 = v25 + (v20 * 0.5) + 2.0;
    v27 = MEMORY[0x1E69E7CC0];
    v60 = v82.a;
    do
    {
      while (1)
      {
        if (v24 >= *(*&a + 16))
        {
          goto LABEL_55;
        }

        v28 = v65 + 40 * v24;
        v29 = *(v28 + 8);
        v30 = *(v28 + 24);
        v84.x = *(v28 + 16);
        v69.a = v68;
        v69.b = v67;
        v69.c = v10;
        v69.d = v9;
        v69.tx = v11;
        v69.ty = v12;
        v84.y = 0.0;
        *&v31 = *&CGPointApplyAffineTransform(v84, &v69);
        if (v30 < 2)
        {
          break;
        }

        if (v30 != 2)
        {
          goto LABEL_56;
        }

        if ((v57 & 1) == 0)
        {
          v82.b = 0.0;
          v82.c = 0.0;
          v82.a = 1.0;
          v82.d = 1.0;
          v82.tx = 0.0;
          v82.ty = 0.0;

          sub_1D15A43A8();
          goto LABEL_33;
        }

LABEL_27:

        ++v24;
        if (v29)
        {
          goto LABEL_34;
        }

LABEL_19:
        if (v24 == v66)
        {
          goto LABEL_49;
        }
      }

      if (v61)
      {
        goto LABEL_27;
      }

      switch(v58)
      {
        case 1:

          goto LABEL_31;
        default:
          v32 = sub_1D15A4BA8();

          if (v32)
          {
LABEL_31:
            v71 = 0;
            v72 = 0;
            v70 = 0x3FF0000000000000;
            v73 = 0x3FF0000000000000;
            v74 = 0;
            v75 = 0;
            sub_1D15A43A8();
          }

          else
          {
            v77 = 0;
            v78 = 0;
            v76 = 0x3FF0000000000000;
            v79 = 0x3FF0000000000000;
            v80 = 0;
            v81 = 0;
            sub_1D15A43A8();
          }

          break;
      }

LABEL_33:
      sub_1D15A43C8();
      ++v24;
      if (!v29)
      {
        goto LABEL_19;
      }

LABEL_34:
      v33 = sub_1D15A3EF8();
      type metadata accessor for Key(0);
      sub_1D1458AD4(&qword_1EE05AD28, type metadata accessor for Key);
      v34 = sub_1D15A3E48();
      [v33 sizeWithAttributes_];
      v36 = v35;
      v38 = v37;

      v39 = v31 - v36 * 0.5;
      v40 = v31 + v36 * 0.5;
      if (v39 >= 0.0)
      {
        v41 = 0.0;
        if (v40 <= a5)
        {
          goto LABEL_39;
        }
      }

      else if (v40 <= a5)
      {
        v41 = 0.0 - v39;
        goto LABEL_39;
      }

      v41 = a5 - v40;
LABEL_39:
      v42 = v39 + v41;
      v43 = -*(v27 + 2);
      v22 = -1;
      v44 = v27 + 56;
      while (v43 + v22 != -1)
      {
        if (++v22 >= *(v27 + 2))
        {
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          sub_1D15A4908();
          __break(1u);

          __break(1u);
          JUMPOUT(0x1D145CAD0);
        }

        v45 = v44 + 32;
        v85.origin.x = v42;
        v85.origin.y = v26;
        v85.size.width = v36;
        v85.size.height = v38;
        v46 = CGRectIntersectsRect(v85, *(v44 - 24));
        v44 = v45;
        if (v46)
        {

          a = v60;
          goto LABEL_19;
        }
      }

      v47 = sub_1D15A3EF8();

      v48 = sub_1D15A3E48();
      [v47 drawAtPoint:v48 withAttributes:{v42, v26}];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1D145D43C(0, *(v27 + 2) + 1, 1, v27);
      }

      a = v60;
      v22 = *(v27 + 2);
      v49 = *(v27 + 3);
      if (v22 >= v49 >> 1)
      {
        v27 = sub_1D145D43C((v49 > 1), v22 + 1, 1, v27);
      }

      *(v27 + 2) = v22 + 1;
      v50 = &v27[32 * v22];
      v50[4] = v42;
      v50[5] = v26;
      v50[6] = v36;
      v50[7] = v38;
    }

    while (v24 != v66);
  }

LABEL_49:

  if (!CGPathIsEmpty(path))
  {
    CGContextSetBlendMode(c, kCGBlendModeNormal);
    CGContextSetLineCap(c, kCGLineCapRound);
    v51 = 2.0;
    if (v56)
    {
      v51 = 1.0;
    }

    CGContextSetLineWidth(c, v51);
    LOBYTE(v69.a) = v54;
    isa = DiagramConfiguration.Color.toColor()().super.isa;
    v53 = [(objc_class *)isa CGColor];

    CGContextSetStrokeColorWithColor(c, v53);
    CGContextAddPath(c, path);
    CGContextStrokePath(c);
  }
}

uint64_t sub_1D145CB10(uint64_t result, uint64_t *a2, double a3, double a4)
{
  v6 = result;
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  v12 = a2[5];
  v13 = a2[6];
  v14 = *(v4 + 64);
  if ((v14 & 0xFE00000000) != 0x200000000)
  {
    v15 = *(v4 + 16);
    if (v15)
    {
      v27 = *a2;
      v28 = v8;
      v29 = v9;
      v30 = v10;
      v31 = v11;
      v32 = v12;
      v33 = v13;
      *v22 = v14;
      v22[2] = BYTE2(v14);
      v23 = BYTE3(v14);
      v24 = BYTE4(v14) & 1;
      v25 = BYTE5(v14);
      v26 = BYTE6(v14);
      v20 = v15;
      v21 = *(v4 + 24);

      sub_1D145C0E0(v6, &v27, v22, &v20, a3);

      v14 = *(v4 + 64);
    }
  }

  if ((v14 & 0xFF00000000) != 0x300000000)
  {
    v17 = *(v4 + 72) | (*(v4 + 76) << 32);
    if ((*(v4 + 72) & 0xFF000000) != 0x2000000)
    {
      v18 = *(v4 + 40);
      if (v18)
      {
        v27 = v7;
        v28 = v8;
        v29 = v9;
        v30 = v10;
        v31 = v11;
        v32 = v12;
        v33 = v13;
        v22[0] = HIBYTE(v14);
        *&v22[1] = v17;
        v23 = BYTE2(v17);
        v24 = BYTE3(v17) & 1;
        v25 = BYTE4(v17);
        v26 = BYTE5(v17);
        v20 = v18;
        v21 = *(v4 + 48);

        sub_1D151BCD4(v6, &v27, v22, &v20, v19, a4);
      }
    }
  }

  return result;
}

void sub_1D145CCBC(uint64_t a1)
{
  v26 = *(v1 + 160);
  v25 = *(v26 + 16);
  if (v25)
  {
    v2 = 0;
    v28 = *(a1 + 16);
    v30 = *(a1 + 48);
    v31 = *(a1 + 32);
    v3 = 0x1E69A4000uLL;
    v29 = *(a1 + 64);
    while (v2 < *(v26 + 16))
    {
      v27 = v2;
      v4 = (v26 + 32 + 24 * v2);
      v5 = v4[1];
      v6 = *(*v4 + 16);
      v33 = *v4;

      v32 = v6;
      if (v6)
      {
        v7 = 0;
        v8 = v33 + 56;
        while (v7 < *(v33 + 16))
        {
          v35 = *(v8 - 8);
          *&v34.a = v31;
          *&v34.c = v30;
          *&v34.tx = v29;
          v9 = CGPointApplyAffineTransform(v35, &v34);

          v10 = sub_1D15A3EF8();
          type metadata accessor for Key(0);
          sub_1D14587E0();
          v11 = sub_1D15A3E48();
          [v10 sizeWithAttributes_];
          v13 = v12;
          v15 = v14;

          sub_1D1456508(0, &qword_1EE059678, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
          v16 = swift_allocObject();
          *(v16 + 16) = xmmword_1D15AE100;
          v17 = objc_allocWithZone(*(v3 + 1240));
          v18 = v3;
          v19 = sub_1D15A3EF8();
          v20 = sub_1D15A3E48();
          v21 = [v17 initWithText:v19 inRect:v20 withAttributes:{v9.x + v13 * -0.5, v9.y - v5 - v15, v13, v15}];

          if (!v21)
          {
            goto LABEL_14;
          }

          ++v7;
          v22 = objc_opt_self();
          *(v16 + 32) = v21;
          sub_1D15234EC();
          v23 = sub_1D15A40A8();

          v24 = [objc_opt_self() clearColor];
          [v22 drawStrings:v23 outlineWidth:v24 outlineColor:v28 context:8.0];

          v8 += 32;
          v3 = v18;
          if (v32 == v7)
          {
            goto LABEL_3;
          }
        }

        __break(1u);
        break;
      }

LABEL_3:
      v2 = v27 + 1;

      if (v27 + 1 == v25)
      {
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }
}

uint64_t sub_1D145D014(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D145D1B4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_1D145D1C8(v5);
  *a1 = v2;
  return result;
}

char *sub_1D145D080(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D1452A24(0, &qword_1EE0596A0, &type metadata for DiagramAxisLabel, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1D145D1C8(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_1D15A4B58();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1D15A40F8();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1D151D404(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1D145D2C0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D145D2C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 40 * a3 - 40;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      if (*(v10 + 72) == *(v10 + 32))
      {
        if (*(v10 + 56) >= *(v10 + 16))
        {
          goto LABEL_4;
        }
      }

      else
      {
        type metadata accessor for UILayoutPriority(0);
        sub_1D1458AD4(&qword_1EE056728, type metadata accessor for UILayoutPriority);
        result = sub_1D15A3EA8();
        if ((result & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      if (!v6)
      {
        break;
      }

      v11 = *(v10 + 56);
      v12 = *(v10 + 64);
      v13 = *(v10 + 40);
      v14 = *(v10 + 16);
      *(v10 + 40) = *v10;
      v15 = *(v10 + 72);
      *(v10 + 56) = v14;
      *(v10 + 72) = *(v10 + 32);
      *v10 = v13;
      *(v10 + 16) = v11;
      *(v10 + 24) = v12;
      *(v10 + 32) = v15;
      v10 -= 40;
      if (__CFADD__(v9++, 1))
      {
LABEL_4:
        ++v4;
        v7 += 40;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

char *sub_1D145D43C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D145BD08(0, &qword_1EE059680, type metadata accessor for CGRect, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

id sub_1D145D5B8(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t DiagramLine.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DiagramAxis.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DiagramFactory.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D145D690()
{
  v1 = type metadata accessor for CoreChartTrendDistributionSeries();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v13 = *(*(v1 - 8) + 64);

  v4 = type metadata accessor for CoreChartTrendViewModel(0);
  v5 = v0 + v3 + *(v4 + 28);
  v6 = sub_1D15A22A8();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v8 = type metadata accessor for CoreChartTrendLineViewModel(0);

  v9 = v0 + v3 + *(v4 + 32);
  if (!(*(*(v8 - 8) + 48))(v9, 1, v8))
  {
    v7(v9, v6);
  }

  v10 = *(v1 + 20);
  v11 = sub_1D15A2838();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v13, v2 | 7);
}

uint64_t sub_1D145D894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CoreChartTrendViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1D15A2838();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D145D984(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for CoreChartTrendViewModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1D15A2838();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t getEnumTagSinglePayload for LevelView.LayoutConfiguration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LevelView.LayoutConfiguration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1D145DACC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D145DAEC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void *sub_1D145DB44@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_1D145DB9C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1D145DBCC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1D145DBF8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

_DWORD *sub_1D145DCE4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1D145DD0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D15A3F38();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D145DD44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1D1476D60(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1D145DD84(uint64_t a1, uint64_t a2)
{
  sub_1D1476DF0(0, &qword_1EC62FFD0, sub_1D147598C, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D145DE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D15A22A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D145DED4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D15A22A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D145DF8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D145DFC4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D1486774(0, &qword_1EE05B3E8, MEMORY[0x1E69A3D00]);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = &a1[*(a3 + 20)];

      return v13(v14, a2, v12);
    }

    else
    {
      sub_1D1486774(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
      v16 = v15;
      v17 = *(*(v15 - 8) + 48);
      v18 = &a1[*(a3 + 24)];

      return v17(v18, a2, v16);
    }
  }
}

_BYTE *sub_1D145E120(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    sub_1D1486774(0, &qword_1EE05B3E8, MEMORY[0x1E69A3D00]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 20)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1D1486774(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = &v5[*(a4 + 24)];

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1D145E278(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ActivitySummarySnidgetViewModelExtractor.Metadata(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D145E324(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ActivitySummarySnidgetViewModelExtractor.Metadata(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D145E3C8@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D14868E4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

__n128 sub_1D145E40C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D145E418()
{
  MEMORY[0x1D388BFE0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D145E450()
{
  v1 = sub_1D15A31D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D145E510(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D15A23F8();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  sub_1D1491814(0, &qword_1EE05AAE0, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[10] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1D145E64C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1D15A23F8();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    sub_1D1491814(0, &qword_1EE05AAE0, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
    if (*(*(v12 - 8) + 84) != a3)
    {
      *(a1 + a4[10] + 8) = (a2 - 1);
      return;
    }

    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1D145E784@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D15A3848();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1D145E830()
{
  v1 = sub_1D15A31D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D145E8FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D15A26A8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D145E9A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D15A26A8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D145EA4C()
{
  MEMORY[0x1D388BFE0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D145EA88()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D145EAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TimeBasedDistribution();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for TimeBasedDistributionChartModel();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D145EBE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TimeBasedDistribution();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for TimeBasedDistributionChartModel();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D145ED0C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.Metadata(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D145EDB8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.Metadata(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D145EE5C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D14A0520(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = &a1[*(a3 + 24)];

      return v13(v14, a2, v12);
    }

    else
    {
      sub_1D14A0520(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
      v16 = v15;
      v17 = *(*(v15 - 8) + 48);
      v18 = &a1[*(a3 + 28)];

      return v17(v18, a2, v16);
    }
  }
}

_BYTE *sub_1D145EFB8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    sub_1D14A0520(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 24)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1D14A0520(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = &v5[*(a4 + 28)];

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

__n128 sub_1D145F148(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D145F154()
{
  MEMORY[0x1D388BFE0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D145F18C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D145F1C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_1D145F204(void *a1@<X0>, double *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  *a2 = (*(v4 + 16))(v3, v4);
}

uint64_t sub_1D145F25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for TimeBasedDistributionChartDesign();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1D15A3268();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D145F380(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for TimeBasedDistributionChartDesign();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1D15A3268();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D145F4A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D15A37C8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D145F534@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC19HealthVisualization16DiagramImageView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D145F590(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC19HealthVisualization16DiagramImageView_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

__n128 sub_1D145F5FC@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC19HealthVisualization16DiagramImageView_lastUsedModelSpace;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

__n128 sub_1D145F658(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *a2 + OBJC_IVAR____TtC19HealthVisualization16DiagramImageView_lastUsedModelSpace;
  swift_beginAccess();
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

uint64_t sub_1D145F6BC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TimeBasedDistribution();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
  }

  else
  {
    v10 = type metadata accessor for TimeBasedDistributionChartModel();
    if (*(*(v10 - 8) + 84) != a2)
    {
      v13 = *(a1 + a3[8]);
      if (v13 >= 2)
      {
        return ((v13 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
  }

  v11 = *(v8 + 48);

  return v11(a1 + v9, a2, v7);
}

uint64_t sub_1D145F7D4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for TimeBasedDistribution();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    result = type metadata accessor for TimeBasedDistributionChartModel();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8]) = a2 + 1;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1D145F8D8(uint64_t a1)
{
  sub_1D149A700();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D145F940(uint64_t a1, uint64_t a2)
{
  sub_1D149B6F4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D145F9A4()
{
  v1 = (type metadata accessor for TimeBasedDistributionChartModel() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(*v1 + 64);
  __swift_destroy_boxed_opaque_existential_1(v0 + v3 + 8);
  v5 = v0 + v3 + v1[8];

  v6 = *(type metadata accessor for TimeBasedDistributionChartDesign() + 32);
  v7 = sub_1D15A36F8();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  __swift_destroy_boxed_opaque_existential_1(v0 + v3 + v1[9]);
  v8 = v1[10];
  v9 = sub_1D15A3268();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D145FB60()
{
  v1 = (type metadata accessor for TimeBasedDistributionChartPoint.TimeOfDay(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = (type metadata accessor for TimeBasedDistributionChartModel() - 8);
  v6 = *(*v5 + 80);
  v7 = (v4 + v6 + v3 + 1) & ~v6;
  v8 = *(*v5 + 64);
  v9 = v2 | v6;
  v10 = v1[9];
  v11 = sub_1D15A23F8();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);

  __swift_destroy_boxed_opaque_existential_1(v0 + v7 + 8);
  v12 = v0 + v7 + v5[8];

  v13 = *(type metadata accessor for TimeBasedDistributionChartDesign() + 32);
  v14 = sub_1D15A36F8();
  (*(*(v14 - 8) + 8))(v12 + v13, v14);

  __swift_destroy_boxed_opaque_existential_1(v0 + v7 + v5[9]);
  v15 = v5[10];
  v16 = sub_1D15A3268();
  (*(*(v16 - 8) + 8))(v0 + v7 + v15, v16);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v8, v9 | 7);
}

uint64_t sub_1D145FDDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D14B7040(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    sub_1D14B7040(0, &qword_1EE05B408, MEMORY[0x1E6968278]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 48);
    v15 = a1 + *(a3 + 24);

    return v14(v15, a2, v13);
  }
}

void sub_1D145FF44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D14B7040(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  else
  {
    sub_1D14B7040(0, &qword_1EE05B408, MEMORY[0x1E6968278]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D14600A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for BloodPressureCodableCurrentValueSnidgetViewModelExtractor.Metadata(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D146014C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for BloodPressureCodableCurrentValueSnidgetViewModelExtractor.Metadata(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D14601F0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D1455B24(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = &a1[*(a3 + 20)];

    return v12(v13, a2, v11);
  }
}

_BYTE *sub_1D14602BC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    sub_1D1455B24(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = &v5[*(a4 + 20)];

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D14603AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D14C6FC0();
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 52);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D1460458(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D14C6FC0();
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 52);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D14604FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D15A26A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1D14605C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D15A26A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_1D1460684()
{
  v1 = (type metadata accessor for HighlightCalendarDayViewModel(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  sub_1D14BB18C(*(v0 + v3 + 24), *(v0 + v3 + 32), *(v0 + v3 + 40), *(v0 + v3 + 48));

  v5 = v0 + v3 + v1[15];
  v6 = type metadata accessor for AXProjectionState(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    v7 = sub_1D15A26A8();
    (*(*(v7 - 8) + 8))(v5, v7);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

id sub_1D14607FC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isExecuting];
  *a2 = result;
  return result;
}

uint64_t sub_1D1460830()
{
  MEMORY[0x1D388BFE0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1460868()
{
  v1 = sub_1D15A31D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

id sub_1D146094C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isCancelled];
  *a2 = result;
  return result;
}

uint64_t sub_1D1460980()
{
  v1 = sub_1D15A31D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

id sub_1D1460A5C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isFinished];
  *a2 = result;
  return result;
}

uint64_t sub_1D1460B88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCV19HealthVisualization26ActivitySummarySnidgetView17ActionHandlerData_relevantDateInterval;
  swift_beginAccess();
  return sub_1D14D8EAC(v3 + v4, a2, sub_1D14CB81C);
}

uint64_t sub_1D1460BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D14D58AC(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_1D1460CBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D14D58AC(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }
}

uint64_t sub_1D1460D78(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  sub_1D14CB850(0, &qword_1EE0597A8, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for ActivitySnidgetCurrentValueVisualizationView.ViewModel(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  sub_1D14D5C80(0);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[8];

  return v16(v17, a2, v15);
}

uint64_t sub_1D1460F0C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
    return result;
  }

  sub_1D14CB850(0, &qword_1EE0597A8, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for ActivitySnidgetCurrentValueVisualizationView.ViewModel(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  sub_1D14D5C80(0);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1D14610A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D15A23F8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1D14A0F04();
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1D14611C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D15A23F8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1D14A0F04();
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 28);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1D14612FC()
{
  MEMORY[0x1D388BFE0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1461334()
{
  v1 = sub_1D15A31D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(v2 + 64);
  sub_1D14E1318(0, &qword_1EE05B520, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(*(v6 - 8) + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = sub_1D15A22A8();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | v7 | 7);
}

uint64_t sub_1D14628D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SignificantChange.Period(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    sub_1D14E6958(0, qword_1EE059078, type metadata accessor for SignificantChange.Notification, MEMORY[0x1E69E6720]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1D1462A2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SignificantChange.Period(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    sub_1D14E6958(0, qword_1EE059078, type metadata accessor for SignificantChange.Notification, MEMORY[0x1E69E6720]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_1D1462B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D15A22A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 <= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = *(a1 + *(a3 + 28));
    }

    v12 = v11 - 2;
    if (v10 >= 2)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D1462C44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D15A22A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 2;
  }

  return result;
}

uint64_t sub_1D1462CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D15A26A8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D1462DA8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D15A26A8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D1462EB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D15A37A8();
  *a1 = result;
  return result;
}

uint64_t sub_1D1462F6C(uint64_t a1, uint64_t a2)
{
  sub_1D14F1F30(0, &qword_1EC630A88, sub_1D14F0C70, sub_1D14F0F28, MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1463014(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D15A26A8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D1463080(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D15A26A8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D14630F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D15A22A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D14631B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D15A22A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D146326C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CoreChartTrendLineViewModel(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1D14E8CA0(0);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1D1463390(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for CoreChartTrendLineViewModel(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1D14E8CA0(0);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 32);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1D14634B4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1D14EEB88(0, &qword_1EE056C68, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[7]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = type metadata accessor for CoreChartTrendViewModel(0);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[8];

    return v15(v16, a2, v14);
  }
}

void sub_1D1463618(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1D14EEB88(0, &qword_1EE056C68, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    v11(v12, a2, a2, v10);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + a4[7]) = a2;
  }

  else
  {
    v13 = type metadata accessor for CoreChartTrendViewModel(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[8];

    v14(v15, a2, a2, v13);
  }
}

uint64_t sub_1D1463770(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D15A26A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1D15A2838();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[6];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[9] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    sub_1D14F0FC4(0);
    v16 = v15;
    v17 = *(*(v15 - 8) + 48);
    v18 = a1 + a3[11];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_1D14638E8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1D15A26A8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_1D15A2838();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[9] + 8) = (a2 - 1);
  }

  else
  {
    sub_1D14F0FC4(0);
    v16 = v15;
    v17 = *(*(v15 - 8) + 56);
    v18 = a1 + a4[11];

    return v17(v18, a2, a2, v16);
  }

  return result;
}

uint64_t sub_1D1463ABC()
{
  sub_1D14EFBF8();
  sub_1D14EFD80();
  sub_1D14EFED0();
  sub_1D14EFFDC();
  sub_1D14F00B0();
  sub_1D15A35D8();
  sub_1D14F0154();
  sub_1D14F01E8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D1463C48()
{
  v1 = type metadata accessor for CoreChartTrendDiagram(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v15 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;
  v5 = v1[5];
  sub_1D14EEB54(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1D15A3668();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  sub_1D14F1AA8(*(v4 + v1[6]), *(v4 + v1[6] + 8));

  v7 = v4 + v1[8];

  v8 = type metadata accessor for CoreChartTrendViewModel(0);
  v9 = v7 + *(v8 + 28);
  v10 = sub_1D15A22A8();
  v11 = *(*(v10 - 8) + 8);
  v11(v9, v10);
  v12 = type metadata accessor for CoreChartTrendLineViewModel(0);

  v13 = v7 + *(v8 + 32);
  if (!(*(*(v12 - 8) + 48))(v13, 1, v12))
  {
    v11(v13, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v15, v2 | 7);
}

uint64_t sub_1D1463EA0(uint64_t a1, uint64_t a2)
{
  sub_1D14F10B4(0, &qword_1EC630958, sub_1D14EEEF8, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1463F3C(uint64_t a1, uint64_t a2)
{
  sub_1D14F10B4(0, &qword_1EC630958, sub_1D14EEEF8, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1463FD8(uint64_t a1)
{
  sub_1D14F10B4(0, &qword_1EC630958, sub_1D14EEEF8, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D14640B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1D1464160(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D1464204(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 <= 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 2;
    if (v4 >= 2)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D14F524C(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = &a1[*(a3 + 24)];

    return v12(v13, a2, v11);
  }
}

_BYTE *sub_1D14642D4(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    sub_1D14F524C(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = &v5[*(a4 + 24)];

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D1464390@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + class metadata base offset for SleepQueryOperation + 80))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1D1464414()
{
  MEMORY[0x1D388BFE0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D146444C()
{
  v1 = sub_1D15A31D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1D15A22A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v11 + 8, v10 | 7);
}

uint64_t sub_1D14645A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 25);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for TimeBasedDistribution();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 28);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = type metadata accessor for TimeBasedDistributionChartModel();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 32);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t sub_1D14646CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 25) = a2 + 1;
  }

  else
  {
    v8 = type metadata accessor for TimeBasedDistribution();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for TimeBasedDistributionChartModel();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D14647F0(uint64_t a1)
{
  sub_1D14FB3B8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1464858()
{
  v1 = (type metadata accessor for TimeBasedDistributionChartModel() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(*v1 + 64);
  __swift_destroy_boxed_opaque_existential_1(v0 + v3 + 8);
  v5 = v0 + v3 + v1[8];

  v6 = *(type metadata accessor for TimeBasedDistributionChartDesign() + 32);
  v7 = sub_1D15A36F8();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  __swift_destroy_boxed_opaque_existential_1(v0 + v3 + v1[9]);
  v8 = v1[10];
  v9 = sub_1D15A3268();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D1464A14()
{
  v1 = (type metadata accessor for TimeBasedDistributionChartPoint.DayOfWeek(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = (type metadata accessor for TimeBasedDistributionChartModel() - 8);
  v6 = *(*v5 + 80);
  v7 = (v4 + v6 + v3 + 1) & ~v6;
  v8 = *(*v5 + 64);
  v9 = v2 | v6;

  v10 = v1[9];
  v11 = sub_1D15A23F8();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);

  __swift_destroy_boxed_opaque_existential_1(v0 + v7 + 8);
  v12 = v0 + v7 + v5[8];

  v13 = *(type metadata accessor for TimeBasedDistributionChartDesign() + 32);
  v14 = sub_1D15A36F8();
  (*(*(v14 - 8) + 8))(v12 + v13, v14);

  __swift_destroy_boxed_opaque_existential_1(v0 + v7 + v5[9]);
  v15 = v5[10];
  v16 = sub_1D15A3268();
  (*(*(v16 - 8) + 8))(v0 + v7 + v15, v16);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v8, v9 | 7);
}

uint64_t sub_1D1464C88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D15A3828();
  *a1 = result;
  return result;
}

uint64_t sub_1D1464CE0()
{
  MEMORY[0x1D388BFE0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1464D18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1EE05B058;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

id sub_1D1464D78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1EE05B068;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1D1464DE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1EE068348;
  swift_beginAccess();
  return sub_1D149D62C(v3 + v4, a2);
}

void *sub_1D1464E44@<X0>(void *a1@<X8>)
{
  result = sub_1D14FE774();
  *a1 = result;
  return result;
}

void sub_1D1464E70(void **a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + qword_1EE05B070);
  *(*a2 + qword_1EE05B070) = *a1;
  v4 = v2;

  sub_1D1459664(v3);
}

uint64_t sub_1D1464EBC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1464EF4@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D1501F48();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

uint64_t sub_1D1464F44()
{
  MEMORY[0x1D388BFE0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1464F7C()
{
  v1 = sub_1D15A31D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D1465054()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D14650B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D15A23F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1D1465178(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D15A23F8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D1465234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D15A23F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1D14652F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D15A23F8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D14653B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D15A23F8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D146545C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D15A23F8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D1465520()
{

  return MEMORY[0x1EEE6BDD0](v0, 50, 7);
}

uint64_t sub_1D1465570(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.Metadata(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D146561C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.Metadata(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D14656C0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D150AA30(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = &a1[*(a3 + 20)];

      return v13(v14, a2, v12);
    }

    else
    {
      sub_1D150AA30(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
      v16 = v15;
      v17 = *(*(v15 - 8) + 48);
      v18 = &a1[*(a3 + 32)];

      return v17(v18, a2, v16);
    }
  }
}

_BYTE *sub_1D146581C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    sub_1D150AA30(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 20)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1D150AA30(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = &v5[*(a4 + 32)];

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1D1465AA4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1D1465AE4()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1D150F18C(0, &qword_1EC630D98, &type metadata for HealthStoreActivityRingsResumeDateProvider.State, MEMORY[0x1E69E8300]);
  }
}

uint64_t sub_1D1465B44()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D1465B84()
{
  sub_1D150F568(0, &qword_1EE05B7F8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = sub_1D15A26A8();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D1465CC8()
{
  sub_1D150F568(0, &qword_1EE05B7F8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = sub_1D15A26A8();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D1465E0C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1465E54@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_1D1512870;
  a2[1] = v5;
}

uint64_t sub_1D1465EC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1465F0C(uint64_t a1, uint64_t a2)
{
  sub_1D1514284();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D1465F78(uint64_t a1, uint64_t a2)
{
  sub_1D1514284();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D1465FE8@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D1517670();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

__n128 sub_1D146602C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D1466038()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D1466080()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D14660B8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D1518128(0, &qword_1EE05B3E8, MEMORY[0x1E69A3D00]);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = &a1[*(a3 + 20)];

      return v13(v14, a2, v12);
    }

    else
    {
      sub_1D1518128(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
      v16 = v15;
      v17 = *(*(v15 - 8) + 48);
      v18 = &a1[*(a3 + 24)];

      return v17(v18, a2, v16);
    }
  }
}

_BYTE *sub_1D1466214(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    sub_1D1518128(0, &qword_1EE05B3E8, MEMORY[0x1E69A3D00]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 20)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1D1518128(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = &v5[*(a4 + 24)];

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1D146636C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for TimeAsleepSnidgetViewModelExtractor.Metadata(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1D15A26A8();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1D1466490(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for TimeAsleepSnidgetViewModelExtractor.Metadata(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1D15A26A8();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D14665BC()
{
  MEMORY[0x1D388BFE0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D14665F4()
{
  v1 = sub_1D15A31D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D14666A4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D15A36F8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1D1466750(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D15A36F8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id sub_1D1466A80@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = [*a1 hasIsUsingWheelchair];
  if (result)
  {
    result = [v3 isUsingWheelchair];
    v5 = 1;
    if (result)
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1D1466AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D15A3E38();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_1D1455C20(0, &qword_1EE059488, MEMORY[0x1E69D36A0]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_1D1455C20(0, &qword_1EE059480, MEMORY[0x1E69D3708]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_1D1466C5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D15A3E38();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_1D1455C20(0, &qword_1EE059488, MEMORY[0x1E69D36A0]);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_1D1455C20(0, &qword_1EE059480, MEMORY[0x1E69D3708]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1D1466DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D15419F0(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

void sub_1D1466EC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D15419F0(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }
}

uint64_t sub_1D1467490()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D14674D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1467508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TimeBasedDistribution();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for TimeBasedDistributionChartModel();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D146762C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TimeBasedDistribution();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for TimeBasedDistributionChartModel();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D1467750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D15A2838();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D146780C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D15A2838();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D14678DC()
{
  MEMORY[0x1D388BFE0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1467914()
{
  v1 = sub_1D15A31D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D14679B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1467C14()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1467C5C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for TimePeriodSnidgetViewModelExtractor.Metadata(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D1467D08(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TimePeriodSnidgetViewModelExtractor.Metadata(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D1467DAC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D1455C74(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = &a1[*(a3 + 20)];

    return v12(v13, a2, v11);
  }
}

_BYTE *sub_1D1467E78(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    sub_1D1455C74(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = &v5[*(a4 + 20)];

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D1467F34()
{
  v1 = type metadata accessor for CoreChartTrendLineSeries();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v13 = *(*(v1 - 8) + 64);

  v4 = type metadata accessor for CoreChartTrendViewModel(0);
  v5 = v0 + v3 + *(v4 + 28);
  v6 = sub_1D15A22A8();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v8 = type metadata accessor for CoreChartTrendLineViewModel(0);

  v9 = v0 + v3 + *(v4 + 32);
  if (!(*(*(v8 - 8) + 48))(v9, 1, v8))
  {
    v7(v9, v6);
  }

  v10 = *(v1 + 20);
  v11 = sub_1D15A2838();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v13, v2 | 7);
}

uint64_t sub_1D1468138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CoreChartTrendViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1D15A2838();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D1468228(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for CoreChartTrendViewModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1D15A2838();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D1468328@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D155CFAC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1D1468378()
{
  MEMORY[0x1D388BFE0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D14683B0()
{
  v1 = sub_1D15A31D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D1468454()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D146848C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D15800F0(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_1D15801C4(0);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D146857C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D15800F0(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_1D15801C4(0);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 24);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_1D1468778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D14F104C(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D15800F0(0);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

void sub_1D1468894(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D14F104C(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    sub_1D15800F0(0);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D14689B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D15A26A8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D1468A20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D15A26A8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D1468AA0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.StatisticsSnidgetFormatter.SupplementaryFormatInformation(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1D1468B4C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.StatisticsSnidgetFormatter.SupplementaryFormatInformation(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D1468BFC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.SampleCountSnidgetFormatter.SupplementaryFormatInformation(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1D1468CA8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.SampleCountSnidgetFormatter.SupplementaryFormatInformation(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D1468D4C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1D1468DF8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D1468E9C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 <= 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 2;
    if (v4 >= 2)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D1491C64();
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = &a1[*(a3 + 24)];

    return v12(v13, a2, v11);
  }
}

_BYTE *sub_1D1468F4C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    sub_1D1491C64();
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = &v5[*(a4 + 24)];

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D14691C4()
{
  v1 = type metadata accessor for CoreChartTrendBarSeries();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v13 = *(*(v1 - 8) + 64);

  v4 = type metadata accessor for CoreChartTrendViewModel(0);
  v5 = v0 + v3 + *(v4 + 28);
  v6 = sub_1D15A22A8();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v8 = type metadata accessor for CoreChartTrendLineViewModel(0);

  v9 = v0 + v3 + *(v4 + 32);
  if (!(*(*(v8 - 8) + 48))(v9, 1, v8))
  {
    v7(v9, v6);
  }

  v10 = *(v1 + 20);
  v11 = sub_1D15A2838();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v13, v2 | 7);
}

uint64_t sub_1D14693C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CoreChartTrendViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1D15A2838();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D14694B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for CoreChartTrendViewModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1D15A2838();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D14695B8@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + class metadata base offset for ValueHistogramCollectionQueryOperation + 80))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1D146963C()
{
  MEMORY[0x1D388BFE0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1469674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D15A23A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1D1469734(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D15A23A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D14698BC@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

double StudentsCDF(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v9 = a2;
  v10 = a1;
  if (a2 <= 0.0)
  {
    boost::math::policies::detail::raise_error<std::domain_error,double>("boost::math::students_t_distribution<%1%>::students_t_distribution", "Degrees of freedom argument is %1%, but must be > 0 !", &v9);
  }

  return boost::math::cdf<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(&v9, &v10, a1, a2, a3, a4, a5, a6, a7, a8);
}

double boost::math::cdf<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(double *a1, double *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v10 = *a1;
  v19 = v10;
  if (v10 <= 0.0)
  {
    boost::math::policies::detail::raise_error<std::domain_error,double>("boost::math::cdf(const students_t_distribution<%1%>&, %1%)", "Degrees of freedom argument is %1%, but must be > 0 !", &v19);
  }

  *&v18 = *a2;
  result = 0.5;
  if (*&v18 != 0.0)
  {
    if (fabs(*&v18) == INFINITY)
    {
      result = 1.0;
      if (*&v18 < 0.0)
      {
        return 0.0;
      }
    }

    else if (v10 <= 4.50359963e15)
    {
      v13 = *&v18 * *&v18;
      v14 = v13 + v13;
      v15 = *&v18 * *&v18 + v10;
      v16 = v10 * 0.5;
      if (v10 <= v13 + v13)
      {
        v17 = boost::math::ibeta<double,double,double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v16, 0.5, v10 / v15, v16, v14, a8, a9, a10);
      }

      else
      {
        v17 = boost::math::ibetac<double,double,double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(0.5, v10 * 0.5, v13 / v15, v16, v14, a8, a9, a10);
      }

      result = v17 * 0.5;
      if (*a2 > 0.0)
      {
        return 1.0 - result;
      }
    }

    else
    {
      v18 = xmmword_1D15A60F0;
      boost::math::cdf<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(&v18, a2);
    }
  }

  return result;
}

void HypergeometricPDF(double a1, double a2, double a3, double a4)
{
  v5[0] = a1;
  v4[0] = a3;
  v4[1] = a4;
  v4[2] = a2;
  v5[1] = 0.0;
  boost::math::hypergeometric_distribution<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>::check_params(v4, boost::math::hypergeometric_distribution<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>::hypergeometric_distribution(unsigned int,unsigned int,unsigned int)::function);
  boost::math::pdf<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,double>(v4, v5);
}

void boost::math::pdf<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,double>(unsigned int *a1, double *a2)
{
  v15[0] = *a2;
  if ((*&v15[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_9;
  }

  v3 = floor(v15[0]);
  v4 = ceil(v15[0]);
  if (v15[0] < 0.0)
  {
    v3 = v4;
  }

  if (v3 > 2147483650.0 || v3 < -2147483650.0)
  {
LABEL_9:
    if (v15[0] <= 0.0)
    {
      v6 = 0x80000000;
    }

    else
    {
      v6 = 0x7FFFFFFF;
    }
  }

  else
  {
    v6 = v3;
  }

  if (v15[0] != v6)
  {
    boost::math::policies::detail::raise_error<std::domain_error,double>(boost::math::pdf<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,double>(boost::math::hypergeometric_distribution<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>> const&,double const&)::function, "Random variable out of range: must be an integer but got %1%", v15);
  }

  v15[1] = 0.0;
  if ((boost::math::hypergeometric_distribution<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>::check_params(a1, boost::math::pdf<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(boost::math::hypergeometric_distribution<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>> const&,unsigned int const&)::function) & 1) != 0
    && (boost::math::hypergeometric_distribution<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>::check_x(a1, v6, boost::math::pdf<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(boost::math::hypergeometric_distribution<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>> const&,unsigned int const&)::function) & 1) != 0)
  {
    v8 = a1[1];
    v7 = a1[2];
    v9 = *a1;
    if (v8 > 0xAA)
    {
      if (v8 <= 0x19913)
      {
        v18 = xmmword_1D15A64D0;
        v16[0] = v6;
        v16[1] = v7;
        v16[2] = v9;
        v16[3] = v8;
        v17 = 0x200000000;
        boost::math::detail::hypergeometric_pdf_prime_loop_imp<long double>(v16, &v18);
      }

      else
      {
        boost::math::detail::hypergeometric_pdf_lanczos_imp<long double,boost::math::lanczos::lanczos13m53,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v6, v7, v9, v8);
      }
    }

    else
    {
      v10 = boost::math::detail::hypergeometric_pdf_factorial_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v6, v7, v9, v8);
    }

    if (v10 > 1.0)
    {
      v11 = 1.0;
    }

    else
    {
      v11 = v10;
    }

    v12 = fabs(v10);
    if (v11 >= 0.0 && v10 <= 1.0 && v12 > 1.79769313e308)
    {
      boost::math::policies::detail::raise_error<std::overflow_error,double>("boost::math::hypergeometric_pdf<%1%>(%1%,%1%,%1%,%1%)", "numeric overflow");
    }
  }
}

void boost::math::policies::detail::raise_error<std::domain_error,double>(char *a1, char *a2, double *a3)
{
  v4 = "Unknown function operating on type %1%";
  if (a1)
  {
    v4 = a1;
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = "Cause unknown: error caused by bad argument with value %1%";
  }

  std::string::basic_string[abi:ne200100]<0>(&v16, v4);
  std::string::basic_string[abi:ne200100]<0>(&v15, v5);
  std::string::basic_string[abi:ne200100]<0>(&v14, "Error in function ");
  boost::math::policies::detail::replace_all_in_string(&v16, "%1%", "double");
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v16;
  }

  else
  {
    v6 = v16.__r_.__value_.__r.__words[0];
  }

  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v16.__r_.__value_.__l.__size_;
  }

  std::string::append(&v14, v6, size);
  std::string::append(&v14, ": ", 2uLL);
  boost::math::policies::detail::prec_format<double>(a3, v12);
  if (v13 >= 0)
  {
    v8 = v12;
  }

  else
  {
    v8 = v12[0];
  }

  boost::math::policies::detail::replace_all_in_string(&v15, "%1%", v8);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v15;
  }

  else
  {
    v9 = v15.__r_.__value_.__r.__words[0];
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = v15.__r_.__value_.__l.__size_;
  }

  std::string::append(&v14, v9, v10);
  std::logic_error::logic_error(&v11, &v14);
  v11.__vftable = (MEMORY[0x1E69E55A8] + 16);
  boost::throw_exception<std::domain_error>(&v11);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t boost::math::policies::detail::replace_all_in_string(std::string *a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  result = strlen(a3);
  v8 = result;
  v9 = 0;
  v10 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v10 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = a1->__r_.__value_.__r.__words[0];
  }

  if (v10 >= 0)
  {
    size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  v13 = v6;
  while (!v13)
  {
LABEL_18:
    if (v9 != -1)
    {
      v19 = strlen(a3);
      std::string::replace(a1, v9, v6, a3, v19);
      v9 += v8;
      v20 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
      v11 = v20 >= 0 ? a1 : a1->__r_.__value_.__r.__words[0];
      size = v20 >= 0 ? HIBYTE(a1->__r_.__value_.__r.__words[2]) : a1->__r_.__value_.__l.__size_;
      result = strlen(__s);
      v13 = result;
      if (size >= v9)
      {
        continue;
      }
    }

    return result;
  }

  v14 = size - v9;
  if ((size - v9) >= v13)
  {
    v15 = v11 + size;
    result = v11 + v9;
    v16 = *__s;
    do
    {
      v17 = v14 - v13;
      if (v17 == -1)
      {
        break;
      }

      result = memchr(result, v16, v17 + 1);
      if (!result)
      {
        break;
      }

      v18 = result;
      result = memcmp(result, __s, v13);
      if (!result)
      {
        if (v18 == v15)
        {
          return result;
        }

        v9 = v18 - v11;
        goto LABEL_18;
      }

      result = v18 + 1;
      v14 = v15 - (v18 + 1);
    }

    while (v14 >= v13);
  }

  return result;
}

uint64_t boost::math::policies::detail::prec_format<double>@<X0>(double *a1@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  *(&v9[0].__locale_ + *(v7 - 24)) = 17;
  MEMORY[0x1D388B590](&v7, *a1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v6, a2);
  v6[0] = *MEMORY[0x1E69E54D8];
  v4 = *(MEMORY[0x1E69E54D8] + 72);
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v7 = v4;
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return MEMORY[0x1D388B600](&v11);
}

void sub_1D146A218(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void boost::throw_exception<std::domain_error>(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<std::domain_error>::wrapexcept(exception, a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E83E67E8, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x1E69E5560] + 104;
  a1[16] = MEMORY[0x1E69E5560] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x1E69E5560] + 64;
  a1[2] = MEMORY[0x1E69E5560] + 64;
  v5 = MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 24);
  v7 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x1E69E5560] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_1D146A5C0(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x1D388B600](v1);
  _Unwind_Resume(a1);
}

const void *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100]@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = std::stringbuf::view[abi:ne200100](a1 + 24);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  a2[v5] = 0;
  return result;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  *a1 = *MEMORY[0x1E69E54D8];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x1D388B600](a1 + 128);
  return a1;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1D388B5D0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_1D146A878(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

uint64_t std::stringbuf::view[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t boost::wrapexcept<std::domain_error>::wrapexcept(uint64_t a1, const std::logic_error *a2)
{
  *a1 = &unk_1F4D39E60;
  std::logic_error::logic_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &unk_1F4D39DE8;
  *(a1 + 8) = &unk_1F4D39E18;
  *(a1 + 24) = &unk_1F4D39E40;
  return a1;
}

uint64_t boost::wrapexcept<std::domain_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_1F4D39E90;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  MEMORY[0x1D388B500](a1 + 8);
  return a1;
}

void sub_1D146ACC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<std::domain_error>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<std::domain_error>::wrapexcept(exception, a1);
}

void boost::wrapexcept<std::domain_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_1F4D39E90;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  MEMORY[0x1D388B500](a1 + 8);

  JUMPOUT(0x1D388B630);
}

void non-virtual thunk toboost::wrapexcept<std::domain_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 16) = &unk_1F4D39E90;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));

  JUMPOUT(0x1D388B500);
}

{
  *(a1 + 16) = &unk_1F4D39E90;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));
  MEMORY[0x1D388B500](a1);

  JUMPOUT(0x1D388B630);
}

void non-virtual thunk toboost::wrapexcept<std::domain_error>::~wrapexcept(void *a1)
{
  *a1 = &unk_1F4D39E90;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  JUMPOUT(0x1D388B500);
}

{
  *a1 = &unk_1F4D39E90;
  v1 = a1 - 2;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  MEMORY[0x1D388B500](v1);

  JUMPOUT(0x1D388B630);
}

uint64_t *boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && (*(*v2 + 32))(v2))
  {
    *a1 = 0;
  }

  return a1;
}

uint64_t boost::wrapexcept<std::domain_error>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4D39E60;
  std::logic_error::logic_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = MEMORY[0x1E69E55A8] + 16;
  v4 = *(a2 + 32);
  *(a1 + 24) = &unk_1F4D39E90;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &unk_1F4D39DE8;
  *(a1 + 8) = &unk_1F4D39E18;
  *(a1 + 24) = &unk_1F4D39E40;
  return a1;
}

uint64_t boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::adopt(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    result = (*(*result + 32))(result);
  }

  *a1 = a2;
  if (a2)
  {
    v5 = *(*a2 + 24);

    return v5(a2);
  }

  return result;
}

void boost::math::cdf<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(double *a1, double *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v8 = v2;
  if ((*&v2 <= -1 || ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v2 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v6 = "Scale parameter is %1%, but must be > 0 !";
    goto LABEL_11;
  }

  v8 = v3;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v6 = "Location parameter is %1%, but must be finite!";
    goto LABEL_11;
  }

  v7 = *a2;
  if (fabs(*a2) != INFINITY)
  {
    v8 = *a2;
    if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v6 = "Random variate x is %1%, but must be finite!";
LABEL_11:
      boost::math::policies::detail::raise_error<std::domain_error,double>(boost::math::cdf<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(boost::math::normal_distribution<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>> const&,double const&)::function, v6, &v8);
    }

    if (fabs(boost::math::detail::erf_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(1, (v7 - v3) / (v2 * -1.41421356))) > 1.79769313e308)
    {
      boost::math::policies::detail::raise_error<std::overflow_error,double>("boost::math::erfc<%1%>(%1%, %1%)", "numeric overflow");
    }
  }
}

double boost::math::ibetac<double,double,double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = boost::math::detail::ibeta_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(&v10, 1u, 1, 0, a1, a2, a3, a4, a5, a6, a7, a8);
  if (fabs(v8) > 1.79769313e308)
  {
    boost::math::policies::detail::raise_error<std::overflow_error,double>("boost::math::ibetac<%1%>(%1%,%1%,%1%)", "numeric overflow");
  }

  return v8;
}

double boost::math::ibeta<double,double,double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = boost::math::detail::ibeta_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(&v10, 0, 1, 0, a1, a2, a3, a4, a5, a6, a7, a8);
  if (fabs(v8) > 1.79769313e308)
  {
    boost::math::policies::detail::raise_error<std::overflow_error,double>("boost::math::ibeta<%1%>(%1%,%1%,%1%)", "numeric overflow");
  }

  return v8;
}

double boost::math::detail::erf_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(int a1, long double a2)
{
  v3 = a1;
  if (a2 < 0.0)
  {
    if ((a1 & 1) == 0)
    {
      return -boost::math::detail::erf_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(0, -a2);
    }

    v4 = -a2;
    if (a2 >= -0.5)
    {
      return boost::math::detail::erf_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(0, v4) + 1.0;
    }

    else
    {
      return 2.0 - boost::math::detail::erf_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(1, v4);
    }
  }

  if (a2 < 0.5)
  {
    if (a2 >= 1.0e-10)
    {
      v8 = vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_1D15A6230, xmmword_1D15A6220, a2 * a2 * (a2 * a2)), a2 * a2), vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_1D15A6210, xmmword_1D15A6200, a2 * a2 * (a2 * a2)), a2 * a2 * (a2 * a2)), xmmword_1D15A6240));
      v6 = (vdivq_f64(v8, vdupq_laneq_s64(v8, 1)).f64[0] + 1.04494858) * a2;
    }

    else
    {
      v6 = 0.0;
      if (a2 != 0.0)
      {
        v6 = a2 * 0.0033791671 + a2 * 1.125;
      }
    }

    goto LABEL_25;
  }

  if (a1)
  {
    v7 = 28.0;
  }

  else
  {
    v7 = 5.92999983;
  }

  v3 = a1 ^ 1;
  if (a2 >= v7)
  {
    v6 = 0.0;
    goto LABEL_25;
  }

  if (a2 < 1.5)
  {
    v9 = a2 + -0.5;
    v10.f64[0] = v9 * v9 * 0.0195049001 + 0.191003696;
    v10.f64[1] = v9 * v9 * (v9 * v9 * 0.00000337511472 + 0.123850975) + 1.42628005;
    v11 = vaddq_f64(vaddq_f64(vmulq_n_f64(v10, v9 * v9), xmmword_1D15A61F0), vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_1D15A61D0, xmmword_1D15A61C0, v9 * v9), v9 * v9), xmmword_1D15A61E0), a2 + -0.5));
    v6 = exp(-(a2 * a2)) / a2 * (vdivq_f64(v11, vdupq_laneq_s64(v11, 1)).f64[0] + 0.405935764);
    goto LABEL_25;
  }

  if (a2 < 2.5)
  {
    v12 = a2 + -1.5;
    v13 = vaddq_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_1D15A6190, xmmword_1D15A6180, v12 * v12), v12 * v12), xmmword_1D15A61B0), vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_1D15A6170, xmmword_1D15A6160, v12 * v12), v12 * v12), xmmword_1D15A61A0), a2 + -1.5));
    v14 = vdivq_f64(v13, vdupq_laneq_s64(v13, 1)).f64[0] + 0.506728172;
    v15 = frexp(a2, &__e);
    v16 = __e;
LABEL_23:
    v19 = ldexp(v15, 26);
    v20 = ldexp(floor(v19), v16 - 26);
    v21 = a2 - v20;
    v22 = v20 * v20 - a2 * a2 + (v20 + v20) * (a2 - v20);
    v23 = exp(-(a2 * a2));
    v6 = v14 * (v23 * exp(-(v22 + v21 * v21)) / a2);
    goto LABEL_25;
  }

  if (a2 < 4.5)
  {
    v17 = a2 + -3.5;
    v18 = vaddq_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_1D15A6130, xmmword_1D15A6120, v17 * v17), v17 * v17), xmmword_1D15A6150), vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_1D15A6110, xmmword_1D15A6100, v17 * v17), v17 * v17), xmmword_1D15A6140), a2 + -3.5));
    v14 = vdivq_f64(v18, vdupq_laneq_s64(v18, 1)).f64[0] + 0.540575027;
    v15 = frexp(a2, &v35);
    v16 = v35;
    goto LABEL_23;
  }

  v38 = 1.0 / a2;
  v24 = boost::math::tools::evaluate_polynomial<7ul,long double,long double>(boost::math::detail::erf_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(long double,BOOL,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy> const&,std::integral_constant<int,53> const&)::P, &v38);
  v37 = 1.0 / a2;
  v25 = v24 / boost::math::tools::evaluate_polynomial<7ul,long double,long double>(boost::math::detail::erf_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(long double,BOOL,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy> const&,std::integral_constant<int,53> const&)::Q, &v37) + 0.557909012;
  v26 = frexp(a2, &v36);
  v27 = v36;
  v28 = ldexp(v26, 26);
  v29 = ldexp(floor(v28), v27 - 26);
  v30 = a2 - v29;
  v31 = v29 * v29 - a2 * a2 + (v29 + v29) * (a2 - v29);
  v32 = exp(-(a2 * a2));
  v6 = v32 * exp(-(v31 + v30 * v30)) / a2 * v25;
LABEL_25:
  if (v3)
  {
    return 1.0 - v6;
  }

  else
  {
    return v6;
  }
}

void boost::math::policies::detail::raise_error<std::overflow_error,double>(char *a1, const char *a2)
{
  v2 = "Unknown function operating on type %1%";
  if (a1)
  {
    v2 = a1;
  }

  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = "Cause unknown";
  }

  std::string::basic_string[abi:ne200100]<0>(&v9, v2);
  std::string::basic_string[abi:ne200100]<0>(&v8, "Error in function ");
  boost::math::policies::detail::replace_all_in_string(&v9, "%1%", "double");
  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v9;
  }

  else
  {
    v4 = v9.__r_.__value_.__r.__words[0];
  }

  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v9.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v9.__r_.__value_.__l.__size_;
  }

  std::string::append(&v8, v4, size);
  std::string::append(&v8, ": ", 2uLL);
  v6 = strlen(v3);
  std::string::append(&v8, v3, v6);
  std::runtime_error::runtime_error(&v7, &v8);
  v7.__vftable = (MEMORY[0x1E69E55C0] + 16);
  boost::throw_exception<std::overflow_error>(&v7);
}

void sub_1D146B918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::runtime_error a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  std::runtime_error::~runtime_error(&a9);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void boost::throw_exception<std::overflow_error>(const std::runtime_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<std::overflow_error>::wrapexcept(exception, a1);
}

uint64_t boost::wrapexcept<std::overflow_error>::wrapexcept(uint64_t a1, const std::runtime_error *a2)
{
  *a1 = &unk_1F4D39E60;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &unk_1F4D39EF8;
  *(a1 + 8) = &unk_1F4D39F28;
  *(a1 + 24) = &unk_1F4D39F50;
  return a1;
}

uint64_t boost::wrapexcept<std::overflow_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_1F4D39E90;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

void sub_1D146BC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<std::overflow_error>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<std::overflow_error>::wrapexcept(exception, a1);
}

void boost::wrapexcept<std::overflow_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_1F4D39E90;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  std::runtime_error::~runtime_error((a1 + 8));

  JUMPOUT(0x1D388B630);
}

void non-virtual thunk toboost::wrapexcept<std::overflow_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 16) = &unk_1F4D39E90;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));

  std::runtime_error::~runtime_error(a1);
}

{
  *(a1 + 16) = &unk_1F4D39E90;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x1D388B630);
}

void non-virtual thunk toboost::wrapexcept<std::overflow_error>::~wrapexcept(void *a1)
{
  *a1 = &unk_1F4D39E90;
  v1 = (a1 - 2);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  std::runtime_error::~runtime_error(v1);
}

{
  *a1 = &unk_1F4D39E90;
  v1 = (a1 - 2);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  std::runtime_error::~runtime_error(v1);

  JUMPOUT(0x1D388B630);
}

uint64_t boost::wrapexcept<std::overflow_error>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4D39E60;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = MEMORY[0x1E69E55C0] + 16;
  v4 = *(a2 + 32);
  *(a1 + 24) = &unk_1F4D39E90;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &unk_1F4D39EF8;
  *(a1 + 8) = &unk_1F4D39F28;
  *(a1 + 24) = &unk_1F4D39F50;
  return a1;
}

double boost::math::detail::ibeta_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(uint64_t a1, unsigned int a2, int a3, double *a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v14 = a2;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v138 = a6;
  v139 = a5;
  v137 = a7;
  if (a4 && (a3 & 1) == 0)
  {
    boost::math::detail::ibeta_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>();
  }

  if (a4)
  {
    *a4 = -1.0;
  }

  v19 = 1.0;
  if (a7 < 0.0 || a7 > 1.0)
  {
    v21 = boost::math::detail::ibeta_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(long double,long double,long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy> const&,BOOL,BOOL,long double*)::function;
    v22 = "Parameter x outside the range [0,1] in the incomplete beta function (got x=%1%).";
LABEL_10:
    v23 = &v137;
    goto LABEL_36;
  }

  if (a3)
  {
    if (v18 < 0.0)
    {
      v21 = boost::math::detail::ibeta_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(long double,long double,long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy> const&,BOOL,BOOL,long double*)::function;
      v22 = "The argument a to the incomplete beta function must be >= zero (got a=%1%).";
LABEL_33:
      v23 = &v139;
      goto LABEL_36;
    }

    if (a6 < 0.0)
    {
      v21 = boost::math::detail::ibeta_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(long double,long double,long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy> const&,BOOL,BOOL,long double*)::function;
      v22 = "The argument b to the incomplete beta function must be >= zero (got b=%1%).";
LABEL_35:
      v23 = &v138;
LABEL_36:
      boost::math::policies::detail::raise_error<std::domain_error,long double>(v21, v22, v23);
    }

    if (v18 == 0.0)
    {
      if (a6 == 0.0)
      {
        v21 = boost::math::detail::ibeta_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(long double,long double,long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy> const&,BOOL,BOOL,long double*)::function;
        v22 = "The arguments a and b to the incomplete beta function cannot both be zero, with x=%1%.";
        goto LABEL_10;
      }

      if (a6 > 0.0)
      {
        return (a2 ^ 1);
      }
    }

    else if (v18 > 0.0 && a6 == 0.0)
    {
      return a2;
    }
  }

  else
  {
    if (v18 <= 0.0)
    {
      v21 = boost::math::detail::ibeta_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(long double,long double,long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy> const&,BOOL,BOOL,long double*)::function;
      v22 = "The argument a to the incomplete beta function must be greater than zero (got a=%1%).";
      goto LABEL_33;
    }

    if (a6 <= 0.0)
    {
      v21 = boost::math::detail::ibeta_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(long double,long double,long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy> const&,BOOL,BOOL,long double*)::function;
      v22 = "The argument b to the incomplete beta function must be greater than zero (got b=%1%).";
      goto LABEL_35;
    }
  }

  if (a7 == 0.0)
  {
    if (a4)
    {
      v24 = 4.45014772e-308;
      a7 = 8.98846567e307;
      if (v18 < 1.0)
      {
        v24 = 8.98846567e307;
      }

      if (v18 != 1.0)
      {
        v19 = v24;
      }

      *a4 = v19;
    }

    if (a2)
    {
      v25 = 1.0;
    }

    else
    {
      v25 = 0.0;
    }

    if (a2 && (a3 & 1) == 0)
    {
      boost::math::detail::beta_imp<long double,boost::math::lanczos::lanczos13m53,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v18, v17, a7, a8, a9, a10, a11, a12);
      v25 = v26;
      if (fabs(v26) > 1.79769313e308)
      {
        boost::math::policies::detail::raise_error<std::overflow_error,long double>("boost::math::beta<%1%>(%1%,%1%)", "numeric overflow");
      }
    }

    return v25;
  }

  if (a7 != 1.0)
  {
    v29 = 1.0 - a7;
    if (v18 == 0.5 && a6 == 0.5)
    {
      if (a4)
      {
        *a4 = sqrt(v29 * a7) * 0.318309886;
      }

      if (a2)
      {
        v30 = 1.0 - a7;
      }

      else
      {
        v30 = a7;
      }

      v31 = asin(sqrt(v30)) / 1.57079633;
      if (a3)
      {
        return v31;
      }

      else
      {
        return v31 * 3.14159265;
      }
    }

    if (v18 == 1.0)
    {
      v14 = a2 ^ 1;
      v32 = a7;
      goto LABEL_75;
    }

    if (a6 == 1.0)
    {
      v32 = 1.0 - a7;
      v17 = v18;
      v29 = a7;
LABEL_75:
      if (v17 == 1.0)
      {
        if (a4)
        {
          *a4 = 1.0;
        }

        if (v14)
        {
          return v32;
        }

        else
        {
          return v29;
        }
      }

      if (a4)
      {
        *a4 = v17 * pow(v29, v17 + -1.0);
      }

      if (v32 >= 0.5)
      {
        if (v14)
        {
          v34 = boost::math::detail::powm1_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(a1, v29, v17);
          goto LABEL_88;
        }

        v39 = pow(v29, v17);
      }

      else
      {
        v33 = v17 * boost::math::log1p<boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(-v32);
        if (v14)
        {
          v34 = boost::math::expm1<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v33);
LABEL_88:
          v25 = -v34;
          goto LABEL_101;
        }

        v39 = exp(v33);
      }

      v25 = v39;
LABEL_101:
      if ((a3 & 1) == 0)
      {
        return v25 / v17;
      }

      return v25;
    }

    if (a6 >= v18)
    {
      v35 = v18;
    }

    else
    {
      v35 = a6;
    }

    if (v35 > 1.0)
    {
      v36 = -(a6 - (a6 + v18) * v29);
      if (v18 < a6)
      {
        v36 = v18 - (a6 + v18) * a7;
      }

      if (v36 >= 0.0)
      {
        v37 = a7;
        v38 = v18;
        v18 = a6;
        v16 = 1.0 - a7;
      }

      else
      {
        v138 = v18;
        v139 = a6;
        v14 = a2 ^ 1;
        v37 = 1.0 - a7;
        v38 = a6;
        v137 = 1.0 - a7;
      }

      if (v18 >= 40.0)
      {
        v55 = v38;
        v56 = v18;
        v57 = v37;
        v58 = v16;
        v59 = a3;
LABEL_128:
        boost::math::detail::ibeta_fraction2<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(a1, v59, a4, v55, v56, v57, v58, a9, a10, a11, a12);
        v25 = v60;
LABEL_187:
        if (a4)
        {
          v130 = *a4;
          v43 = v137;
          if (*a4 < 0.0)
          {
            boost::math::detail::ibeta_power_terms<long double,boost::math::lanczos::lanczos13m53,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v139, v138, v137, v16, 1.0, v46, v47, v48, &v136, 1, a1, "boost::math::ibeta<%1%>(%1%, %1%, %1%)");
            *a4 = v130;
            v43 = v137;
          }

          if (v130 != 0.0)
          {
            v131 = v16 * v43;
            v43 = v16 * v43 * 1.79769313e308;
            v132 = v130 / v131;
            v133 = v43 < v130;
            v134 = 8.98846567e307;
            if (!v133)
            {
              v134 = v132;
            }

            *a4 = v134;
          }
        }

        if (v14)
        {
          v135 = 1.0;
          if ((a3 & 1) == 0)
          {
            v135 = boost::math::beta<long double,long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v139, v138, v43, v44, v45, v46, v47, v48);
          }

          return v135 - v25;
        }

        return v25;
      }

      v42 = floor(v18);
      if (v42 == v18 && floor(v38) == v38 && v38 < 2147483550.0 && v16 != 1.0)
      {
        v25 = boost::math::detail::binomial_ccdf<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v18 + v38 + -1.0, v38 + -1.0, v37, v16);
        if ((a3 & 1) == 0)
        {
          v25 = v25 * boost::math::beta<long double,long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v38, v18, v43, v44, v45, v46, v47, v48);
        }

        goto LABEL_187;
      }

      if (v18 * v37 > 0.7)
      {
        if (v38 > 15.0)
        {
          v136 = v42;
          v69 = boost::math::itrunc<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(&v136);
          v74 = v69 - (v138 == v69);
          v75 = v138 - v74;
          v76 = 1.0;
          if ((a3 & 1) == 0 && v74 >= 1)
          {
            v77 = 0.0;
            v78 = v74;
            do
            {
              v71 = v75 + v77;
              v70 = (v75 + v139 + v77) / (v75 + v77);
              v76 = v76 * v70;
              v77 = v77 + 1.0;
              --v78;
            }

            while (v78);
          }

          boost::math::detail::ibeta_a_step<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v74, a1, a3, 0, v138 - v74, v139, v16, v137, v70, v71, v72, v73);
          v25 = boost::math::detail::beta_small_b_large_a_series<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(a1, a3, v139, v75, v137, v16, v79, 1.0) / v76;
          goto LABEL_187;
        }

        if (a3)
        {
          v136 = v42;
          v86 = boost::math::itrunc<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(&v136);
          v91 = v138 - v86;
          if (v91 > 0.0)
          {
            v92 = v138 - v86;
          }

          else
          {
            v92 = v91 + 1.0;
          }

          boost::math::detail::ibeta_a_step<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v86 - (v91 <= 0.0), a1, 1, 0, v92, v139, v16, v137, v87, v88, v89, v90);
          v94 = v93;
          boost::math::detail::ibeta_a_step<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(20, a1, 1, 0, v139, v92, v137, v16, v95, v96, v97, v98);
          v100 = v94 + v99;
          if (v14)
          {
            v101 = v100 + -1.0;
          }

          else
          {
            v101 = v100;
          }

          v102 = boost::math::detail::beta_small_b_large_a_series<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(a1, 1, v139 + 20.0, v92, v137, v16, v101, 1.0);
          if (v14)
          {
            v25 = -v102;
          }

          else
          {
            v25 = v102;
          }

          goto LABEL_169;
        }

        v55 = v38;
        v56 = v18;
        v57 = v37;
        v58 = v16;
        v59 = 0;
        goto LABEL_128;
      }

      if (v14)
      {
        v83 = 1.0;
        if ((a3 & 1) == 0)
        {
          v83 = boost::math::beta<long double,long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v38, v18, 0.7, a8, a9, a10, a11, a12);
        }

        v66 = -v83;
        v67 = v38;
        v68 = v18;
LABEL_153:
        v14 = 0;
        v25 = -boost::math::detail::ibeta_series<long double,boost::math::lanczos::lanczos13m53,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v67, v68, v37, v66, v16, a10, a11, a12, &v136, a3, a4);
        goto LABEL_187;
      }

      v80 = v38;
      v81 = v18;
      goto LABEL_168;
    }

    if (a7 <= 0.5)
    {
      v37 = a7;
      v40 = v18;
      v41 = a6;
      v16 = 1.0 - a7;
    }

    else
    {
      v138 = v18;
      v139 = a6;
      v14 = a2 ^ 1;
      v37 = 1.0 - a7;
      v40 = a6;
      v41 = v18;
      v137 = 1.0 - a7;
    }

    if (v40 >= v41)
    {
      v49 = v40;
    }

    else
    {
      v49 = v41;
    }

    if (v49 <= 1.0)
    {
      v61 = pow(v37, v40);
      if (v40 < fmin(v41, 0.2) && v61 > 0.9)
      {
        v138 = v40;
        v139 = v41;
        v137 = v16;
        if (v37 < 0.3)
        {
          if ((a3 & 1) == 0)
          {
            v103 = v17 + v18;
            v104 = 0.0;
            v105 = 20;
            v53 = 1.0;
            do
            {
              v54 = v41 + v104;
              v53 = v53 * ((v103 + v104) / (v41 + v104));
              v104 = v104 + 1.0;
              --v105;
            }

            while (v105);
            goto LABEL_172;
          }

LABEL_133:
          boost::math::detail::ibeta_a_step<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(20, a1, 1, a4, v41, v40, v16, v37, a9, a10, a11, a12);
          v63 = v62;
          v53 = 1.0;
          v64 = 1.0;
          if (v14)
          {
LABEL_173:
            v113 = v41 + 20.0;
            v114 = v40;
            v115 = v16;
            v116 = v37;
            v117 = v63;
            v118 = a1;
            v119 = a3;
            v120 = v53;
LABEL_177:
            v82 = boost::math::detail::beta_small_b_large_a_series<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v118, v119, v113, v114, v115, v116, v117, v120);
            goto LABEL_178;
          }

          goto LABEL_180;
        }

LABEL_147:
        if (v14)
        {
          v82 = boost::math::detail::ibeta_series<long double,boost::math::lanczos::lanczos13m53,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v41, v40, v16, 0.0, v37, a10, a11, a12, &v136, a3, a4);
LABEL_178:
          v25 = v82;
          v14 = 0;
LABEL_186:
          v16 = v37;
          goto LABEL_187;
        }

        v84 = 1.0;
        if ((a3 & 1) == 0)
        {
          v84 = boost::math::beta<long double,long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v41, v40, a7, a8, a9, a10, a11, a12);
        }

        v85 = boost::math::detail::ibeta_series<long double,boost::math::lanczos::lanczos13m53,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v41, v40, v16, -v84, v37, a10, a11, a12, &v136, a3, a4);
LABEL_185:
        v14 = 0;
        v25 = -v85;
        goto LABEL_186;
      }
    }

    else if (v41 > 1.0 && (v37 >= 0.1 || pow(v41 * v37, v40) > 0.7))
    {
      v138 = v40;
      v139 = v41;
      v137 = v16;
      if (v37 < 0.3)
      {
        if (v41 >= 15.0)
        {
          if (v14)
          {
            v117 = 0.0;
            v120 = 1.0;
            v113 = v41;
            v114 = v40;
            v115 = v16;
            v116 = v37;
            v118 = a1;
            v119 = a3;
            goto LABEL_177;
          }

          v129 = 1.0;
          if ((a3 & 1) == 0)
          {
            v129 = boost::math::beta<long double,long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v41, v40, a7, a8, a9, a10, a11, a12);
          }

          v121 = -v129;
          v128 = 1.0;
          v122 = v41;
          v123 = v40;
          v124 = v16;
          v125 = v37;
          v126 = a1;
          v127 = a3;
          goto LABEL_184;
        }

        if ((a3 & 1) == 0)
        {
          v50 = v17 + v18;
          v51 = 0.0;
          v52 = 20;
          v53 = 1.0;
          do
          {
            v54 = v41 + v51;
            v53 = v53 * ((v50 + v51) / (v41 + v51));
            v51 = v51 + 1.0;
            --v52;
          }

          while (v52);
LABEL_172:
          boost::math::detail::ibeta_a_step<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(20, a1, 0, a4, v41, v40, v16, v37, v54, a10, a11, a12);
          v63 = v112;
          if (v14)
          {
            goto LABEL_173;
          }

          v64 = boost::math::beta<long double,long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v41, v40, v106, v107, v108, v109, v110, v111);
LABEL_180:
          v121 = v63 - v64;
          v122 = v41 + 20.0;
          v123 = v40;
          v124 = v16;
          v125 = v37;
          v126 = a1;
          v127 = a3;
          v128 = v53;
LABEL_184:
          v85 = boost::math::detail::beta_small_b_large_a_series<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v126, v127, v122, v123, v124, v125, v121, v128);
          goto LABEL_185;
        }

        goto LABEL_133;
      }

      goto LABEL_147;
    }

    if (v14)
    {
      v65 = 1.0;
      if ((a3 & 1) == 0)
      {
        v65 = boost::math::beta<long double,long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v40, v41, a7, a8, a9, a10, a11, a12);
      }

      v66 = -v65;
      v67 = v40;
      v68 = v41;
      goto LABEL_153;
    }

    v80 = v40;
    v81 = v41;
LABEL_168:
    v25 = boost::math::detail::ibeta_series<long double,boost::math::lanczos::lanczos13m53,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v80, v81, v37, 0.0, v16, a10, a11, a12, &v136, a3, a4);
LABEL_169:
    v14 = 0;
    goto LABEL_187;
  }

  if (a4)
  {
    v28 = 4.45014772e-308;
    a7 = 8.98846567e307;
    if (v17 < 1.0)
    {
      v28 = 8.98846567e307;
    }

    if (v17 != 1.0)
    {
      v19 = v28;
    }

    *a4 = v19;
  }

  if (a2)
  {
    v25 = 0.0;
  }

  else
  {
    v25 = 1.0;
  }

  if (a2 & 1) != 0 || (a3)
  {
    return v25;
  }

  return boost::math::beta<long double,long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v18, v17, a7, a8, a9, a10, a11, a12);
}

double boost::math::beta<long double,long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  boost::math::detail::beta_imp<long double,boost::math::lanczos::lanczos13m53,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(a1, a2, a3, a4, a5, a6, a7, a8);
  if (fabs(result) > 1.79769313e308)
  {
    boost::math::policies::detail::raise_error<std::overflow_error,long double>("boost::math::beta<%1%>(%1%,%1%)", "numeric overflow");
  }

  return result;
}

double boost::math::expm1<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(double a1)
{
  v1 = boost::math::detail::expm1_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(a1);
  if (fabs(v1) > 1.79769313e308)
  {
    boost::math::policies::detail::raise_error<std::overflow_error,long double>("boost::math::expm1<%1%>(%1%)", "numeric overflow");
  }

  return v1;
}

double boost::math::log1p<boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(long double a1)
{
  v2 = a1;
  if (a1 < -1.0)
  {
    boost::math::policies::detail::raise_error<std::domain_error,long double>("log1p<%1%>(%1%)", "log1p(x) requires x > -1, but got x = %1%.", &v2);
  }

  if (a1 == -1.0)
  {
    boost::math::policies::detail::raise_error<std::overflow_error,long double>("log1p<%1%>(%1%)", "Overflow Error");
  }

  return log1pl(a1);
}

double boost::math::detail::ibeta_series<long double,boost::math::lanczos::lanczos13m53,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(long double a1, long double a2, long double a3, double a4, long double a5, double a6, double a7, double a8, uint64_t a9, int a10, long double *a11)
{
  v14 = a1;
  __y = a2;
  v63 = a1;
  if (a11 && (a10 & 1) == 0)
  {
    boost::math::detail::ibeta_series<long double,boost::math::lanczos::lanczos13m53,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>();
  }

  if (!a10)
  {
    v44 = pow(a3, a1);
LABEL_14:
    v48 = v44;
    goto LABEL_15;
  }

  v64 = a1 + a2;
  v15 = a1 + 6.02468004 + -0.5;
  v16 = a2 + 6.02468004;
  v17 = v16 + -0.5;
  v18 = v64 + 6.02468004 + -0.5;
  v19 = boost::math::tools::detail::evaluate_rational_c_imp<long double,unsigned int,long double>(boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::num, boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::denom, &v64, v64 + 6.02468004, v16, 6.02468004, a1 + 6.02468004, a5, a6, a7, a8);
  v27 = boost::math::tools::detail::evaluate_rational_c_imp<long double,unsigned int,long double>(boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::num, boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::denom, &v63, v19, v20, v21, v22, v23, v24, v25, v26);
  __x = v19 / (v27 * boost::math::tools::detail::evaluate_rational_c_imp<long double,unsigned int,long double>(boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::num, boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::denom, &__y, v27, v28, v29, v30, v31, v32, v33, v34));
  v57 = v18 / v17;
  v58 = v17;
  v35 = log(v18 / v17);
  v36 = __y;
  v37 = __y + -0.5;
  v38 = v35 * (__y + -0.5);
  v61 = v15;
  v39 = v18 * a3 / v15;
  v40 = log(v39);
  v14 = v63;
  v41 = v40 * v63;
  if (v38 <= -708.0 || v38 >= 709.0 || v41 <= -708.0 || v41 >= 709.0)
  {
    v45 = v41 + log(__x) + v38;
    v46 = (log(v61) + -1.0) * 0.5 + v45;
    if (a11)
    {
      v47 = log(a5);
      *a11 = exp(v46 + v36 * v47);
    }

    v44 = exp(v46);
    goto LABEL_14;
  }

  if (v36 * v63 >= v58 * 10.0)
  {
    v43 = pow(v57, v37);
  }

  else
  {
    v42 = boost::math::log1p<boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v63 / v58);
    v43 = exp(v37 * v42);
    v14 = v63;
  }

  v48 = sqrt(v61 / 2.71828183) * (__x * v43 * pow(v39, v14));
  if (a11)
  {
    v56 = v48 * pow(a5, __y);
    *a11 = v56;
    if (v56 < 0.0)
    {
      boost::math::detail::ibeta_series<long double,boost::math::lanczos::lanczos13m53,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>();
    }
  }

LABEL_15:
  if (v48 >= 2.22507386e-308)
  {
    v49 = 1.0 - __y;
    v50 = 1;
    v51 = 1000000;
    do
    {
      a4 = v48 / v14 + a4;
      if (fabs(a4 * 2.22044605e-16) >= fabs(v48 / v14))
      {
        break;
      }

      v52 = v49 * a3;
      v49 = v49 + 1.0;
      v53 = v50++;
      v48 = v48 * (v52 / v53);
      v14 = v14 + 1.0;
      --v51;
    }

    while (v51);
    v54 = 1000000 - v51;
    if (v54 >= 0xF4240)
    {
      v64 = v54;
      boost::math::policies::detail::raise_error<boost::math::evaluation_error,long double>("boost::math::ibeta<%1%>(%1%, %1%, %1%) in ibeta_series (with lanczos)", "Series evaluation exceeded %1% iterations, giving up now.", &v64);
    }
  }

  return a4;
}

void boost::math::detail::ibeta_a_step<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(int a1, uint64_t a2, char a3, double *a4, long double a5, long double a6, long double a7, double a8, double a9, double a10, double a11, double a12)
{
  boost::math::detail::ibeta_power_terms<long double,boost::math::lanczos::lanczos13m53,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(a5, a6, a7, a8, 1.0, a10, a11, a12, &v22, a3, a2, "boost::math::ibeta<%1%>(%1%, %1%, %1%)");
  if (a4)
  {
    *a4 = v17;
    if (v17 < 0.0)
    {
      boost::math::detail::ibeta_a_step<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>();
    }
  }

  if (v17 / a5 != 0.0)
  {
    v18 = 1.0;
    if (a1 >= 2)
    {
      v19 = a1 - 1;
      v20 = 0.0;
      v21 = 1.0;
      do
      {
        v21 = v21 * ((a5 + a6 + v20) * a7 / (v20 + a5 + 1.0));
        v18 = v18 + v21;
        v20 = v20 + 1.0;
        --v19;
      }

      while (v19);
    }
  }
}

double boost::math::detail::beta_small_b_large_a_series<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(uint64_t a1, int a2, double a3, long double a4, long double a5, double a6, double a7, double a8)
{
  v81 = *MEMORY[0x1E69E9840];
  v14 = a4 + -1.0;
  v15 = (a4 + -1.0) * 0.5 + a3;
  if (a6 >= 0.35)
  {
    v16 = log(a5);
  }

  else
  {
    v55 = -a6;
    if (a6 > 1.0)
    {
      boost::math::policies::detail::raise_error<std::domain_error,long double>("log1p<%1%>(%1%)", "log1p(x) requires x > -1, but got x = %1%.", &v55);
    }

    if (a6 == 1.0)
    {
      boost::math::policies::detail::raise_error<std::overflow_error,long double>("log1p<%1%>(%1%)", "Overflow Error");
    }

    v16 = log1pl(-a6);
  }

  v53 = v16;
  v17 = -(v15 * v16);
  v24 = boost::math::detail::regularised_gamma_prefix<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>(a1, &v55, a4, v17);
  if (v24 > 2.22507386e-308)
  {
    if (a2)
    {
      v25 = boost::math::detail::tgamma_delta_ratio_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(a3, a4, v18, v19, v20, v21, v22, v23);
      if (fabs(v25) > 1.79769313e308)
      {
        boost::math::policies::detail::raise_error<std::overflow_error,long double>("boost::math::tgamma_delta_ratio<%1%>(%1%, %1%)", "numeric overflow");
      }

      v26 = v24 / v25;
    }

    else
    {
      boost::math::detail::full_igamma_prefix<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(a4, v17);
      v26 = v27;
    }

    v28 = pow(v15, a4);
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v80 = 0;
    v71 = 0u;
    v70 = 0u;
    v69 = 0u;
    v68 = 0u;
    v67 = 0u;
    v66 = 0u;
    v65 = 0u;
    v64 = 0u;
    v29 = v26 / v28 * a8;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 1.0;
    v36 = boost::math::detail::gamma_incomplete_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(1, 1, &v54, 0, a4, *&v17, v30, v31, v32, v33, v34, v35);
    if (fabs(v36) > 1.79769313e308)
    {
      boost::math::policies::detail::raise_error<std::overflow_error,long double>("gamma_q<%1%>(%1%, %1%)", "numeric overflow");
    }

    v37 = 0;
    v38 = v36 / v24;
    a7 = a7 + v29 * (v36 / v24);
    v39 = 1;
    v40 = 1;
    v41 = a4;
    v42 = 1.0;
    do
    {
      *(&v55 + v40) = 0.0;
      v43 = v40;
      v44 = 0.0;
      if (v40 >= 2)
      {
        v45 = 1;
        v46 = v37;
        v47 = &qword_1D15A6B30;
        do
        {
          v48 = *v47;
          v47 += 2;
          v44 = v44 + (v45 * a4 - v43) * *(&v55 + v46) / v48;
          *(&v55 + v40) = v44;
          ++v45;
          --v46;
        }

        while (v46);
      }

      v39 += 2;
      v49 = v44 / v43 + v14 / dbl_1D15A6B18[v39];
      *(&v55 + v40) = v49;
      v38 = (v42 * (v17 + v41 + 1.0) + v41 * (v41 + 1.0) * v38) / (v15 * (v15 * 4.0));
      v50 = v38 * (v29 * v49);
      a7 = a7 + v50;
      if (v50 <= 1.0)
      {
        v50 = fabs(v50 * 4.50359963e15);
        v51 = fabs(a7);
      }

      else
      {
        v51 = fabs(a7 * 2.22044605e-16);
      }

      if (v50 < v51)
      {
        break;
      }

      v42 = v53 * 0.5 * (v53 * 0.5) * v42;
      v41 = v41 + 2.0;
      ++v40;
      ++v37;
    }

    while (v40 != 50);
  }

  return a7;
}

double boost::math::detail::binomial_ccdf<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(double a1, double a2, long double a3, long double a4)
{
  v8 = pow(a3, a1);
  if (v8 <= 2.22507386e-308)
  {
    v10 = a1 * a3;
    if (COERCE__INT64(fabs(a1 * a3)) >= 0x7FF0000000000000)
    {
      v60 = a1 * a3;
      boost::math::policies::detail::raise_error<boost::math::rounding_error,long double>("boost::math::trunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v60);
    }

    v18 = floor(v10);
    v19 = ceil(v10);
    if (v10 < 0.0)
    {
      v18 = v19;
    }

    if (v18 > 2147483650.0 || v18 < -2147483650.0)
    {
      v60 = a1 * a3;
      boost::math::policies::detail::raise_error<boost::math::rounding_error,long double>("boost::math::itrunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v60);
    }

    v21 = v18;
    if (a2 + 1.0 >= v21)
    {
      v22 = a2 + 2.0;
      if (COERCE__INT64(fabs(a2 + 2.0)) >= 0x7FF0000000000000)
      {
        v60 = a2 + 2.0;
        boost::math::policies::detail::raise_error<boost::math::rounding_error,long double>("boost::math::trunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v60);
      }

      v23 = floor(v22);
      v24 = ceil(v22);
      if (v22 < 0.0)
      {
        v23 = v24;
      }

      if (v23 > 2147483650.0 || v23 < -2147483650.0)
      {
        v60 = a2 + 2.0;
        boost::math::policies::detail::raise_error<boost::math::rounding_error,long double>("boost::math::itrunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v60);
      }

      v21 = v23;
    }

    v26 = pow(a3, v21);
    v33 = v26 * pow(a4, a1 - v21);
    if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v60 = a1;
      boost::math::policies::detail::raise_error<boost::math::rounding_error,long double>("boost::math::trunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v60);
    }

    v34 = floor(a1);
    v35 = ceil(a1);
    if (a1 < 0.0)
    {
      v34 = v35;
    }

    if (v34 > 2147483650.0 || v34 < -2147483650.0)
    {
      v60 = a1;
      boost::math::policies::detail::raise_error<boost::math::rounding_error,long double>("boost::math::itrunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v60);
    }

    boost::math::binomial_coefficient<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v34, v21, v34, -2147483650.0, v27, v28, v29, v30, v31, v32);
    v38 = v33 * v37;
    v39 = (v21 - 1);
    if (v38 == 0.0)
    {
      if (v39 <= a2)
      {
        return v38;
      }

      else
      {
        v40 = floor(a1);
        v41 = ceil(a1);
        if (a1 >= 0.0)
        {
          v41 = v40;
        }

        v59 = v41;
        v42 = v41 < -2147483650.0 || v41 > 2147483650.0;
        v43 = v21 - 2;
        v8 = v38;
        do
        {
          v44 = pow(a3, (v43 + 1));
          v52 = pow(a4, a1 - v39);
          if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
          {
            v60 = a1;
            boost::math::policies::detail::raise_error<boost::math::rounding_error,long double>("boost::math::trunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v60);
          }

          if (v42)
          {
            v60 = a1;
            boost::math::policies::detail::raise_error<boost::math::rounding_error,long double>("boost::math::itrunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v60);
          }

          if (((v43 + 1) & 0x80000000) != 0)
          {
            v60 = v39;
            boost::math::policies::detail::raise_error<boost::math::rounding_error,double>("boost::math::itrunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v60);
          }

          boost::math::binomial_coefficient<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v59, v43 + 1, v59, v45, v46, v47, v48, v49, v50, v51);
          v8 = v8 + v44 * v52 * v53;
          v39 = v43--;
        }

        while (v39 > a2);
      }
    }

    else
    {
      v8 = v38;
      if (v39 > a2)
      {
        v54 = v21;
        v8 = v38;
        v55 = v38;
        do
        {
          v55 = v55 * (v54 * a4 / ((a1 - v39) * a3));
          v8 = v8 + v55;
          v39 = (v54 - 2);
          --v54;
        }

        while (v39 > a2);
      }

      v56 = (v21 + 1);
      if (v56 <= a1)
      {
        v57 = v21 + 2;
        do
        {
          v38 = v38 * ((a1 - v56 + 1.0) * a3 / (v56 * a4));
          v8 = v8 + v38;
          v56 = v57++;
        }

        while (v56 <= a1);
      }
    }
  }

  else
  {
    v9 = a1 + -1.0;
    if (COERCE__INT64(fabs(a1 + -1.0)) >= 0x7FF0000000000000)
    {
      v60 = a1 + -1.0;
      boost::math::policies::detail::raise_error<boost::math::rounding_error,long double>("boost::math::trunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v60);
    }

    v11 = floor(v9);
    v12 = ceil(v9);
    if (v9 < 0.0)
    {
      v11 = v12;
    }

    if (v11 > 2147483650.0 || v11 < -2147483650.0)
    {
      v60 = a1 + -1.0;
      boost::math::policies::detail::raise_error<boost::math::rounding_error,long double>("boost::math::itrunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v60);
    }

    v14 = v11;
    v15 = v14;
    if (v14 > a2)
    {
      v16 = v14 + 1;
      v17 = v8;
      do
      {
        v17 = v17 * (v16 * a4 / ((a1 - v15) * a3));
        v8 = v8 + v17;
        v15 = (v16 - 2);
        --v16;
      }

      while (v15 > a2);
    }
  }

  return v8;
}

uint64_t boost::math::itrunc<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(double *a1)
{
  v1 = *a1;
  if ((*a1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v6 = *a1;
    boost::math::policies::detail::raise_error<boost::math::rounding_error,long double>("boost::math::trunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v6);
  }

  v2 = floor(v1);
  v3 = ceil(v1);
  if (v1 < 0.0)
  {
    v2 = v3;
  }

  if (v2 > 2147483650.0 || v2 < -2147483650.0)
  {
    v6 = *a1;
    boost::math::policies::detail::raise_error<boost::math::rounding_error,long double>("boost::math::itrunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v6);
  }

  return v2;
}

void boost::math::detail::ibeta_fraction2<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(uint64_t a1, char a2, double *a3, long double a4, long double a5, long double a6, double a7, double a8, double a9, double a10, double a11)
{
  boost::math::detail::ibeta_power_terms<long double,boost::math::lanczos::lanczos13m53,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(a4, a5, a6, a7, 1.0, a9, a10, a11, v27, a2, a1, "boost::math::ibeta<%1%>(%1%, %1%, %1%)");
  if (a3)
  {
    *a3 = v16;
    if (v16 < 0.0)
    {
      boost::math::detail::ibeta_fraction2<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>();
    }
  }

  if (v16 != 0.0)
  {
    *v27 = a4;
    *&v27[1] = a5;
    *&v27[2] = a6;
    *&v27[3] = a7;
    v28 = 0;
    boost::math::detail::ibeta_fraction2_t<long double>::operator()(v27);
    if (v17 == 0.0)
    {
      v18 = 3.56011817e-307;
    }

    else
    {
      v18 = v17;
    }

    v19 = 0.0;
    v20 = 2;
    v21 = v18;
    do
    {
      v22 = boost::math::detail::ibeta_fraction2_t<long double>::operator()(v27);
      v24 = v23 + v22 * v19;
      v25 = v23 + v22 / v21;
      if (v25 == 0.0)
      {
        v21 = 3.56011817e-307;
      }

      else
      {
        v21 = v25;
      }

      if (v24 == 0.0)
      {
        v19 = 2.80889552e306;
      }

      else
      {
        v19 = 1.0 / v24;
      }

      v18 = v18 * (v19 * v21);
    }

    while (fabs(v19 * v21 + -1.0) > 2.22044605e-16 && v20++ != 0);
  }
}

void boost::math::detail::ibeta_power_terms<long double,boost::math::lanczos::lanczos13m53,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(long double a1, long double a2, long double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, char a10, uint64_t a11, char *a12)
{
  v84 = a2;
  v85 = a1;
  if ((a10 & 1) == 0)
  {
    pow(a3, a1);
    v46 = a4;
    v47 = a2;
LABEL_15:
    pow(v46, v47);
    return;
  }

  v83 = a1 + a2;
  v17 = a1 + 6.02468004 + -0.5;
  v18 = a2 + 6.02468004 + -0.5;
  v19 = a1 + a2 + 6.02468004 + -0.5;
  v20 = boost::math::tools::detail::evaluate_rational_c_imp<long double,unsigned int,long double>(boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::num, boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::denom, &v83, a1 + a2 + 6.02468004, a2 + 6.02468004, 6.02468004, -0.5, a5, a6, a7, a8);
  v28 = boost::math::tools::detail::evaluate_rational_c_imp<long double,unsigned int,long double>(boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::num, boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::denom, &v85, v20, v21, v22, v23, v24, v25, v26, v27);
  v36 = boost::math::tools::detail::evaluate_rational_c_imp<long double,unsigned int,long double>(boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::num, boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::denom, &v84, v28, v29, v30, v31, v32, v33, v34, v35);
  v37 = v19;
  __x = sqrt(v17 / v19) * (sqrt(v18 / 2.71828183) * (v20 / (v28 * v36) * a5));
  v39 = v84;
  v38 = v85;
  v40 = (a3 * v84 - v17 * a4) / v17;
  v41 = fabs(v40);
  v42 = (a4 * v85 - v18 * a3) / v18;
  v43 = fabs(v42);
  if (v43 >= v41)
  {
    v44 = v41;
  }

  else
  {
    v44 = v43;
  }

  if (v44 >= 0.2)
  {
    v48 = v37 * a3 / v17;
    v49 = v37 * a4 / v18;
    v50 = log(v48);
    v51 = v50 * v38;
    v52 = log(v49);
    v53 = v52 * v39;
    if (v50 * v38 < 709.0 && v51 > -708.0 && v53 < 709.0 && v53 > -708.0)
    {
      pow(v48, v38);
      pow(v49, v39);
      return;
    }

    if (v38 >= v39)
    {
      v58 = pow(v48, v38 / v39);
      v59 = v39 * (v52 + log(v58));
      if (v59 < 709.0 && v59 > -708.0)
      {
        v46 = v49 * v58;
        v47 = v39;
        goto LABEL_15;
      }
    }

    else
    {
      v54 = pow(v49, v39 / v38);
      v55 = v38 * (v50 + log(v54));
      if (v55 < 709.0 && v55 > -708.0)
      {
        v46 = v48 * v54;
        v47 = v38;
        goto LABEL_15;
      }
    }

    v60 = v52 * v39 + v51 + log(__x);
    if (v60 < 709.0)
    {
      goto LABEL_71;
    }

    goto LABEL_58;
  }

  if (v40 * v42 <= 0.0)
  {
    v45 = v84 >= v85 ? v85 : v84;
    if (v45 >= 1.0)
    {
      if (v41 >= v43)
      {
        v56 = v41;
      }

      else
      {
        v56 = v43;
      }

      if (v56 < 0.5)
      {
        v57 = v84 / v85;
        if ((v85 >= v84 || v57 * v42 >= 0.1) && (v85 < v84 || v40 / v57 <= 0.1))
        {
          v72 = v40;
          v73 = v42;
          v74 = boost::math::log1p<boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v72);
          v75 = boost::math::expm1<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v74 / v57);
          v76 = v73 + v75 + v75 * v73;
          v71 = v84;
          v78 = boost::math::log1p<boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v76);
        }

        else
        {
          v86 = v42;
          if (v42 < -1.0)
          {
            boost::math::policies::detail::raise_error<std::domain_error,long double>("log1p<%1%>(%1%)", "log1p(x) requires x > -1, but got x = %1%.", &v86);
          }

          if (v42 == -1.0)
          {
            boost::math::policies::detail::raise_error<std::overflow_error,long double>("log1p<%1%>(%1%)", "Overflow Error");
          }

          v77 = log1pl(v42);
          v69 = boost::math::detail::expm1_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v57 * v77);
          if (fabs(v69) > 1.79769313e308)
          {
            boost::math::policies::detail::raise_error<std::overflow_error,long double>("boost::math::expm1<%1%>(%1%)", "numeric overflow");
          }

          v70 = v40 + v69 + v69 * v40;
          v71 = v85;
          v86 = v70;
          if (v70 < -1.0)
          {
            boost::math::policies::detail::raise_error<std::domain_error,long double>("log1p<%1%>(%1%)", "log1p(x) requires x > -1, but got x = %1%.", &v86);
          }

          if (v70 == -1.0)
          {
            boost::math::policies::detail::raise_error<std::overflow_error,long double>("log1p<%1%>(%1%)", "Overflow Error");
          }

          v78 = log1pl(v70);
        }

        v60 = v71 * v78;
        goto LABEL_71;
      }

      v80 = v37;
      if (v41 >= v43)
      {
        v67 = boost::math::log1p<boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v42);
        v68 = v85;
        v64 = log(v80 * a3 / v17) * v68 + v39 * v67;
      }

      else
      {
        v62 = boost::math::log1p<boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>((a3 * v84 - v17 * a4) / v17);
        v63 = v84;
        v64 = log(v80 * a4 / v18) * v63 + v38 * v62;
      }

      if (v64 > -708.0 && v64 < 709.0)
      {
        v60 = v64;
LABEL_71:
        exp(v60);
        return;
      }

      v60 = log(__x) + v64;
      if (v60 < 709.0)
      {
        goto LABEL_71;
      }

LABEL_58:
      boost::math::policies::detail::raise_error<std::overflow_error,long double>(a12, "Overflow Error");
    }
  }

  v79 = v37;
  v81 = (a4 * v85 - v18 * a3) / v18;
  if (v41 >= 0.1)
  {
    pow(v37 * a3 / v17, v85);
  }

  else
  {
    v86 = (a3 * v84 - v17 * a4) / v17;
    if (v40 < -1.0)
    {
      boost::math::policies::detail::raise_error<std::domain_error,long double>("log1p<%1%>(%1%)", "log1p(x) requires x > -1, but got x = %1%.", &v86);
    }

    if (v40 == -1.0)
    {
      boost::math::policies::detail::raise_error<std::overflow_error,long double>("log1p<%1%>(%1%)", "Overflow Error");
    }

    v65 = log1pl((a3 * v84 - v17 * a4) / v17);
    exp(v38 * v65);
  }

  if (v43 >= 0.1)
  {
    v47 = v84;
    v46 = v79 * a4 / v18;
    goto LABEL_15;
  }

  v61 = v84;
  v86 = v81;
  if (v81 < -1.0)
  {
    boost::math::policies::detail::raise_error<std::domain_error,long double>("log1p<%1%>(%1%)", "log1p(x) requires x > -1, but got x = %1%.", &v86);
  }

  if (v81 == -1.0)
  {
    boost::math::policies::detail::raise_error<std::overflow_error,long double>("log1p<%1%>(%1%)", "Overflow Error");
  }

  v66 = log1pl(v81);
  exp(v61 * v66);
}

void boost::math::policies::detail::raise_error<std::domain_error,long double>(char *a1, char *a2, double *a3)
{
  v4 = "Unknown function operating on type %1%";
  if (a1)
  {
    v4 = a1;
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = "Cause unknown: error caused by bad argument with value %1%";
  }

  std::string::basic_string[abi:ne200100]<0>(&v16, v4);
  std::string::basic_string[abi:ne200100]<0>(&v15, v5);
  std::string::basic_string[abi:ne200100]<0>(&v14, "Error in function ");
  boost::math::policies::detail::replace_all_in_string(&v16, "%1%", "long double");
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v16;
  }

  else
  {
    v6 = v16.__r_.__value_.__r.__words[0];
  }

  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v16.__r_.__value_.__l.__size_;
  }

  std::string::append(&v14, v6, size);
  std::string::append(&v14, ": ", 2uLL);
  boost::math::policies::detail::prec_format<long double>(a3, v12);
  if (v13 >= 0)
  {
    v8 = v12;
  }

  else
  {
    v8 = v12[0];
  }

  boost::math::policies::detail::replace_all_in_string(&v15, "%1%", v8);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v15;
  }

  else
  {
    v9 = v15.__r_.__value_.__r.__words[0];
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = v15.__r_.__value_.__l.__size_;
  }

  std::string::append(&v14, v9, v10);
  std::logic_error::logic_error(&v11, &v14);
  v11.__vftable = (MEMORY[0x1E69E55A8] + 16);
  boost::throw_exception<std::domain_error>(&v11);
}

uint64_t boost::math::policies::detail::prec_format<long double>@<X0>(double *a1@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  *(&v9[0].__locale_ + *(v7 - 24)) = 17;
  MEMORY[0x1D388B5A0](&v7, *a1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v6, a2);
  v6[0] = *MEMORY[0x1E69E54D8];
  v4 = *(MEMORY[0x1E69E54D8] + 72);
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v7 = v4;
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return MEMORY[0x1D388B600](&v11);
}

void sub_1D146E4F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void boost::math::detail::beta_imp<long double,boost::math::lanczos::lanczos13m53,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  __y = a2;
  v40 = a1;
  if (a1 <= 0.0)
  {
    v10 = "The arguments to the beta function must be greater than zero (got a=%1%).";
    p_y = &v40;
    goto LABEL_12;
  }

  if (a2 <= 0.0)
  {
    v10 = "The arguments to the beta function must be greater than zero (got b=%1%).";
    p_y = &__y;
LABEL_12:
    boost::math::policies::detail::raise_error<std::domain_error,long double>("boost::math::beta<%1%>(%1%,%1%)", v10, p_y);
  }

  v8 = a1 + a2;
  v38 = a1 + a2;
  v9 = a2 < 2.22044605e-16 && v8 == a1;
  if (!v9 && (a1 >= 2.22044605e-16 || v8 != a2) && a2 != 1.0 && a1 != 1.0 && v8 >= 2.22044605e-16)
  {
    if (a1 >= a2)
    {
      v12 = a2;
      a2 = a1;
    }

    else
    {
      __y = a1;
      v40 = a2;
      v12 = a1;
    }

    v13 = a2 + 6.02468004;
    v14 = v13 + -0.5;
    v15 = v12 + 6.02468004;
    v16 = v8 + 6.02468004 + -0.5;
    v17 = boost::math::tools::detail::evaluate_rational_c_imp<long double,unsigned int,long double>(boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::num, boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::denom, &v40, v8 + 6.02468004, v13, v8, v12, a5, a6, a7, a8);
    v25 = boost::math::tools::detail::evaluate_rational_c_imp<long double,unsigned int,long double>(boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::num, boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::denom, &__y, v17, v18, v19, v20, v21, v22, v23, v24);
    boost::math::tools::detail::evaluate_rational_c_imp<long double,unsigned int,long double>(boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::num, boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::denom, &v38, v25, v26, v27, v28, v29, v30, v31, v32);
    v33 = v40 + -0.5 - __y;
    if (fabs(__y * v33) >= v16 * 100.0 || v40 <= 100.0)
    {
      pow(v14 / v16, v40 + -0.5 - __y);
    }

    else
    {
      v35 = boost::math::log1p<boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(-__y / v16);
      exp(v33 * v35);
    }

    v36 = v15 + -0.5;
    if (v16 <= 1.0e10)
    {
      v37 = v14 * v36 / (v16 * v16);
    }

    else
    {
      v37 = v14 / v16 * (v36 / v16);
    }

    pow(v37, __y);
  }
}

void boost::math::policies::detail::raise_error<std::overflow_error,long double>(char *a1, const char *a2)
{
  v2 = "Unknown function operating on type %1%";
  if (a1)
  {
    v2 = a1;
  }

  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = "Cause unknown";
  }

  std::string::basic_string[abi:ne200100]<0>(&v9, v2);
  std::string::basic_string[abi:ne200100]<0>(&v8, "Error in function ");
  boost::math::policies::detail::replace_all_in_string(&v9, "%1%", "long double");
  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v9;
  }

  else
  {
    v4 = v9.__r_.__value_.__r.__words[0];
  }

  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v9.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v9.__r_.__value_.__l.__size_;
  }

  std::string::append(&v8, v4, size);
  std::string::append(&v8, ": ", 2uLL);
  v6 = strlen(v3);
  std::string::append(&v8, v3, v6);
  std::runtime_error::runtime_error(&v7, &v8);
  v7.__vftable = (MEMORY[0x1E69E55C0] + 16);
  boost::throw_exception<std::overflow_error>(&v7);
}

void sub_1D146E858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::runtime_error a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  std::runtime_error::~runtime_error(&a9);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

double boost::math::tools::detail::evaluate_rational_c_imp<long double,unsigned int,long double>(float64_t *a1, _DWORD *a2, double *a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v21 = *a3;
  if (*a3 <= 1.0)
  {
    v41 = v21 * v21;
    v23.f64[0] = a1[11];
    v24.f64[0] = a1[12];
    LODWORD(a10) = a2[11];
    LODWORD(a9) = a2[12];
    v27 = *&a9;
    LODWORD(a11) = a2[9];
    LODWORD(a9) = a2[10];
    v28 = *&a9;
    v29 = *&a10;
    v30 = *&a11;
    v26.f64[0] = a1[9];
    v25.f64[0] = a1[10];
    LODWORD(v14) = a2[7];
    LODWORD(a11) = a2[8];
    v33 = *&a11;
    v34 = v14;
    v32.f64[0] = a1[7];
    v31.f64[0] = a1[8];
    LODWORD(v16) = a2[5];
    LODWORD(v15) = a2[6];
    v37 = v15;
    v38 = v16;
    v36.f64[0] = a1[5];
    v35.f64[0] = a1[6];
    LODWORD(v19) = a2[3];
    LODWORD(v17) = a2[4];
    v42 = v17;
    v43 = v19;
    v40.f64[0] = a1[3];
    v39.f64[0] = a1[4];
    LODWORD(v11) = a2[1];
    LODWORD(v20) = a2[2];
    v46 = v20;
    v47 = v11;
    v45.f64[0] = a1[1];
    v44.f64[0] = a1[2];
    v48.f64[0] = *a1;
  }

  else
  {
    *&v22 = v21 * v21;
    v21 = 1.0 / v21;
    v24.f64[0] = *a1;
    v23.f64[0] = a1[1];
    v25.f64[0] = a1[2];
    v26.f64[0] = a1[3];
    LODWORD(a10) = *a2;
    LODWORD(a11) = a2[1];
    v27 = *&a10;
    LODWORD(a10) = a2[2];
    LODWORD(v14) = a2[3];
    v28 = *&a10;
    v29 = *&a11;
    v30 = v14;
    v31.f64[0] = a1[4];
    v32.f64[0] = a1[5];
    LODWORD(v14) = a2[4];
    LODWORD(v15) = a2[5];
    v33 = v14;
    v34 = v15;
    v35.f64[0] = a1[6];
    v36.f64[0] = a1[7];
    LODWORD(v16) = a2[6];
    LODWORD(v18) = a2[7];
    v37 = v16;
    v38 = v18;
    v39.f64[0] = a1[8];
    v40.f64[0] = a1[9];
    v41 = 1.0 / *&v22;
    LODWORD(v22) = a2[8];
    LODWORD(v20) = a2[9];
    v42 = v22;
    v43 = v20;
    v44.f64[0] = a1[10];
    v45.f64[0] = a1[11];
    LODWORD(v11) = a2[10];
    LODWORD(v12) = a2[11];
    v46 = v11;
    v47 = v12;
    v48.f64[0] = a1[12];
    a2 += 12;
  }

  LODWORD(v13) = *a2;
  v24.f64[1] = v27;
  v25.f64[1] = v28;
  v23.f64[1] = v29;
  v26.f64[1] = v30;
  v31.f64[1] = v33;
  v32.f64[1] = v34;
  v35.f64[1] = v37;
  v36.f64[1] = v38;
  v39.f64[1] = v42;
  v40.f64[1] = v43;
  v44.f64[1] = v46;
  v45.f64[1] = v47;
  v48.f64[1] = v13;
  v49 = vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(v26, v23, v41), v41), v32), v41), v36), v41), v40), v41), v45), v21), vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(v25, v24, v41), v41), v31), v41), v35), v41), v39), v41), v44), v41), v48));
  *&result = *&vdivq_f64(v49, vdupq_laneq_s64(v49, 1));
  return result;
}

double boost::math::detail::expm1_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(double result)
{
  v1 = fabs(result);
  if (v1 <= 0.5)
  {
    if (v1 >= 2.22044605e-16)
    {
      v2 = vaddq_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_1D15A6280, xmmword_1D15A6270, result * result), result * result), xmmword_1D15A62A0), vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_1D15A6260, xmmword_1D15A6250, result * result), result * result), xmmword_1D15A6290), result));
      return result * v2.f64[0] / v2.f64[1] + result * 1.02812767;
    }
  }

  else if (v1 >= 709.0)
  {
    v3 = result <= 0.0;
    result = -1.0;
    if (!v3)
    {
      boost::math::policies::detail::raise_error<std::overflow_error,long double>("boost::math::expm1<%1%>(%1%)", "Overflow Error");
    }
  }

  else
  {
    return exp(result) + -1.0;
  }

  return result;
}

double boost::math::detail::powm1_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(uint64_t a1, long double a2, double a3)
{
  v14 = a2;
  if (a2 <= 0.0)
  {
    if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v15 = a3;
      boost::math::policies::detail::raise_error<boost::math::rounding_error,long double>("boost::math::trunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v15);
    }

    v9 = ceil(a3);
    v10 = floor(a3);
    if (a3 >= 0.0)
    {
      v9 = v10;
    }

    if (v9 != a3)
    {
      boost::math::policies::detail::raise_error<std::domain_error,long double>(boost::math::detail::powm1_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(long double,long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy> const&)::function, "For non-integral exponent, expected base > 0 but got %1%", &v14);
    }

    v11 = a3 * 0.5;
    if (COERCE__INT64(fabs(a3 * 0.5)) >= 0x7FF0000000000000)
    {
      v15 = a3 * 0.5;
      boost::math::policies::detail::raise_error<boost::math::rounding_error,long double>("boost::math::trunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v15);
    }

    if (v11 >= 0.0)
    {
      v12 = floor(v11);
    }

    else
    {
      v12 = ceil(v11);
    }

    if (v12 != v11)
    {
      return pow(a2, a3) + -1.0;
    }

    return boost::math::detail::powm1_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(a1, -a2, a3);
  }

  else
  {
    v5 = fabs((a2 + -1.0) * a3);
    if (fabs(a3) >= 0.2 && v5 >= 0.5)
    {
      return pow(a2, a3) + -1.0;
    }

    v7 = log(a2) * a3;
    if (v7 >= 0.5)
    {
      if (v7 > 709.0)
      {
        boost::math::policies::detail::raise_error<std::overflow_error,long double>(boost::math::detail::powm1_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(long double,long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy> const&)::function, "Overflow Error");
      }

      return pow(a2, a3) + -1.0;
    }

    v8 = boost::math::detail::expm1_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v7);
    if (fabs(v8) > 1.79769313e308)
    {
      boost::math::policies::detail::raise_error<std::overflow_error,long double>("boost::math::expm1<%1%>(%1%)", "numeric overflow");
    }
  }

  return v8;
}

void boost::math::policies::detail::raise_error<boost::math::rounding_error,long double>(char *a1, char *a2, double *a3)
{
  v4 = "Unknown function operating on type %1%";
  if (a1)
  {
    v4 = a1;
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = "Cause unknown: error caused by bad argument with value %1%";
  }

  std::string::basic_string[abi:ne200100]<0>(&v16, v4);
  std::string::basic_string[abi:ne200100]<0>(&v15, v5);
  std::string::basic_string[abi:ne200100]<0>(&v14, "Error in function ");
  boost::math::policies::detail::replace_all_in_string(&v16, "%1%", "long double");
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v16;
  }

  else
  {
    v6 = v16.__r_.__value_.__r.__words[0];
  }

  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v16.__r_.__value_.__l.__size_;
  }

  std::string::append(&v14, v6, size);
  std::string::append(&v14, ": ", 2uLL);
  boost::math::policies::detail::prec_format<long double>(a3, v12);
  if (v13 >= 0)
  {
    v8 = v12;
  }

  else
  {
    v8 = v12[0];
  }

  boost::math::policies::detail::replace_all_in_string(&v15, "%1%", v8);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v15;
  }

  else
  {
    v9 = v15.__r_.__value_.__r.__words[0];
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = v15.__r_.__value_.__l.__size_;
  }

  std::string::append(&v14, v9, v10);
  std::runtime_error::runtime_error(&v11, &v14);
  v11.__vftable = &unk_1F4D39F70;
  boost::throw_exception<boost::math::rounding_error>(&v11);
}

void sub_1D146EE5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::runtime_error a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  std::runtime_error::~runtime_error(&a9);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  _Unwind_Resume(a1);
}

void boost::throw_exception<boost::math::rounding_error>(const std::runtime_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<boost::math::rounding_error>::wrapexcept(exception, a1);
}

void boost::math::rounding_error::~rounding_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x1D388B630);
}

uint64_t boost::wrapexcept<boost::math::rounding_error>::wrapexcept(uint64_t a1, const std::runtime_error *a2)
{
  *a1 = &unk_1F4D39E60;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &unk_1F4D39FF8;
  *(a1 + 8) = &unk_1F4D3A028;
  *(a1 + 24) = &unk_1F4D3A050;
  return a1;
}

uint64_t boost::wrapexcept<boost::math::rounding_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_1F4D39E90;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

void sub_1D146F240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<boost::math::rounding_error>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<boost::math::rounding_error>::wrapexcept(exception, a1);
}

void boost::wrapexcept<boost::math::rounding_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_1F4D39E90;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  std::runtime_error::~runtime_error((a1 + 8));

  JUMPOUT(0x1D388B630);
}

void non-virtual thunk toboost::wrapexcept<boost::math::rounding_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 16) = &unk_1F4D39E90;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));

  std::runtime_error::~runtime_error(a1);
}

{
  *(a1 + 16) = &unk_1F4D39E90;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x1D388B630);
}

void non-virtual thunk toboost::wrapexcept<boost::math::rounding_error>::~wrapexcept(void *a1)
{
  *a1 = &unk_1F4D39E90;
  v1 = (a1 - 2);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  std::runtime_error::~runtime_error(v1);
}

{
  *a1 = &unk_1F4D39E90;
  v1 = (a1 - 2);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  std::runtime_error::~runtime_error(v1);

  JUMPOUT(0x1D388B630);
}

uint64_t boost::wrapexcept<boost::math::rounding_error>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4D39E60;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &unk_1F4D39F70;
  v4 = *(a2 + 32);
  *(a1 + 24) = &unk_1F4D39E90;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &unk_1F4D39FF8;
  *(a1 + 8) = &unk_1F4D3A028;
  *(a1 + 24) = &unk_1F4D3A050;
  return a1;
}

void boost::math::policies::detail::raise_error<boost::math::evaluation_error,long double>(char *a1, char *a2, double *a3)
{
  v4 = "Unknown function operating on type %1%";
  if (a1)
  {
    v4 = a1;
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = "Cause unknown: error caused by bad argument with value %1%";
  }

  std::string::basic_string[abi:ne200100]<0>(&v16, v4);
  std::string::basic_string[abi:ne200100]<0>(&v15, v5);
  std::string::basic_string[abi:ne200100]<0>(&v14, "Error in function ");
  boost::math::policies::detail::replace_all_in_string(&v16, "%1%", "long double");
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v16;
  }

  else
  {
    v6 = v16.__r_.__value_.__r.__words[0];
  }

  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v16.__r_.__value_.__l.__size_;
  }

  std::string::append(&v14, v6, size);
  std::string::append(&v14, ": ", 2uLL);
  boost::math::policies::detail::prec_format<long double>(a3, v12);
  if (v13 >= 0)
  {
    v8 = v12;
  }

  else
  {
    v8 = v12[0];
  }

  boost::math::policies::detail::replace_all_in_string(&v15, "%1%", v8);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v15;
  }

  else
  {
    v9 = v15.__r_.__value_.__r.__words[0];
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = v15.__r_.__value_.__l.__size_;
  }

  std::string::append(&v14, v9, v10);
  std::runtime_error::runtime_error(&v11, &v14);
  v11.__vftable = &unk_1F4D3A070;
  boost::throw_exception<boost::math::evaluation_error>(&v11);
}

void sub_1D146F794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::runtime_error a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  std::runtime_error::~runtime_error(&a9);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  _Unwind_Resume(a1);
}

void boost::throw_exception<boost::math::evaluation_error>(const std::runtime_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<boost::math::evaluation_error>::wrapexcept(exception, a1);
}

void boost::math::evaluation_error::~evaluation_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x1D388B630);
}

uint64_t boost::wrapexcept<boost::math::evaluation_error>::wrapexcept(uint64_t a1, const std::runtime_error *a2)
{
  *a1 = &unk_1F4D39E60;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &unk_1F4D3A0F8;
  *(a1 + 8) = &unk_1F4D3A128;
  *(a1 + 24) = &unk_1F4D3A150;
  return a1;
}

uint64_t boost::wrapexcept<boost::math::evaluation_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_1F4D39E90;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

void sub_1D146FB78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<boost::math::evaluation_error>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<boost::math::evaluation_error>::wrapexcept(exception, a1);
}