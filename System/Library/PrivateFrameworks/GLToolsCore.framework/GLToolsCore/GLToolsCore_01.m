const char *dy_compact_string_from_enum(int a1)
{
  if (a1 > 24719)
  {
    if (a1 < 0x10000)
    {
      switch(a1)
      {
        case 24720:
          result = "Pn Triangles";
          break;
        case 24721:
          result = "Max Pn Triangles Tesselation Level";
          break;
        case 24722:
          result = "Pn Triangles Point Mode";
          break;
        case 24723:
          result = "Pn Triangles Normal Mode";
          break;
        case 24724:
          result = "Pn Triangles Tesselation Level";
          break;
        case 24725:
          result = "Pn Triangles Point Mode Linear";
          break;
        case 24726:
          result = "Pn Triangles Point Mode Cubic";
          break;
        case 24727:
          result = "Pn Triangles Normal Mode Linear";
          break;
        case 24728:
          result = "Pn Triangles Normal Mode Quadratic";
          break;
        case 24755:
          result = "Cull Mode";
          break;
        case 24756:
          result = "Cull Center";
          break;
        case 24757:
          result = "Cull Clip";
          break;
        case 32768:
          result = "Abgr";
          break;
        case 32769:
          result = "Constant Color";
          break;
        case 32770:
          result = "One Minus Constant Color";
          break;
        case 32771:
          result = "Constant Alpha";
          break;
        case 32772:
          result = "One Minus Constant Alpha";
          break;
        case 32773:
          result = "Color";
          break;
        case 32774:
          result = "Func Add";
          break;
        case 32775:
          result = "Min";
          break;
        case 32776:
          result = "Max";
          break;
        case 32777:
          result = "Equation RGB";
          break;
        case 32778:
          result = "Func Subtract";
          break;
        case 32779:
          result = "Func Reverse Subtract";
          break;
        case 32784:
          result = "Convolution 1D";
          break;
        case 32785:
          result = "Convolution 2D";
          break;
        case 32786:
          result = "Separable 2D";
          break;
        case 32787:
          result = "Convolution Border Mode";
          break;
        case 32788:
          result = "Convolution Filter Scale";
          break;
        case 32789:
          result = "Convolution Filter Bias";
          break;
        case 32790:
          result = "Reduce";
          break;
        case 32791:
          result = "Convolution Format";
          break;
        case 32792:
          result = "Convolution Width";
          break;
        case 32793:
          result = "Convolution Height";
          break;
        case 32794:
          result = "Max Convolution Width";
          break;
        case 32795:
          result = "Max Convolution Height";
          break;
        case 32796:
          result = "Post Convolution Red Scale";
          break;
        case 32797:
          result = "Post Convolution Green Scale";
          break;
        case 32798:
          result = "Post Convolution Blue Scale";
          break;
        case 32799:
          result = "Post Convolution Alpha Scale";
          break;
        case 32800:
          result = "Post Convolution Red Bias";
          break;
        case 32801:
          result = "Post Convolution Green Bias";
          break;
        case 32802:
          result = "Post Convolution Blue Bias";
          break;
        case 32803:
          result = "Post Convolution Alpha Bias";
          break;
        case 32804:
          result = "Histogram";
          break;
        case 32805:
          result = "Proxy Histogram";
          break;
        case 32806:
          result = "Histogram Width";
          break;
        case 32807:
          result = "Histogram Format";
          break;
        case 32808:
          result = "Histogram Red Size";
          break;
        case 32809:
          result = "Histogram Green Size";
          break;
        case 32810:
          result = "Histogram Blue Size";
          break;
        case 32811:
          result = "Histogram Alpha Size";
          break;
        case 32812:
          result = "Histogram Luminance Size";
          break;
        case 32813:
          result = "Histogram Sink";
          break;
        case 32814:
          result = "Minmax";
          break;
        case 32815:
          result = "Minmax Format";
          break;
        case 32816:
          result = "Minmax Sink";
          break;
        case 32817:
          result = "Table Too Large";
          break;
        case 32818:
          result = "Unsigned Byte 3 3 2";
          break;
        case 32819:
          result = "Unsigned Short 4 4 4 4";
          break;
        case 32820:
          result = "Unsigned Short 5 5 5 1";
          break;
        case 32821:
          result = "Unsigned Int 8 8 8 8";
          break;
        case 32822:
          result = "Unsigned Int 10 10 10 2";
          break;
        case 32823:
          result = "Fill";
          break;
        case 32824:
          result = "Factor";
          break;
        case 32825:
          result = "Bias";
          break;
        case 32826:
          result = "Rescale Normal";
          break;
        case 32827:
          result = "Alpha4";
          break;
        case 32828:
          result = "Alpha8";
          break;
        case 32829:
          result = "Alpha12";
          break;
        case 32830:
          result = "Alpha16";
          break;
        case 32831:
          result = "Luminance4";
          break;
        case 32832:
          result = "Luminance8";
          break;
        case 32833:
          result = "Luminance12";
          break;
        case 32834:
          result = "Luminance16";
          break;
        case 32835:
          result = "Luminance4 Alpha4";
          break;
        case 32836:
          result = "Luminance6 Alpha2";
          break;
        case 32837:
          result = "Luminance8 Alpha8";
          break;
        case 32838:
          result = "Luminance12 Alpha4";
          break;
        case 32839:
          result = "Luminance12 Alpha12";
          break;
        case 32840:
          result = "Luminance16 Alpha16";
          break;
        case 32841:
          result = "Intensity";
          break;
        case 32842:
          result = "Intensity4";
          break;
        case 32843:
          result = "Intensity8";
          break;
        case 32844:
          result = "Intensity12";
          break;
        case 32845:
          result = "Intensity16";
          break;
        case 32846:
          result = "RGB2";
          break;
        case 32847:
          result = "RGB4";
          break;
        case 32848:
          result = "RGB5";
          break;
        case 32849:
          result = "RGB8";
          break;
        case 32850:
          result = "RGB10";
          break;
        case 32851:
          result = "RGB12";
          break;
        case 32852:
          result = "RGB16";
          break;
        case 32853:
          result = "RGBA2";
          break;
        case 32854:
          result = "RGBA4";
          break;
        case 32855:
          result = "RGB5 A1";
          break;
        case 32856:
          result = "RGBA8";
          break;
        case 32857:
          result = "RGB10 A2";
          break;
        case 32858:
          result = "RGBA12";
          break;
        case 32859:
          result = "RGBA16";
          break;
        case 32860:
          result = "Red Size";
          break;
        case 32861:
          result = "Green Size";
          break;
        case 32862:
          result = "Blue Size";
          break;
        case 32863:
          result = "Alpha Size";
          break;
        case 32864:
          result = "Luminance Size";
          break;
        case 32865:
          result = "Intensity Size";
          break;
        case 32866:
          result = "Replace";
          break;
        case 32867:
          result = "Proxy Texture 1D";
          break;
        case 32868:
          result = "Proxy Texture 2D";
          break;
        case 32869:
          result = "Too Large";
          break;
        case 32870:
          result = "Priority";
          break;
        case 32871:
          result = "Resident";
          break;
        case 32872:
          result = "Binding 1D";
          break;
        case 32873:
          result = "Binding 2D";
          break;
        case 32874:
          result = "Binding 3D";
          break;
        case 32875:
          result = "Pack Skip Images";
          break;
        case 32876:
          result = "Pack Image Height";
          break;
        case 32877:
          result = "Unpack Skip Images";
          break;
        case 32878:
          result = "Unpack Image Height";
          break;
        case 32879:
          result = "3D";
          break;
        case 32880:
          result = "Proxy Texture 3D";
          break;
        case 32881:
          result = "Depth";
          break;
        case 32882:
          result = "Wrap R";
          break;
        case 32883:
          result = "Max 3D Texture Size";
          break;
        case 32884:
          result = "Vertex Array";
          break;
        case 32885:
          result = "Normal Array";
          break;
        case 32886:
          result = "Color Array";
          break;
        case 32887:
          result = "Index Array";
          break;
        case 32888:
          result = "Coord Array";
          break;
        case 32889:
          result = "Edge Flag Array";
          break;
        case 32890:
          result = "Vertex Array Size";
          break;
        case 32891:
          result = "Vertex Array Type";
          break;
        case 32892:
          result = "Vertex Array Stride";
          break;
        case 32893:
          result = "Vertex Array Count";
          break;
        case 32894:
          result = "Normal Array Type";
          break;
        case 32895:
          result = "Normal Array Stride";
          break;
        case 32896:
          result = "Normal Array Count";
          break;
        case 32897:
          result = "Color Array Size";
          break;
        case 32898:
          result = "Color Array Type";
          break;
        case 32899:
          result = "Color Array Stride";
          break;
        case 32900:
          result = "Color Array Count";
          break;
        case 32901:
          result = "Index Array Type";
          break;
        case 32902:
          result = "Index Array Stride";
          break;
        case 32903:
          result = "Index Array Count";
          break;
        case 32904:
          result = "Coord Array Size";
          break;
        case 32905:
          result = "Coord Array Type";
          break;
        case 32906:
          result = "Coord Array Stride";
          break;
        case 32907:
          result = "Coord Array Count";
          break;
        case 32908:
          result = "Edge Flag Array Stride";
          break;
        case 32909:
          result = "Edge Flag Array Count";
          break;
        case 32910:
          result = "Vertex Array Pointer";
          break;
        case 32911:
          result = "Normal Array Pointer";
          break;
        case 32912:
          result = "Color Array Pointer";
          break;
        case 32913:
          result = "Index Array Pointer";
          break;
        case 32914:
          result = "Coord Array Pointer";
          break;
        case 32915:
          result = "Edge Flag Array Pointer";
          break;
        case 32925:
          result = "Multisample";
          break;
        case 32926:
          result = "Alpha To Coverage";
          break;
        case 32927:
          result = "Alpha To One";
          break;
        case 32928:
          result = "Coverage";
          break;
        case 32936:
          result = "Sample Buffers";
          break;
        case 32937:
          result = "Samples";
          break;
        case 32938:
          result = "Coverage Value";
          break;
        case 32939:
          result = "Coverage Invert";
          break;
        case 32945:
          result = "Matrix";
          break;
        case 32946:
          result = "Matrix Stack Depth";
          break;
        case 32947:
          result = "Max Color Matrix Stack Depth";
          break;
        case 32948:
          result = "Post Color Matrix Red Scale";
          break;
        case 32949:
          result = "Post Color Matrix Green Scale";
          break;
        case 32950:
          result = "Post Color Matrix Blue Scale";
          break;
        case 32951:
          result = "Post Color Matrix Alpha Scale";
          break;
        case 32952:
          result = "Post Color Matrix Red Bias";
          break;
        case 32953:
          result = "Post Color Matrix Green Bias";
          break;
        case 32954:
          result = "Post Color Matrix Blue Bias";
          break;
        case 32955:
          result = "Post Color Matrix Alpha Bias";
          break;
        case 32959:
          result = "Compare Fail Value";
          break;
        case 32968:
          result = "Dst RGB";
          break;
        case 32969:
          result = "Src RGB";
          break;
        case 32970:
          result = "Dst Alpha";
          break;
        case 32971:
          result = "Src Alpha";
          break;
        case 32976:
          result = "Table";
          break;
        case 32977:
          result = "Post Convolution Color Table";
          break;
        case 32978:
          result = "Post Color Matrix Color Table";
          break;
        case 32979:
          result = "Proxy Color Table";
          break;
        case 32980:
          result = "Proxy Post Convolution Color Table";
          break;
        case 32981:
          result = "Proxy Post Color Matrix Color Table";
          break;
        case 32982:
          result = "Table Scale";
          break;
        case 32983:
          result = "Table Bias";
          break;
        case 32984:
          result = "Table Format";
          break;
        case 32985:
          result = "Table Width";
          break;
        case 32986:
          result = "Table Red Size";
          break;
        case 32987:
          result = "Table Green Size";
          break;
        case 32988:
          result = "Table Blue Size";
          break;
        case 32989:
          result = "Table Alpha Size";
          break;
        case 32990:
          result = "Table Luminance Size";
          break;
        case 32991:
          result = "Table Intensity Size";
          break;
        case 32992:
          result = "BGR";
          break;
        case 32993:
          result = "BGRA";
          break;
        case 32994:
          result = "Index1";
          break;
        case 32995:
          result = "Index2";
          break;
        case 32996:
          result = "Index4";
          break;
        case 32997:
          result = "Index8";
          break;
        case 32998:
          result = "Index12";
          break;
        case 32999:
          result = "Index16";
          break;
        case 33000:
          result = "Max Elements Vertices";
          break;
        case 33001:
          result = "Max Elements Indices";
          break;
        case 33005:
          result = "Index Size";
          break;
        case 33008:
          result = "Clip Volume Clipping Hint";
          break;
        case 33062:
          result = "Size Min";
          break;
        case 33063:
          result = "Size Max";
          break;
        case 33064:
          result = "Fade Threshold Size";
          break;
        case 33065:
          result = "Distance Attenuation";
          break;
        case 33069:
          result = "Clamp To Border";
          break;
        case 33071:
          result = "Clamp To Edge";
          break;
        case 33082:
          result = "Min Lod";
          break;
        case 33083:
          result = "Max Lod";
          break;
        case 33084:
          result = "Base Level";
          break;
        case 33085:
          result = "Max Level";
          break;
        case 33104:
          result = "Ignore Border";
          break;
        case 33105:
          result = "Constant Border";
          break;
        case 33107:
          result = "Replicate Border";
          break;
        case 33108:
          result = "Convolution Border Color";
          break;
        case 33169:
          result = "Generate Mipmap";
          break;
        case 33170:
          result = "Generate Mipmap Hint";
          break;
        case 33189:
          result = "Depth Component16";
          break;
        case 33190:
          result = "Depth Component24";
          break;
        case 33191:
          result = "Depth Component32";
          break;
        case 33192:
          result = "Array Element Lock First";
          break;
        case 33193:
          result = "Array Element Lock Count";
          break;
        case 33272:
          result = "Control";
          break;
        case 33273:
          result = "Single Color";
          break;
        case 33274:
          result = "Separate Specular Color";
          break;
        case 33275:
          result = "Shared Texture Palette";
          break;
        case 33280:
          result = "Text Fragment Shader";
          break;
        case 33296:
          result = "Attachment Color Encoding";
          break;
        case 33297:
          result = "Attachment Component Type";
          break;
        case 33298:
          result = "Attachment Red Size";
          break;
        case 33299:
          result = "Attachment Green Size";
          break;
        case 33300:
          result = "Attachment Blue Size";
          break;
        case 33301:
          result = "Attachment Alpha Size";
          break;
        case 33302:
          result = "Attachment Depth Size";
          break;
        case 33303:
          result = "Attachment Stencil Size";
          break;
        case 33304:
          result = "Default";
          break;
        case 33305:
          result = "Undefined";
          break;
        case 33306:
          result = "Stencil Attachment";
          break;
        case 33307:
          result = "Major Version";
          break;
        case 33308:
          result = "Minor Version";
          break;
        case 33309:
          result = "Num Extensions";
          break;
        case 33310:
          result = "Context Flags";
          break;
        case 33317:
          result = "Compressed Red";
          break;
        case 33318:
          result = "Compressed RG";
          break;
        case 33319:
          result = "RG";
          break;
        case 33320:
          result = "RG Integer";
          break;
        case 33321:
          result = "R8";
          break;
        case 33322:
          result = "R16";
          break;
        case 33323:
          result = "RG8";
          break;
        case 33324:
          result = "RG16";
          break;
        case 33325:
          result = "R16f";
          break;
        case 33326:
          result = "R32f";
          break;
        case 33327:
          result = "RG16f";
          break;
        case 33328:
          result = "RG32f";
          break;
        case 33329:
          result = "R8i";
          break;
        case 33330:
          result = "R8ui";
          break;
        case 33331:
          result = "R16i";
          break;
        case 33332:
          result = "R16ui";
          break;
        case 33333:
          result = "R32i";
          break;
        case 33334:
          result = "R32ui";
          break;
        case 33335:
          result = "RG8i";
          break;
        case 33336:
          result = "RG8ui";
          break;
        case 33337:
          result = "RG16i";
          break;
        case 33338:
          result = "RG16ui";
          break;
        case 33339:
          result = "RG32i";
          break;
        case 33340:
          result = "RG32ui";
          break;
        case 33344:
          result = "Sync CL Event";
          break;
        case 33345:
          result = "Sync CL Event Complete";
          break;
        case 33367:
          result = "Program Binary Retrievable Hint";
          break;
        case 33368:
          result = "Program Separable";
          break;
        case 33369:
          result = "Active Program";
          break;
        case 33370:
          result = "Program Pipeline Binding";
          break;
        case 33371:
          result = "Max Viewports";
          break;
        case 33372:
          result = "Viewport Subpixel Bits";
          break;
        case 33373:
          result = "Viewport Bounds Range";
          break;
        case 33374:
          result = "Layer Provoking Vertex";
          break;
        case 33375:
          result = "Viewport Index Provoking Vertex";
          break;
        case 33376:
          result = "Undefined Vertex";
          break;
        case 33503:
          result = "Immutable Levels";
          break;
        case 33510:
          result = "Sampler";
          break;
        case 33634:
          result = "Unsigned Byte 2 3 3 Rev";
          break;
        case 33635:
          result = "Unsigned Short 5 6 5";
          break;
        case 33636:
          result = "Unsigned Short 5 6 5 Rev";
          break;
        case 33637:
          result = "Unsigned Short 4 4 4 4 Rev";
          break;
        case 33638:
          result = "Unsigned Short 1 5 5 5 Rev";
          break;
        case 33639:
          result = "Unsigned Int 8 8 8 8 Rev";
          break;
        case 33640:
          result = "Unsigned Int 2 10 10 10 Rev";
          break;
        case 33648:
          result = "Mirrored Repeat";
          break;
        case 33776:
          result = "Compressed RGB S3TC DXT1";
          break;
        case 33777:
          result = "Compressed RGBA S3TC DXT1";
          break;
        case 33778:
          result = "Compressed RGBA S3TC DXT3";
          break;
        case 33779:
          result = "Compressed RGBA S3TC DXT5";
          break;
        case 33872:
          result = "Coord Src";
          break;
        case 33873:
          result = "Coord";
          break;
        case 33874:
          result = "Fragment Depth";
          break;
        case 33875:
          result = "Current Fog Coordinate";
          break;
        case 33876:
          result = "Coord Array Type";
          break;
        case 33877:
          result = "Coord Array Stride";
          break;
        case 33878:
          result = "Coord Array Pointer";
          break;
        case 33879:
          result = "Coord Array";
          break;
        case 33880:
          result = "Sum";
          break;
        case 33881:
          result = "Current Secondary Color";
          break;
        case 33882:
          result = "Secondary Color Array Size";
          break;
        case 33883:
          result = "Secondary Color Array Type";
          break;
        case 33884:
          result = "Secondary Color Array Stride";
          break;
        case 33885:
          result = "Secondary Color Array Pointer";
          break;
        case 33886:
          result = "Secondary Color Array";
          break;
        case 33887:
          result = "Current Raster Secondary Color";
          break;
        case 33901:
          result = "Aliased Point Size Range";
          break;
        case 33902:
          result = "Aliased Line Width Range";
          break;
        case 33984:
          result = "Texture0";
          break;
        case 33985:
          result = "Texture1";
          break;
        case 33986:
          result = "Texture2";
          break;
        case 33987:
          result = "Texture3";
          break;
        case 33988:
          result = "Texture4";
          break;
        case 33989:
          result = "Texture5";
          break;
        case 33990:
          result = "Texture6";
          break;
        case 33991:
          result = "Texture7";
          break;
        case 33992:
          result = "Texture8";
          break;
        case 33993:
          result = "Texture9";
          break;
        case 33994:
          result = "Texture10";
          break;
        case 33995:
          result = "Texture11";
          break;
        case 33996:
          result = "Texture12";
          break;
        case 33997:
          result = "Texture13";
          break;
        case 33998:
          result = "Texture14";
          break;
        case 33999:
          result = "Texture15";
          break;
        case 34000:
          result = "Texture16";
          break;
        case 34001:
          result = "Texture17";
          break;
        case 34002:
          result = "Texture18";
          break;
        case 34003:
          result = "Texture19";
          break;
        case 34004:
          result = "Texture20";
          break;
        case 34005:
          result = "Texture21";
          break;
        case 34006:
          result = "Texture22";
          break;
        case 34007:
          result = "Texture23";
          break;
        case 34008:
          result = "Texture24";
          break;
        case 34009:
          result = "Texture25";
          break;
        case 34010:
          result = "Texture26";
          break;
        case 34011:
          result = "Texture27";
          break;
        case 34012:
          result = "Texture28";
          break;
        case 34013:
          result = "Texture29";
          break;
        case 34014:
          result = "Texture30";
          break;
        case 34015:
          result = "Texture31";
          break;
        case 34016:
          result = "Active Texture";
          break;
        case 34017:
          result = "Client Active Texture";
          break;
        case 34018:
          result = "Max Texture Units";
          break;
        case 34019:
          result = "Transpose Modelview Matrix";
          break;
        case 34020:
          result = "Transpose Projection Matrix";
          break;
        case 34021:
          result = "Transpose Texture Matrix";
          break;
        case 34022:
          result = "Transpose Color Matrix";
          break;
        case 34023:
          result = "Subtract";
          break;
        case 34024:
          result = "Max Renderbuffer Size";
          break;
        case 34025:
          result = "Compressed Alpha";
          break;
        case 34026:
          result = "Compressed Luminance";
          break;
        case 34027:
          result = "Compressed Luminance Alpha";
          break;
        case 34028:
          result = "Compressed Intensity";
          break;
        case 34029:
          result = "Compressed RGB";
          break;
        case 34030:
          result = "Compressed RGBA";
          break;
        case 34031:
          result = "Compression Hint";
          break;
        case 34032:
          result = "Uniform Block Referenced By Tess Control Shader";
          break;
        case 34033:
          result = "Uniform Block Referenced By Tess Evaluation Shader";
          break;
        case 34037:
          result = "Rectangle";
          break;
        case 34038:
          result = "Binding Rectangle";
          break;
        case 34039:
          result = "Proxy Texture Rectangle";
          break;
        case 34040:
          result = "Max Rectangle Texture Size";
          break;
        case 34041:
          result = "Stencil";
          break;
        case 34042:
          result = "Unsigned Int 24 8";
          break;
        case 34045:
          result = "Max Texture Lod Bias";
          break;
        case 34046:
          result = "Max Anisotropy";
          break;
        case 34047:
          result = "Max Texture Max Anisotropy";
          break;
        case 34048:
          result = "Filter Control";
          break;
        case 34049:
          result = "Lod Bias";
          break;
        case 34052:
          result = "Max Shininess";
          break;
        case 34053:
          result = "Max Spot Exponent";
          break;
        case 34055:
          result = "Incr Wrap";
          break;
        case 34056:
          result = "Decr Wrap";
          break;
        case 34058:
          result = "Modelview1";
          break;
        case 34065:
          result = "Normal Map";
          break;
        case 34066:
          result = "Reflection Map";
          break;
        case 34067:
          result = "Cube Map";
          break;
        case 34068:
          result = "Binding Cube Map";
          break;
        case 34069:
          result = "Cube Map Positive X";
          break;
        case 34070:
          result = "Cube Map Negative X";
          break;
        case 34071:
          result = "Cube Map Positive Y";
          break;
        case 34072:
          result = "Cube Map Negative Y";
          break;
        case 34073:
          result = "Cube Map Positive Z";
          break;
        case 34074:
          result = "Cube Map Negative Z";
          break;
        case 34075:
          result = "Proxy Texture Cube Map";
          break;
        case 34076:
          result = "Max Cube Map Texture Size";
          break;
        case 34077:
          result = "Vertex Array Range";
          break;
        case 34078:
          result = "Vertex Array Range Length";
          break;
        case 34079:
          result = "Vertex Array Storage Hint";
          break;
        case 34080:
          result = "Max Vertex Array Range Element";
          break;
        case 34081:
          result = "Vertex Array Range Pointer";
          break;
        case 34082:
          result = "Register Combiners";
          break;
        case 34083:
          result = "Variable A";
          break;
        case 34084:
          result = "Variable B";
          break;
        case 34085:
          result = "Variable C";
          break;
        case 34086:
          result = "Variable D";
          break;
        case 34087:
          result = "Variable E";
          break;
        case 34088:
          result = "Variable F";
          break;
        case 34089:
          result = "Variable G";
          break;
        case 34090:
          result = "Constant Color0";
          break;
        case 34091:
          result = "Constant Color1";
          break;
        case 34092:
          result = "Primary Color";
          break;
        case 34093:
          result = "Secondary Color";
          break;
        case 34094:
          result = "Spare0";
          break;
        case 34095:
          result = "Spare1";
          break;
        case 34096:
          result = "Discard";
          break;
        case 34097:
          result = "E Times F";
          break;
        case 34098:
          result = "Spare0 Plus Secondary Color";
          break;
        case 34099:
          result = "Vertex Array Range Without Flush";
          break;
        case 34100:
          result = "Multisample Filter Hint";
          break;
        case 34101:
          result = "Per Stage Constants";
          break;
        case 34102:
          result = "Unsigned Identity";
          break;
        case 34103:
          result = "Unsigned Invert";
          break;
        case 34104:
          result = "Expand Normal";
          break;
        case 34105:
          result = "Expand Negate";
          break;
        case 34106:
          result = "Half Bias Normal";
          break;
        case 34107:
          result = "Half Bias Negate";
          break;
        case 34108:
          result = "Signed Identity";
          break;
        case 34109:
          result = "Signed Negate";
          break;
        case 34110:
          result = "Scale By Two";
          break;
        case 34111:
          result = "Scale By Four";
          break;
        case 34112:
          result = "Scale By One Half";
          break;
        case 34113:
          result = "Bias By Negative One Half";
          break;
        case 34114:
          result = "Combiner Input";
          break;
        case 34115:
          result = "Combiner Mapping";
          break;
        case 34116:
          result = "Combiner Component Usage";
          break;
        case 34117:
          result = "Combiner Ab Dot Product";
          break;
        case 34118:
          result = "Combiner Cd Dot Product";
          break;
        case 34119:
          result = "Combiner Mux Sum";
          break;
        case 34120:
          result = "Combiner Scale";
          break;
        case 34121:
          result = "Combiner Bias";
          break;
        case 34122:
          result = "Combiner Ab Output";
          break;
        case 34123:
          result = "Combiner Cd Output";
          break;
        case 34124:
          result = "Combiner Sum Output";
          break;
        case 34125:
          result = "Max General Combiners";
          break;
        case 34126:
          result = "Num General Combiners";
          break;
        case 34127:
          result = "Sum Clamp";
          break;
        case 34128:
          result = "Combiner0";
          break;
        case 34129:
          result = "Combiner1";
          break;
        case 34130:
          result = "Combiner2";
          break;
        case 34131:
          result = "Combiner3";
          break;
        case 34132:
          result = "Combiner4";
          break;
        case 34133:
          result = "Combiner5";
          break;
        case 34134:
          result = "Combiner6";
          break;
        case 34135:
          result = "Combiner7";
          break;
        case 34138:
          result = "Distance Mode";
          break;
        case 34139:
          result = "Eye Radial";
          break;
        case 34140:
          result = "Eye Plane Absolute";
          break;
        case 34160:
          result = "Combine";
          break;
        case 34161:
          result = "Combine RGB";
          break;
        case 34162:
          result = "Combine Alpha";
          break;
        case 34163:
          result = "RGB Scale";
          break;
        case 34164:
          result = "Add Signed";
          break;
        case 34165:
          result = "Interpolate";
          break;
        case 34166:
          result = "Constant";
          break;
        case 34167:
          result = "Primary Color";
          break;
        case 34168:
          result = "Previous";
          break;
        case 34176:
          result = "Src0 RGB";
          break;
        case 34177:
          result = "Src1 RGB";
          break;
        case 34178:
          result = "Src2 RGB";
          break;
        case 34184:
          result = "Src0 Alpha";
          break;
        case 34185:
          result = "Src1 Alpha";
          break;
        case 34186:
          result = "Src2 Alpha";
          break;
        case 34192:
          result = "Operand0 RGB";
          break;
        case 34193:
          result = "Operand1 RGB";
          break;
        case 34194:
          result = "Operand2 RGB";
          break;
        case 34200:
          result = "Operand0 Alpha";
          break;
        case 34201:
          result = "Operand1 Alpha";
          break;
        case 34202:
          result = "Operand2 Alpha";
          break;
        case 34224:
          result = "Specular Vector";
          break;
        case 34225:
          result = "Transform Hint";
          break;
        case 34226:
          result = "Unpack Client Storage";
          break;
        case 34227:
          result = "Object";
          break;
        case 34228:
          result = "Storage Client";
          break;
        case 34229:
          result = "Vertex Array Binding";
          break;
        case 34230:
          result = "Minimize Storage";
          break;
        case 34231:
          result = "Range Length";
          break;
        case 34232:
          result = "Range Pointer";
          break;
        case 34233:
          result = "Ycbcr 422";
          break;
        case 34234:
          result = "Unsigned Short 8 8";
          break;
        case 34235:
          result = "Unsigned Short 8 8 Rev";
          break;
        case 34236:
          result = "Storage Hint";
          break;
        case 34237:
          result = "Storage Private";
          break;
        case 34238:
          result = "Storage Cached";
          break;
        case 34239:
          result = "Storage Shared";
          break;
        case 34336:
          result = "Vertex Program";
          break;
        case 34337:
          result = "Vertex State Program";
          break;
        case 34338:
          result = "Enabled";
          break;
        case 34339:
          result = "Size";
          break;
        case 34340:
          result = "Stride";
          break;
        case 34341:
          result = "Type";
          break;
        case 34342:
          result = "Current Vertex Attrib";
          break;
        case 34343:
          result = "Program Length";
          break;
        case 34344:
          result = "Program String";
          break;
        case 34345:
          result = "Modelview Projection";
          break;
        case 34346:
          result = "Identity";
          break;
        case 34347:
          result = "Inverse";
          break;
        case 34348:
          result = "Transpose";
          break;
        case 34349:
          result = "Inverse Transpose";
          break;
        case 34350:
          result = "Max Program Matrix Stack Depth";
          break;
        case 34351:
          result = "Max Program Matrices";
          break;
        case 34352:
          result = "Matrix0";
          break;
        case 34353:
          result = "Matrix1";
          break;
        case 34354:
          result = "Matrix2";
          break;
        case 34355:
          result = "Matrix3";
          break;
        case 34356:
          result = "Matrix4";
          break;
        case 34357:
          result = "Matrix5";
          break;
        case 34358:
          result = "Matrix6";
          break;
        case 34359:
          result = "Matrix7";
          break;
        case 34368:
          result = "Current Matrix Stack Depth";
          break;
        case 34369:
          result = "Current Matrix";
          break;
        case 34370:
          result = "Program Point Size";
          break;
        case 34371:
          result = "Vertex Program Two Side";
          break;
        case 34372:
          result = "Program Parameter";
          break;
        case 34373:
          result = "Pointer";
          break;
        case 34374:
          result = "Program Target";
          break;
        case 34375:
          result = "Program Resident";
          break;
        case 34376:
          result = "Track Matrix";
          break;
        case 34377:
          result = "Track Matrix Transform";
          break;
        case 34378:
          result = "Vertex Program Binding";
          break;
        case 34379:
          result = "Program Error Position";
          break;
        case 34380:
          result = "Offset Texture Rectangle";
          break;
        case 34381:
          result = "Offset Texture Rectangle Scale";
          break;
        case 34382:
          result = "Dot Product Texture Rectangle";
          break;
        case 34383:
          result = "Clamp";
          break;
        case 34384:
          result = "Vertex Attrib Array0";
          break;
        case 34385:
          result = "Vertex Attrib Array1";
          break;
        case 34386:
          result = "Vertex Attrib Array2";
          break;
        case 34387:
          result = "Vertex Attrib Array3";
          break;
        case 34388:
          result = "Vertex Attrib Array4";
          break;
        case 34389:
          result = "Vertex Attrib Array5";
          break;
        case 34390:
          result = "Vertex Attrib Array6";
          break;
        case 34391:
          result = "Vertex Attrib Array7";
          break;
        case 34392:
          result = "Vertex Attrib Array8";
          break;
        case 34393:
          result = "Vertex Attrib Array9";
          break;
        case 34394:
          result = "Vertex Attrib Array10";
          break;
        case 34395:
          result = "Vertex Attrib Array11";
          break;
        case 34396:
          result = "Vertex Attrib Array12";
          break;
        case 34397:
          result = "Vertex Attrib Array13";
          break;
        case 34398:
          result = "Vertex Attrib Array14";
          break;
        case 34399:
          result = "Vertex Attrib Array15";
          break;
        case 34400:
          result = "Map1 Vertex Attrib0 4";
          break;
        case 34401:
          result = "Map1 Vertex Attrib1 4";
          break;
        case 34402:
          result = "Map1 Vertex Attrib2 4";
          break;
        case 34403:
          result = "Map1 Vertex Attrib3 4";
          break;
        case 34404:
          result = "Map1 Vertex Attrib4 4";
          break;
        case 34405:
          result = "Map1 Vertex Attrib5 4";
          break;
        case 34406:
          result = "Map1 Vertex Attrib6 4";
          break;
        case 34407:
          result = "Map1 Vertex Attrib7 4";
          break;
        case 34408:
          result = "Map1 Vertex Attrib8 4";
          break;
        case 34409:
          result = "Map1 Vertex Attrib9 4";
          break;
        case 34410:
          result = "Map1 Vertex Attrib10 4";
          break;
        case 34411:
          result = "Map1 Vertex Attrib11 4";
          break;
        case 34412:
          result = "Map1 Vertex Attrib12 4";
          break;
        case 34413:
          result = "Map1 Vertex Attrib13 4";
          break;
        case 34414:
          result = "Map1 Vertex Attrib14 4";
          break;
        case 34415:
          result = "Map1 Vertex Attrib15 4";
          break;
        case 34416:
          result = "Map2 Vertex Attrib0 4";
          break;
        case 34417:
          result = "Map2 Vertex Attrib1 4";
          break;
        case 34418:
          result = "Map2 Vertex Attrib2 4";
          break;
        case 34419:
          result = "Map2 Vertex Attrib3 4";
          break;
        case 34420:
          result = "Map2 Vertex Attrib4 4";
          break;
        case 34421:
          result = "Map2 Vertex Attrib5 4";
          break;
        case 34422:
          result = "Map2 Vertex Attrib6 4";
          break;
        case 34423:
          result = "Program Binding";
          break;
        case 34424:
          result = "Map2 Vertex Attrib8 4";
          break;
        case 34425:
          result = "Map2 Vertex Attrib9 4";
          break;
        case 34426:
          result = "Map2 Vertex Attrib10 4";
          break;
        case 34427:
          result = "Map2 Vertex Attrib11 4";
          break;
        case 34428:
          result = "Map2 Vertex Attrib12 4";
          break;
        case 34429:
          result = "Map2 Vertex Attrib13 4";
          break;
        case 34430:
          result = "Map2 Vertex Attrib14 4";
          break;
        case 34431:
          result = "Map2 Vertex Attrib15 4";
          break;
        case 34464:
          result = "Compressed Image Size";
          break;
        case 34465:
          result = "Compressed";
          break;
        case 34466:
          result = "Num Compressed Texture Formats";
          break;
        case 34467:
          result = "Compressed Texture Formats";
          break;
        case 34468:
          result = "Max Vertex Units";
          break;
        case 34469:
          result = "Active Vertex Units";
          break;
        case 34470:
          result = "Weight Sum Unity";
          break;
        case 34471:
          result = "Vertex Blend";
          break;
        case 34472:
          result = "Current Weight";
          break;
        case 34473:
          result = "Weight Array Type";
          break;
        case 34474:
          result = "Weight Array Stride";
          break;
        case 34475:
          result = "Weight Array Size";
          break;
        case 34476:
          result = "Weight Array Pointer";
          break;
        case 34477:
          result = "Weight Array";
          break;
        case 34478:
          result = "Dot3 RGB";
          break;
        case 34479:
          result = "Dot3 RGBA";
          break;
        case 34521:
          result = "RGBA Unsigned Dot Product Mapping";
          break;
        case 34522:
          result = "Unsigned Int S8 S8 8 8";
          break;
        case 34523:
          result = "Unsigned Int 8 8 S8 S8 Rev";
          break;
        case 34524:
          result = "Dsdt Mag Intensity";
          break;
        case 34525:
          result = "Shader Consistent";
          break;
        case 34526:
          result = "Shader";
          break;
        case 34527:
          result = "Shader Operation";
          break;
        case 34528:
          result = "Cull Modes";
          break;
        case 34529:
          result = "Offset Texture Matrix";
          break;
        case 34530:
          result = "Offset Texture Scale";
          break;
        case 34531:
          result = "Offset Texture Bias";
          break;
        case 34532:
          result = "Previous Texture Input";
          break;
        case 34533:
          result = "Const Eye";
          break;
        case 34534:
          result = "Pass Through";
          break;
        case 34535:
          result = "Cull Fragment";
          break;
        case 34536:
          result = "Offset Texture 2D";
          break;
        case 34537:
          result = "Dependent Ar Texture 2D";
          break;
        case 34538:
          result = "Dependent Gb Texture 2D";
          break;
        case 34540:
          result = "Dot Product";
          break;
        case 34541:
          result = "Dot Product Depth Replace";
          break;
        case 34542:
          result = "Dot Product Texture 2D";
          break;
        case 34543:
          result = "Dot Product Texture 3D";
          break;
        case 34544:
          result = "Dot Product Texture Cube Map";
          break;
        case 34545:
          result = "Dot Product Diffuse Cube Map";
          break;
        case 34546:
          result = "Dot Product Reflect Cube Map";
          break;
        case 34547:
          result = "Dot Product Const Eye Reflect Cube Map";
          break;
        case 34548:
          result = "Hilo";
          break;
        case 34549:
          result = "Dsdt";
          break;
        case 34550:
          result = "Dsdt Mag";
          break;
        case 34551:
          result = "Dsdt Mag Vib";
          break;
        case 34552:
          result = "Hilo16";
          break;
        case 34553:
          result = "Signed Hilo";
          break;
        case 34554:
          result = "Signed Hilo16";
          break;
        case 34555:
          result = "Signed RGBA";
          break;
        case 34556:
          result = "Signed RGBA8";
          break;
        case 34558:
          result = "Signed RGB";
          break;
        case 34559:
          result = "Signed RGB8";
          break;
        case 34561:
          result = "Signed Luminance";
          break;
        case 34562:
          result = "Signed Luminance8";
          break;
        case 34563:
          result = "Signed Luminance Alpha";
          break;
        case 34564:
          result = "Signed Luminance8 Alpha8";
          break;
        case 34565:
          result = "Signed Alpha";
          break;
        case 34566:
          result = "Signed Alpha8";
          break;
        case 34567:
          result = "Signed Intensity";
          break;
        case 34568:
          result = "Signed Intensity8";
          break;
        case 34569:
          result = "Dsdt8";
          break;
        case 34570:
          result = "Dsdt8 Mag8";
          break;
        case 34571:
          result = "Dsdt8 Mag8 Intensity8";
          break;
        case 34572:
          result = "Signed RGB Unsigned Alpha";
          break;
        case 34573:
          result = "Signed RGB8 Unsigned Alpha8";
          break;
        case 34574:
          result = "Hi Scale";
          break;
        case 34575:
          result = "Lo Scale";
          break;
        case 34576:
          result = "Ds Scale";
          break;
        case 34577:
          result = "Dt Scale";
          break;
        case 34578:
          result = "Magnitude Scale";
          break;
        case 34579:
          result = "Vibrance Scale";
          break;
        case 34580:
          result = "Hi Bias";
          break;
        case 34581:
          result = "Lo Bias";
          break;
        case 34582:
          result = "Ds Bias";
          break;
        case 34583:
          result = "Dt Bias";
          break;
        case 34584:
          result = "Magnitude Bias";
          break;
        case 34585:
          result = "Vibrance Bias";
          break;
        case 34586:
          result = "Border Values";
          break;
        case 34587:
          result = "Hi Size";
          break;
        case 34588:
          result = "Lo Size";
          break;
        case 34589:
          result = "Ds Size";
          break;
        case 34590:
          result = "Dt Size";
          break;
        case 34591:
          result = "Mag Size";
          break;
        case 34594:
          result = "Modelview2";
          break;
        case 34595:
          result = "Modelview3";
          break;
        case 34596:
          result = "Modelview4";
          break;
        case 34597:
          result = "Modelview5";
          break;
        case 34598:
          result = "Modelview6";
          break;
        case 34599:
          result = "Modelview7";
          break;
        case 34600:
          result = "Modelview8";
          break;
        case 34601:
          result = "Modelview9";
          break;
        case 34602:
          result = "Modelview10";
          break;
        case 34603:
          result = "Modelview11";
          break;
        case 34604:
          result = "Modelview12";
          break;
        case 34605:
          result = "Modelview13";
          break;
        case 34606:
          result = "Modelview14";
          break;
        case 34607:
          result = "Modelview15";
          break;
        case 34608:
          result = "Modelview16";
          break;
        case 34609:
          result = "Modelview17";
          break;
        case 34610:
          result = "Modelview18";
          break;
        case 34611:
          result = "Modelview19";
          break;
        case 34612:
          result = "Modelview20";
          break;
        case 34613:
          result = "Modelview21";
          break;
        case 34614:
          result = "Modelview22";
          break;
        case 34615:
          result = "Modelview23";
          break;
        case 34616:
          result = "Modelview24";
          break;
        case 34617:
          result = "Modelview25";
          break;
        case 34618:
          result = "Modelview26";
          break;
        case 34619:
          result = "Modelview27";
          break;
        case 34620:
          result = "Modelview28";
          break;
        case 34621:
          result = "Modelview29";
          break;
        case 34622:
          result = "Modelview30";
          break;
        case 34623:
          result = "Modelview31";
          break;
        case 34625:
          result = "Program Binary Length";
          break;
        case 34626:
          result = "Mirror Clamp";
          break;
        case 34627:
          result = "Mirror Clamp To Edge";
          break;
        case 34628:
          result = "Modulate Add";
          break;
        case 34629:
          result = "Modulate Signed Add";
          break;
        case 34630:
          result = "Modulate Subtract";
          break;
        case 34660:
          result = "Size";
          break;
        case 34661:
          result = "Usage";
          break;
        case 34685:
          result = "Min Weighted";
          break;
        case 34686:
          result = "Max Weighted";
          break;
        case 34814:
          result = "Num Program Binary Formats";
          break;
        case 34815:
          result = "Program Binary Formats";
          break;
        case 34816:
          result = "Back Func";
          break;
        case 34817:
          result = "Back Fail";
          break;
        case 34818:
          result = "Back Pass Depth Fail";
          break;
        case 34819:
          result = "Back Pass Depth Pass";
          break;
        case 34820:
          result = "Fragment Program";
          break;
        case 34821:
          result = "Program Alu Instructions";
          break;
        case 34822:
          result = "Program Tex Instructions";
          break;
        case 34823:
          result = "Program Tex Indirections";
          break;
        case 34824:
          result = "Program Native Alu Instructions";
          break;
        case 34825:
          result = "Program Native Tex Instructions";
          break;
        case 34826:
          result = "Program Native Tex Indirections";
          break;
        case 34827:
          result = "Max Program Alu Instructions";
          break;
        case 34828:
          result = "Max Program Tex Instructions";
          break;
        case 34829:
          result = "Max Program Tex Indirections";
          break;
        case 34830:
          result = "Max Program Native Alu Instructions";
          break;
        case 34831:
          result = "Max Program Native Tex Instructions";
          break;
        case 34832:
          result = "Max Program Native Tex Indirections";
          break;
        case 34836:
          result = "RGBA32f";
          break;
        case 34837:
          result = "RGB32f";
          break;
        case 34838:
          result = "Alpha32f";
          break;
        case 34839:
          result = "Intensity32f";
          break;
        case 34840:
          result = "Luminance32f";
          break;
        case 34841:
          result = "Luminance Alpha32f";
          break;
        case 34842:
          result = "RGBA16f";
          break;
        case 34843:
          result = "RGB16f";
          break;
        case 34844:
          result = "Alpha16f";
          break;
        case 34845:
          result = "Intensity16f";
          break;
        case 34846:
          result = "Luminance16f";
          break;
        case 34847:
          result = "Luminance Alpha16f";
          break;
        case 34848:
          result = "RGBA Float Mode";
          break;
        case 34852:
          result = "Max Draw Buffers";
          break;
        case 34853:
          result = "Draw Buffer0";
          break;
        case 34854:
          result = "Draw Buffer1";
          break;
        case 34855:
          result = "Draw Buffer2";
          break;
        case 34856:
          result = "Draw Buffer3";
          break;
        case 34857:
          result = "Draw Buffer4";
          break;
        case 34858:
          result = "Draw Buffer5";
          break;
        case 34859:
          result = "Draw Buffer6";
          break;
        case 34860:
          result = "Draw Buffer7";
          break;
        case 34861:
          result = "Draw Buffer8";
          break;
        case 34862:
          result = "Draw Buffer9";
          break;
        case 34863:
          result = "Draw Buffer10";
          break;
        case 34864:
          result = "Draw Buffer11";
          break;
        case 34865:
          result = "Draw Buffer12";
          break;
        case 34866:
          result = "Draw Buffer13";
          break;
        case 34867:
          result = "Draw Buffer14";
          break;
        case 34868:
          result = "Draw Buffer15";
          break;
        case 34871:
          result = "Compressed Luminance Alpha 3DC";
          break;
        case 34877:
          result = "Equation Alpha";
          break;
        case 34880:
          result = "Matrix Palette";
          break;
        case 34882:
          result = "Max Palette Matrices";
          break;
        case 34883:
          result = "Current Palette Matrix";
          break;
        case 34884:
          result = "Matrix Index Array";
          break;
        case 34886:
          result = "Matrix Index Array Size";
          break;
        case 34887:
          result = "Matrix Index Array Type";
          break;
        case 34888:
          result = "Matrix Index Array Stride";
          break;
        case 34889:
          result = "Matrix Index Array Pointer";
          break;
        case 34890:
          result = "Size";
          break;
        case 34891:
          result = "Texture Mode";
          break;
        case 34892:
          result = "Compare Mode";
          break;
        case 34893:
          result = "Compare Func";
          break;
        case 34894:
          result = "Compare Ref To Texture";
          break;
        case 34895:
          result = "Cube Map Seamless";
          break;
        case 34896:
          result = "Offset Projective Texture 2D";
          break;
        case 34897:
          result = "Offset Projective Texture 2D Scale";
          break;
        case 34898:
          result = "Offset Projective Texture Rectangle";
          break;
        case 34899:
          result = "Offset Projective Texture Rectangle Scale";
          break;
        case 34900:
          result = "Offset Hilo Texture 2D";
          break;
        case 34901:
          result = "Offset Hilo Texture Rectangle";
          break;
        case 34902:
          result = "Offset Hilo Projective Texture 2D";
          break;
        case 34903:
          result = "Offset Hilo Projective Texture Rectangle";
          break;
        case 34904:
          result = "Dependent Hilo Texture 2D";
          break;
        case 34905:
          result = "Dependent RGB Texture 3D";
          break;
        case 34906:
          result = "Dependent RGB Texture Cube Map";
          break;
        case 34907:
          result = "Dot Product Pass Through";
          break;
        case 34908:
          result = "Dot Product Texture 1D";
          break;
        case 34909:
          result = "Dot Product Affine Depth Replace";
          break;
        case 34910:
          result = "Hilo8";
          break;
        case 34911:
          result = "Signed Hilo8";
          break;
        case 34912:
          result = "Force Blue To One";
          break;
        case 34913:
          result = "Sprite";
          break;
        case 34914:
          result = "Coord Replace";
          break;
        case 34915:
          result = "Sprite R Mode";
          break;
        case 34916:
          result = "Query Counter Bits";
          break;
        case 34917:
          result = "Current Query";
          break;
        case 34918:
          result = "Query Result";
          break;
        case 34919:
          result = "Query Result Available";
          break;
        case 34921:
          result = "Max Vertex Attribs";
          break;
        case 34922:
          result = "Normalized";
          break;
        case 34924:
          result = "Max Tess Control Input Components";
          break;
        case 34925:
          result = "Max Tess Evaluation Input Components";
          break;
        case 34929:
          result = "Max Texture Coords";
          break;
        case 34930:
          result = "Max Texture Image Units";
          break;
        case 34932:
          result = "Program Error String";
          break;
        case 34933:
          result = "Program Format Ascii";
          break;
        case 34934:
          result = "Program Format";
          break;
        case 34943:
          result = "Geometry Shader Invocations";
          break;
        case 34960:
          result = "Bounds Test";
          break;
        case 34961:
          result = "Bounds";
          break;
        case 34962:
          result = "Array Buffer";
          break;
        case 34963:
          result = "Element Array Buffer";
          break;
        case 34964:
          result = "Array Buffer Binding";
          break;
        case 34965:
          result = "Element Array Buffer Binding";
          break;
        case 34966:
          result = "Vertex Array Buffer Binding";
          break;
        case 34967:
          result = "Normal Array Buffer Binding";
          break;
        case 34968:
          result = "Color Array Buffer Binding";
          break;
        case 34969:
          result = "Index Array Buffer Binding";
          break;
        case 34970:
          result = "Coord Array Buffer Binding";
          break;
        case 34971:
          result = "Edge Flag Array Buffer Binding";
          break;
        case 34972:
          result = "Secondary Color Array Buffer Binding";
          break;
        case 34973:
          result = "Coord Array Buffer Binding";
          break;
        case 34974:
          result = "Weight Array Buffer Binding";
          break;
        case 34975:
          result = "Buffer Binding";
          break;
        case 34976:
          result = "Program Instructions";
          break;
        case 34977:
          result = "Max Program Instructions";
          break;
        case 34978:
          result = "Program Native Instructions";
          break;
        case 34979:
          result = "Max Program Native Instructions";
          break;
        case 34980:
          result = "Program Temporaries";
          break;
        case 34981:
          result = "Max Program Temporaries";
          break;
        case 34982:
          result = "Program Native Temporaries";
          break;
        case 34983:
          result = "Max Program Native Temporaries";
          break;
        case 34984:
          result = "Program Parameters";
          break;
        case 34985:
          result = "Max Program Parameters";
          break;
        case 34986:
          result = "Program Native Parameters";
          break;
        case 34987:
          result = "Max Program Native Parameters";
          break;
        case 34988:
          result = "Program Attribs";
          break;
        case 34989:
          result = "Max Program Attribs";
          break;
        case 34990:
          result = "Program Native Attribs";
          break;
        case 34991:
          result = "Max Program Native Attribs";
          break;
        case 34992:
          result = "Program Address Registers";
          break;
        case 34993:
          result = "Max Program Address Registers";
          break;
        case 34994:
          result = "Program Native Address Registers";
          break;
        case 34995:
          result = "Max Program Native Address Registers";
          break;
        case 34996:
          result = "Max Program Local Parameters";
          break;
        case 34997:
          result = "Max Program Env Parameters";
          break;
        case 34998:
          result = "Program Under Native Limits";
          break;
        case 34999:
          result = "Transpose Current Matrix";
          break;
        case 35000:
          result = "Read Only";
          break;
        case 35001:
          result = "Write Only";
          break;
        case 35002:
          result = "Read Write";
          break;
        case 35003:
          result = "Access";
          break;
        case 35004:
          result = "Mapped";
          break;
        case 35005:
          result = "Map Pointer";
          break;
        case 35007:
          result = "Time Elapsed";
          break;
        case 35008:
          result = "Matrix0";
          break;
        case 35009:
          result = "Matrix1";
          break;
        case 35010:
          result = "Matrix2";
          break;
        case 35011:
          result = "Matrix3";
          break;
        case 35012:
          result = "Matrix4";
          break;
        case 35013:
          result = "Matrix5";
          break;
        case 35014:
          result = "Matrix6";
          break;
        case 35015:
          result = "Matrix7";
          break;
        case 35016:
          result = "Matrix8";
          break;
        case 35017:
          result = "Matrix9";
          break;
        case 35018:
          result = "Matrix10";
          break;
        case 35019:
          result = "Matrix11";
          break;
        case 35020:
          result = "Matrix12";
          break;
        case 35021:
          result = "Matrix13";
          break;
        case 35022:
          result = "Matrix14";
          break;
        case 35023:
          result = "Matrix15";
          break;
        case 35024:
          result = "Matrix16";
          break;
        case 35025:
          result = "Matrix17";
          break;
        case 35026:
          result = "Matrix18";
          break;
        case 35027:
          result = "Matrix19";
          break;
        case 35028:
          result = "Matrix20";
          break;
        case 35029:
          result = "Matrix21";
          break;
        case 35030:
          result = "Matrix22";
          break;
        case 35031:
          result = "Matrix23";
          break;
        case 35032:
          result = "Matrix24";
          break;
        case 35033:
          result = "Matrix25";
          break;
        case 35034:
          result = "Matrix26";
          break;
        case 35035:
          result = "Matrix27";
          break;
        case 35036:
          result = "Matrix28";
          break;
        case 35037:
          result = "Matrix29";
          break;
        case 35038:
          result = "Matrix30";
          break;
        case 35039:
          result = "Matrix31";
          break;
        case 35040:
          result = "Stream Draw";
          break;
        case 35041:
          result = "Stream Read";
          break;
        case 35042:
          result = "Stream Copy";
          break;
        case 35044:
          result = "Static Draw";
          break;
        case 35045:
          result = "Static Read";
          break;
        case 35046:
          result = "Static Copy";
          break;
        case 35048:
          result = "Dynamic Draw";
          break;
        case 35049:
          result = "Dynamic Read";
          break;
        case 35050:
          result = "Dynamic Copy";
          break;
        case 35051:
          result = "Pixel Pack Buffer";
          break;
        case 35052:
          result = "Pixel Unpack Buffer";
          break;
        case 35053:
          result = "Pixel Pack Buffer Binding";
          break;
        case 35055:
          result = "Pixel Unpack Buffer Binding";
          break;
        case 35056:
          result = "Depth24 Stencil8";
          break;
        case 35057:
          result = "Size";
          break;
        case 35060:
          result = "Max Program Exec Instructions";
          break;
        case 35061:
          result = "Max Program Call Depth";
          break;
        case 35062:
          result = "Max Program If Depth";
          break;
        case 35063:
          result = "Max Program Loop Depth";
          break;
        case 35064:
          result = "Max Program Loop Count";
          break;
        case 35065:
          result = "Src1 Color";
          break;
        case 35066:
          result = "One Minus Src1 Color";
          break;
        case 35067:
          result = "One Minus Src1 Alpha";
          break;
        case 35068:
          result = "Max Dual Source Draw Buffers";
          break;
        case 35069:
          result = "Integer";
          break;
        case 35070:
          result = "Divisor";
          break;
        case 35071:
          result = "Max Array Texture Layers";
          break;
        case 35076:
          result = "Min Program Texel Offset";
          break;
        case 35077:
          result = "Max Program Texel Offset";
          break;
        case 35088:
          result = "Test Two Side";
          break;
        case 35089:
          result = "Active Stencil Face";
          break;
        case 35090:
          result = "Mirror Clamp To Border";
          break;
        case 35092:
          result = "Samples Passed";
          break;
        case 35094:
          result = "Geometry Vertices Out";
          break;
        case 35095:
          result = "Geometry Input Type";
          break;
        case 35096:
          result = "Geometry Output Type";
          break;
        case 35097:
          result = "Sampler Binding";
          break;
        case 35098:
          result = "Clamp Vertex Color";
          break;
        case 35099:
          result = "Clamp Fragment Color";
          break;
        case 35100:
          result = "Clamp Read Color";
          break;
        case 35101:
          result = "Fixed Only";
          break;
        case 35196:
          result = "Array Rev Comps In 4 Bytes";
          break;
        case 35210:
          result = "Size Array Type";
          break;
        case 35211:
          result = "Size Array Stride";
          break;
        case 35212:
          result = "Size Array Pointer";
          break;
        case 35213:
          result = "Modelview Matrix Float As Int Bits";
          break;
        case 35214:
          result = "Projection Matrix Float As Int Bits";
          break;
        case 35215:
          result = "Matrix Float As Int Bits";
          break;
        case 35328:
          result = "Vertex Attrib Map1";
          break;
        case 35329:
          result = "Vertex Attrib Map2";
          break;
        case 35330:
          result = "Vertex Attrib Map1 Size";
          break;
        case 35331:
          result = "Vertex Attrib Map1 Coeff";
          break;
        case 35332:
          result = "Vertex Attrib Map1 Order";
          break;
        case 35333:
          result = "Vertex Attrib Map1 Domain";
          break;
        case 35334:
          result = "Vertex Attrib Map2 Size";
          break;
        case 35335:
          result = "Vertex Attrib Map2 Coeff";
          break;
        case 35336:
          result = "Vertex Attrib Map2 Order";
          break;
        case 35337:
          result = "Vertex Attrib Map2 Domain";
          break;
        case 35338:
          result = "Draw Pixels";
          break;
        case 35339:
          result = "Fence";
          break;
        case 35340:
          result = "Element Array";
          break;
        case 35341:
          result = "Element Array Type";
          break;
        case 35342:
          result = "Element Array Pointer";
          break;
        case 35343:
          result = "Float";
          break;
        case 35344:
          result = "Min Pbuffer Viewport Dims";
          break;
        case 35345:
          result = "Uniform Buffer";
          break;
        case 35346:
          result = "Serialized Modify";
          break;
        case 35347:
          result = "Flushing Unmap";
          break;
        case 35348:
          result = "Aux Depth Stencil";
          break;
        case 35349:
          result = "Pack Row Bytes";
          break;
        case 35350:
          result = "Unpack Row Bytes";
          break;
        case 35351:
          result = "Pack Image Bytes";
          break;
        case 35352:
          result = "Unpack Image Bytes";
          break;
        case 35353:
          result = "Released";
          break;
        case 35354:
          result = "Volatile";
          break;
        case 35355:
          result = "Retained";
          break;
        case 35356:
          result = "Undefined";
          break;
        case 35357:
          result = "Purgeable";
          break;
        case 35358:
          result = "Private Extensions";
          break;
        case 35359:
          result = "RGB 422";
          break;
        case 35366:
          result = "Vertex Point Size";
          break;
        case 35367:
          result = "Current Point Size";
          break;
        case 35368:
          result = "Uniform Buffer Binding";
          break;
        case 35369:
          result = "Uniform Buffer Start";
          break;
        case 35370:
          result = "Uniform Buffer Size";
          break;
        case 35371:
          result = "Max Vertex Uniform Blocks";
          break;
        case 35372:
          result = "Max Geometry Uniform Blocks";
          break;
        case 35373:
          result = "Max Fragment Uniform Blocks";
          break;
        case 35374:
          result = "Max Combined Uniform Blocks";
          break;
        case 35375:
          result = "Max Uniform Buffer Bindings";
          break;
        case 35376:
          result = "Max Uniform Block Size";
          break;
        case 35377:
          result = "Max Combined Vertex Uniform Components";
          break;
        case 35378:
          result = "Max Combined Geometry Uniform Components";
          break;
        case 35379:
          result = "Max Combined Fragment Uniform Components";
          break;
        case 35380:
          result = "Uniform Buffer Offset Alignment";
          break;
        case 35381:
          result = "Active Uniform Block Max Name Length";
          break;
        case 35382:
          result = "Active Uniform Blocks";
          break;
        case 35383:
          result = "Uniform Type";
          break;
        case 35384:
          result = "Uniform Size";
          break;
        case 35385:
          result = "Uniform Name Length";
          break;
        case 35386:
          result = "Uniform Block Index";
          break;
        case 35387:
          result = "Uniform Offset";
          break;
        case 35388:
          result = "Uniform Array Stride";
          break;
        case 35389:
          result = "Uniform Matrix Stride";
          break;
        case 35390:
          result = "Uniform Is Row Major";
          break;
        case 35391:
          result = "Uniform Block Binding";
          break;
        case 35392:
          result = "Uniform Block Data Size";
          break;
        case 35393:
          result = "Uniform Block Name Length";
          break;
        case 35394:
          result = "Uniform Block Active Uniforms";
          break;
        case 35395:
          result = "Uniform Block Active Uniform Indices";
          break;
        case 35396:
          result = "Uniform Block Referenced By Vertex Shader";
          break;
        case 35397:
          result = "Uniform Block Referenced By Geometry Shader";
          break;
        case 35398:
          result = "Uniform Block Referenced By Fragment Shader";
          break;
        case 35400:
          result = "SRGB Decode";
          break;
        case 35401:
          result = "Decode";
          break;
        case 35402:
          result = "Skip Decode";
          break;
        case 35403:
          result = "Magic Mipmap";
          break;
        case 35407:
          result = "Program Pipeline Object";
          break;
        case 35408:
          result = "RGB Ycbcr 422";
          break;
        case 35409:
          result = "RGB Raw 422";
          break;
        case 35410:
          result = "Fragment Shader Discards Samples";
          break;
        case 35411:
          result = "Sync Object";
          break;
        case 35412:
          result = "PVRTC SRGB2";
          break;
        case 35413:
          result = "PVRTC SRGB4";
          break;
        case 35414:
          result = "PVRTC SRGBA2";
          break;
        case 35415:
          result = "PVRTC SRGBA4";
          break;
        case 35416:
          result = "Cubic";
          break;
        case 35417:
          result = "Cubic Mipmap Nearest";
          break;
        case 35418:
          result = "Cubic Mipmap Linear";
          break;
        case 35419:
          result = "Attachment Texture Target";
          break;
        case 35420:
          result = "ASTC RGBA 4x2";
          break;
        case 35421:
          result = "ASTC RGBA 8x4";
          break;
        case 35422:
          result = "ASTC sRGBA 4x2";
          break;
        case 35423:
          result = "ASTC sRGBA 8x4";
          break;
        case 35424:
          result = "Uniform Referenced By Vertex Shader";
          break;
        case 35425:
          result = "Uniform Referenced By Tess Control Shader";
          break;
        case 35426:
          result = "Uniform Referenced By Tess Eval Shader";
          break;
        case 35427:
          result = "Uniform Referenced By Geometry Shader";
          break;
        case 35428:
          result = "Uniform Referenced By Fragment Shader";
          break;
        case 35429:
          result = "Ycbcr8 420 2plane";
          break;
        case 35430:
          result = "Ycbcr8 422 1plane";
          break;
        case 35431:
          result = "Ycbcr8 422 2plane";
          break;
        case 35432:
          result = "Ycbcr8 444 2plane";
          break;
        case 35433:
          result = "Ycbcr10 444 1plane";
          break;
        case 35434:
          result = "Ycbcr10 422 2plane";
          break;
        case 35435:
          result = "Ycbcr10 420 2plane";
          break;
        case 35436:
          result = "Ycbcr10 444 2plane";
          break;
        case 35437:
          result = "SRGB Ycbcr8 420 2plane";
          break;
        case 35438:
          result = "SRGB Ycbcr8 422 1plane";
          break;
        case 35439:
          result = "SRGB Ycbcr8 422 2plane";
          break;
        case 35440:
          result = "SRGB Ycbcr8 444 2plane";
          break;
        case 35441:
          result = "SRGB Ycbcr10 444 1plane";
          break;
        case 35442:
          result = "SRGB Ycbcr10 422 2plane";
          break;
        case 35443:
          result = "SRGB Ycbcr10 420 2plane";
          break;
        case 35444:
          result = "SRGB Ycbcr10 444 2plane";
          break;
        case 35445:
          result = "Func Override Blend Source Color";
          break;
        case 35446:
          result = "Argbv16 Xr10";
          break;
        case 35447:
          result = "SRGB Argbv16 Xr10";
          break;
        case 35448:
          result = "Sr8";
          break;
        case 35449:
          result = "Tile Order Rot";
          break;
        case 35450:
          result = "Tile Order Rot 0";
          break;
        case 35451:
          result = "Tile Order Rot 90";
          break;
        case 35452:
          result = "Tile Order Rot 180";
          break;
        case 35453:
          result = "Tile Order Rot 270";
          break;
        case 35454:
          result = "Vertex Storage Memory Coherent";
          break;
        case 35455:
          result = "Storage Memory Coherent";
          break;
        case 35632:
          result = "Fragment Shader";
          break;
        case 35633:
          result = "Vertex Shader";
          break;
        case 35648:
          result = "Program Object";
          break;
        case 35656:
          result = "Shader Object";
          break;
        case 35657:
          result = "Max Fragment Uniform Components";
          break;
        case 35658:
          result = "Max Vertex Uniform Components";
          break;
        case 35659:
          result = "Max Varying Components";
          break;
        case 35660:
          result = "Max Vertex Texture Image Units";
          break;
        case 35661:
          result = "Max Combined Texture Image Units";
          break;
        case 35662:
          result = "Object Type";
          break;
        case 35663:
          result = "Shader Type";
          break;
        case 35664:
          result = "Float Vec2";
          break;
        case 35665:
          result = "Float Vec3";
          break;
        case 35666:
          result = "Float Vec4";
          break;
        case 35667:
          result = "Int Vec2";
          break;
        case 35668:
          result = "Int Vec3";
          break;
        case 35669:
          result = "Int Vec4";
          break;
        case 35670:
          result = "Bool";
          break;
        case 35671:
          result = "Bool Vec2";
          break;
        case 35672:
          result = "Bool Vec3";
          break;
        case 35673:
          result = "Bool Vec4";
          break;
        case 35674:
          result = "Float Mat2";
          break;
        case 35675:
          result = "Float Mat3";
          break;
        case 35676:
          result = "Float Mat4";
          break;
        case 35677:
          result = "Sampler 1D";
          break;
        case 35678:
          result = "Sampler 2D";
          break;
        case 35679:
          result = "Sampler 3D";
          break;
        case 35680:
          result = "Sampler Cube";
          break;
        case 35681:
          result = "Sampler 1D Shadow";
          break;
        case 35682:
          result = "Sampler 2D Shadow";
          break;
        case 35683:
          result = "Sampler 2D Rect";
          break;
        case 35684:
          result = "Sampler 2D Rect Shadow";
          break;
        case 35685:
          result = "Float Mat2x3";
          break;
        case 35686:
          result = "Float Mat2x4";
          break;
        case 35687:
          result = "Float Mat3x2";
          break;
        case 35688:
          result = "Float Mat3x4";
          break;
        case 35689:
          result = "Float Mat4x2";
          break;
        case 35690:
          result = "Float Mat4x3";
          break;
        case 35712:
          result = "Delete Status";
          break;
        case 35713:
          result = "Compile Status";
          break;
        case 35714:
          result = "Link Status";
          break;
        case 35715:
          result = "Validate Status";
          break;
        case 35716:
          result = "Info Log Length";
          break;
        case 35717:
          result = "Attached Shaders";
          break;
        case 35718:
          result = "Active Uniforms";
          break;
        case 35719:
          result = "Active Uniform Max Length";
          break;
        case 35720:
          result = "Shader Source Length";
          break;
        case 35721:
          result = "Active Attributes";
          break;
        case 35722:
          result = "Active Attribute Max Length";
          break;
        case 35723:
          result = "Fragment Shader Derivative Hint";
          break;
        case 35724:
          result = "Shading Language Version";
          break;
        case 35725:
          result = "Current Program";
          break;
        case 35728:
          result = "Palette4 RGB8";
          break;
        case 35729:
          result = "Palette4 RGBA8";
          break;
        case 35730:
          result = "Palette4 R5 G6 B5";
          break;
        case 35731:
          result = "Palette4 RGBA4";
          break;
        case 35732:
          result = "Palette4 RGB5 A1";
          break;
        case 35733:
          result = "Palette8 RGB8";
          break;
        case 35734:
          result = "Palette8 RGBA8";
          break;
        case 35735:
          result = "Palette8 R5 G6 B5";
          break;
        case 35736:
          result = "Palette8 RGBA4";
          break;
        case 35737:
          result = "Palette8 RGB5 A1";
          break;
        case 35738:
          result = "Implementation Color Read Type";
          break;
        case 35739:
          result = "Implementation Color Read Format";
          break;
        case 35740:
          result = "Size Array";
          break;
        case 35741:
          result = "Crop Rect";
          break;
        case 35742:
          result = "Matrix Index Array Buffer Binding";
          break;
        case 35743:
          result = "Size Array Buffer Binding";
          break;
        case 35840:
          result = "PVRTC RGB4";
          break;
        case 35841:
          result = "PVRTC RGB2";
          break;
        case 35842:
          result = "PVRTC RGBA4";
          break;
        case 35843:
          result = "PVRTC RGBA2";
          break;
        case 35856:
          result = "Red Type";
          break;
        case 35857:
          result = "Green Type";
          break;
        case 35858:
          result = "Blue Type";
          break;
        case 35859:
          result = "Alpha Type";
          break;
        case 35860:
          result = "Luminance Type";
          break;
        case 35861:
          result = "Intensity Type";
          break;
        case 35862:
          result = "Type";
          break;
        case 35863:
          result = "Unsigned Normalized";
          break;
        case 35864:
          result = "1D Array";
          break;
        case 35865:
          result = "Proxy Texture 1D Array";
          break;
        case 35866:
          result = "2D Array";
          break;
        case 35867:
          result = "Proxy Texture 2D Array";
          break;
        case 35868:
          result = "Binding 1D Array";
          break;
        case 35869:
          result = "Binding 2D Array";
          break;
        case 35881:
          result = "Max Geometry Texture Image Units";
          break;
        case 35882:
          result = "Buffer";
          break;
        case 35883:
          result = "Max Texture Buffer Size";
          break;
        case 35884:
          result = "Binding Buffer";
          break;
        case 35885:
          result = "Data Store Binding";
          break;
        case 35887:
          result = "Any Samples Passed";
          break;
        case 35894:
          result = "Shading";
          break;
        case 35895:
          result = "Min Sample Shading Value";
          break;
        case 35898:
          result = "R11f G11f B10f";
          break;
        case 35899:
          result = "Unsigned Int 10f 11f 11f Rev";
          break;
        case 35900:
          result = "RGBA Signed Components";
          break;
        case 35901:
          result = "RGB9 E5";
          break;
        case 35902:
          result = "Unsigned Int 5 9 9 9 Rev";
          break;
        case 35903:
          result = "Shared Size";
          break;
        case 35904:
          result = "SRGB";
          break;
        case 35905:
          result = "SRGB8";
          break;
        case 35906:
          result = "SRGB Alpha";
          break;
        case 35907:
          result = "SRGB8 Alpha8";
          break;
        case 35908:
          result = "Sluminance Alpha";
          break;
        case 35909:
          result = "Sluminance8 Alpha8";
          break;
        case 35910:
          result = "Sluminance";
          break;
        case 35911:
          result = "Sluminance8";
          break;
        case 35912:
          result = "Compressed SRGB";
          break;
        case 35913:
          result = "Compressed SRGB Alpha";
          break;
        case 35914:
          result = "Compressed Sluminance";
          break;
        case 35915:
          result = "Compressed Sluminance Alpha";
          break;
        case 35916:
          result = "Compressed SRGB S3TC DXT1";
          break;
        case 35917:
          result = "Compressed SRGB Alpha S3TC DXT1";
          break;
        case 35918:
          result = "Compressed SRGB Alpha S3TC DXT3";
          break;
        case 35919:
          result = "Compressed SRGB Alpha S3TC DXT5";
          break;
        case 35958:
          result = "Varying Max Length";
          break;
        case 35967:
          result = "Buffer Mode";
          break;
        case 35968:
          result = "Max Transform Feedback Separate Components";
          break;
        case 35971:
          result = "Varyings";
          break;
        case 35972:
          result = "Buffer Start";
          break;
        case 35973:
          result = "Buffer Size";
          break;
        case 35975:
          result = "Primitives Generated";
          break;
        case 35976:
          result = "Primitives Written";
          break;
        case 35977:
          result = "Rasterizer Discard";
          break;
        case 35978:
          result = "Max Transform Feedback Interleaved Components";
          break;
        case 35979:
          result = "Max Transform Feedback Separate Attribs";
          break;
        case 35980:
          result = "Interleaved Attribs";
          break;
        case 35981:
          result = "Separate Attribs";
          break;
        case 35982:
          result = "Buffer";
          break;
        case 35983:
          result = "Buffer Binding";
          break;
        case 36000:
          result = "Sprite Coord Origin";
          break;
        case 36001:
          result = "Lower Left";
          break;
        case 36002:
          result = "Upper Left";
          break;
        case 36003:
          result = "Back Ref";
          break;
        case 36004:
          result = "Back Value Mask";
          break;
        case 36005:
          result = "Back Writemask";
          break;
        case 36006:
          result = "Binding";
          break;
        case 36007:
          result = "Binding";
          break;
        case 36008:
          result = "Read Framebuffer";
          break;
        case 36009:
          result = "Draw Framebuffer";
          break;
        case 36010:
          result = "Read Framebuffer Binding";
          break;
        case 36011:
          result = "Samples";
          break;
        case 36012:
          result = "Depth Component32f";
          break;
        case 36013:
          result = "Depth32f Stencil8";
          break;
        case 36048:
          result = "Attachment Object Type";
          break;
        case 36049:
          result = "Attachment Object Name";
          break;
        case 36050:
          result = "Attachment Texture Level";
          break;
        case 36051:
          result = "Attachment Texture Cube Map Face";
          break;
        case 36052:
          result = "Attachment Texture Layer";
          break;
        case 36053:
          result = "Complete";
          break;
        case 36054:
          result = "Incomplete Attachment";
          break;
        case 36055:
          result = "Incomplete Missing Attachment";
          break;
        case 36057:
          result = "Incomplete Dimensions";
          break;
        case 36058:
          result = "Incomplete Formats";
          break;
        case 36059:
          result = "Incomplete Draw Buffer";
          break;
        case 36060:
          result = "Incomplete Read Buffer";
          break;
        case 36061:
          result = "Unsupported";
          break;
        case 36063:
          result = "Max Color Attachments";
          break;
        case 36064:
          result = "Color Attachment 0";
          break;
        case 36065:
          result = "Color Attachment 1";
          break;
        case 36066:
          result = "Color Attachment 2";
          break;
        case 36067:
          result = "Color Attachment 3";
          break;
        case 36068:
          result = "Color Attachment 4";
          break;
        case 36069:
          result = "Color Attachment 5";
          break;
        case 36070:
          result = "Color Attachment 6";
          break;
        case 36071:
          result = "Color Attachment 7";
          break;
        case 36072:
          result = "Color Attachment 8";
          break;
        case 36073:
          result = "Color Attachment 9";
          break;
        case 36074:
          result = "Color Attachment 10";
          break;
        case 36075:
          result = "Color Attachment 11";
          break;
        case 36076:
          result = "Color Attachment 12";
          break;
        case 36077:
          result = "Color Attachment 13";
          break;
        case 36078:
          result = "Color Attachment 14";
          break;
        case 36079:
          result = "Color Attachment 15";
          break;
        case 36096:
          result = "Depth Attachment";
          break;
        case 36128:
          result = "Stencil Attachment";
          break;
        case 36160:
          result = "Framebuffer";
          break;
        case 36161:
          result = "Renderbuffer";
          break;
        case 36162:
          result = "Width";
          break;
        case 36163:
          result = "Height";
          break;
        case 36164:
          result = "Internal Format";
          break;
        case 36166:
          result = "Stencil Index1";
          break;
        case 36167:
          result = "Stencil Index4";
          break;
        case 36168:
          result = "Stencil Index8";
          break;
        case 36169:
          result = "Stencil Index16";
          break;
        case 36176:
          result = "Red Size";
          break;
        case 36177:
          result = "Green Size";
          break;
        case 36178:
          result = "Blue Size";
          break;
        case 36179:
          result = "Alpha Size";
          break;
        case 36180:
          result = "Size";
          break;
        case 36181:
          result = "Size";
          break;
        case 36182:
          result = "Incomplete Multisample";
          break;
        case 36183:
          result = "Max Samples";
          break;
        case 36193:
          result = "Half Float";
          break;
        case 36194:
          result = "RGB565";
          break;
        case 36201:
          result = "Primitive Restart Fixed Index";
          break;
        case 36202:
          result = "Any Samples Passed Conservative";
          break;
        case 36203:
          result = "Max Element Index";
          break;
        case 36208:
          result = "RGBA32ui";
          break;
        case 36209:
          result = "RGB32ui";
          break;
        case 36210:
          result = "Alpha32ui";
          break;
        case 36211:
          result = "Intensity32ui";
          break;
        case 36212:
          result = "Luminance32ui";
          break;
        case 36213:
          result = "Luminance Alpha32ui";
          break;
        case 36214:
          result = "RGBA16ui";
          break;
        case 36215:
          result = "RGB16ui";
          break;
        case 36216:
          result = "Alpha16ui";
          break;
        case 36217:
          result = "Intensity16ui";
          break;
        case 36218:
          result = "Luminance16ui";
          break;
        case 36219:
          result = "Luminance Alpha16ui";
          break;
        case 36220:
          result = "RGBA8ui";
          break;
        case 36221:
          result = "RGB8ui";
          break;
        case 36222:
          result = "Alpha8ui";
          break;
        case 36223:
          result = "Intensity8ui";
          break;
        case 36224:
          result = "Luminance8ui";
          break;
        case 36225:
          result = "Luminance Alpha8ui";
          break;
        case 36226:
          result = "RGBA32i";
          break;
        case 36227:
          result = "RGB32i";
          break;
        case 36228:
          result = "Alpha32i";
          break;
        case 36229:
          result = "Intensity32i";
          break;
        case 36230:
          result = "Luminance32i";
          break;
        case 36231:
          result = "Luminance Alpha32i";
          break;
        case 36232:
          result = "RGBA16i";
          break;
        case 36233:
          result = "RGB16i";
          break;
        case 36234:
          result = "Alpha16i";
          break;
        case 36235:
          result = "Intensity16i";
          break;
        case 36236:
          result = "Luminance16i";
          break;
        case 36237:
          result = "Luminance Alpha16i";
          break;
        case 36238:
          result = "RGBA8i";
          break;
        case 36239:
          result = "RGB8i";
          break;
        case 36240:
          result = "Alpha8i";
          break;
        case 36241:
          result = "Intensity8i";
          break;
        case 36242:
          result = "Luminance8i";
          break;
        case 36243:
          result = "Luminance Alpha8i";
          break;
        case 36244:
          result = "Red Integer";
          break;
        case 36245:
          result = "Green Integer";
          break;
        case 36246:
          result = "Blue Integer";
          break;
        case 36247:
          result = "Alpha Integer";
          break;
        case 36248:
          result = "RGB Integer";
          break;
        case 36249:
          result = "RGBA Integer";
          break;
        case 36250:
          result = "BGR Integer";
          break;
        case 36251:
          result = "BGRA Integer";
          break;
        case 36252:
          result = "Luminance Integer";
          break;
        case 36253:
          result = "Luminance Alpha Integer";
          break;
        case 36254:
          result = "RGBA Integer Mode";
          break;
        case 36255:
          result = "Int 2 10 10 10 Rev";
          break;
        case 36263:
          result = "Attachment Layered";
          break;
        case 36264:
          result = "Incomplete Layer Targets";
          break;
        case 36265:
          result = "Incomplete Layer Count";
          break;
        case 36269:
          result = "Float 32 Unsigned Int 24 8 Rev";
          break;
        case 36270:
          result = "Shader Include";
          break;
        case 36281:
          result = "SRGB";
          break;
        case 36282:
          result = "SRGB Capable";
          break;
        case 36283:
          result = "Compressed Red RGTC1";
          break;
        case 36284:
          result = "Compressed Signed Red RGTC1";
          break;
        case 36285:
          result = "Compressed RG RGTC2";
          break;
        case 36286:
          result = "Compressed Signed RG RGTC2";
          break;
        case 36288:
          result = "Sampler 1D Array";
          break;
        case 36289:
          result = "Sampler 2D Array";
          break;
        case 36290:
          result = "Sampler Buffer";
          break;
        case 36291:
          result = "Sampler 1D Array Shadow";
          break;
        case 36292:
          result = "Sampler 2D Array Shadow";
          break;
        case 36293:
          result = "Sampler Cube Shadow";
          break;
        case 36294:
          result = "Unsigned Int Vec2";
          break;
        case 36295:
          result = "Unsigned Int Vec3";
          break;
        case 36296:
          result = "Unsigned Int Vec4";
          break;
        case 36297:
          result = "Int Sampler 1D";
          break;
        case 36298:
          result = "Int Sampler 2D";
          break;
        case 36299:
          result = "Int Sampler 3D";
          break;
        case 36300:
          result = "Int Sampler Cube";
          break;
        case 36301:
          result = "Int Sampler 2D Rect";
          break;
        case 36302:
          result = "Int Sampler 1D Array";
          break;
        case 36303:
          result = "Int Sampler 2D Array";
          break;
        case 36304:
          result = "Int Sampler Buffer";
          break;
        case 36305:
          result = "Unsigned Int Sampler 1D";
          break;
        case 36306:
          result = "Unsigned Int Sampler 2D";
          break;
        case 36307:
          result = "Unsigned Int Sampler 3D";
          break;
        case 36308:
          result = "Unsigned Int Sampler Cube";
          break;
        case 36309:
          result = "Unsigned Int Sampler 2D Rect";
          break;
        case 36310:
          result = "Unsigned Int Sampler 1D Array";
          break;
        case 36311:
          result = "Unsigned Int Sampler 2D Array";
          break;
        case 36312:
          result = "Unsigned Int Sampler Buffer";
          break;
        case 36313:
          result = "Geometry Shader";
          break;
        case 36314:
          result = "Geometry Vertices Out";
          break;
        case 36315:
          result = "Geometry Input Type";
          break;
        case 36316:
          result = "Geometry Output Type";
          break;
        case 36317:
          result = "Max Geometry Varying Components";
          break;
        case 36318:
          result = "Max Vertex Varying Components";
          break;
        case 36319:
          result = "Max Geometry Uniform Components";
          break;
        case 36320:
          result = "Max Geometry Output Vertices";
          break;
        case 36321:
          result = "Max Geometry Total Output Components";
          break;
        case 36322:
          result = "Max Vertex Bindable Uniforms";
          break;
        case 36323:
          result = "Max Fragment Bindable Uniforms";
          break;
        case 36324:
          result = "Max Geometry Bindable Uniforms";
          break;
        case 36325:
          result = "Active Subroutines";
          break;
        case 36326:
          result = "Active Subroutine Uniforms";
          break;
        case 36327:
          result = "Max Subroutines";
          break;
        case 36328:
          result = "Max Subroutine Uniform Locations";
          break;
        case 36329:
          result = "Named String Length";
          break;
        case 36330:
          result = "Named String Type";
          break;
        case 36333:
          result = "Max Bindable Uniform Size";
          break;
        case 36334:
          result = "Uniform Buffer";
          break;
        case 36335:
          result = "Uniform Buffer Binding";
          break;
        case 36336:
          result = "Low Float";
          break;
        case 36337:
          result = "Medium Float";
          break;
        case 36338:
          result = "High Float";
          break;
        case 36339:
          result = "Low Int";
          break;
        case 36340:
          result = "Medium Int";
          break;
        case 36341:
          result = "High Int";
          break;
        case 36344:
          result = "Shader Binary Formats";
          break;
        case 36345:
          result = "Num Shader Binary Formats";
          break;
        case 36346:
          result = "Shader Compiler";
          break;
        case 36347:
          result = "Max Vertex Uniform Vectors";
          break;
        case 36348:
          result = "Max Varying Vectors";
          break;
        case 36349:
          result = "Max Fragment Uniform Vectors";
          break;
        case 36371:
          result = "Query Wait";
          break;
        case 36372:
          result = "Query No Wait";
          break;
        case 36373:
          result = "Query By Region Wait";
          break;
        case 36374:
          result = "Query By Region No Wait";
          break;
        case 36382:
          result = "Max Combined Tess Control Uniform Components";
          break;
        case 36383:
          result = "Max Combined Tess Evaluation Uniform Components";
          break;
        case 36386:
          result = "Transform Feedback";
          break;
        case 36387:
          result = "Paused";
          break;
        case 36388:
          result = "Active";
          break;
        case 36389:
          result = "Binding";
          break;
        case 36392:
          result = "Timestamp";
          break;
        case 36418:
          result = "Swizzle R";
          break;
        case 36419:
          result = "Swizzle G";
          break;
        case 36420:
          result = "Swizzle B";
          break;
        case 36421:
          result = "Swizzle A";
          break;
        case 36422:
          result = "Swizzle RGBA";
          break;
        case 36423:
          result = "Active Subroutine Uniform Locations";
          break;
        case 36424:
          result = "Active Subroutine Max Length";
          break;
        case 36425:
          result = "Active Subroutine Uniform Max Length";
          break;
        case 36426:
          result = "Num Compatible Subroutines";
          break;
        case 36427:
          result = "Compatible Subroutines";
          break;
        case 36428:
          result = "Quads Follow Provoking Vertex Convention";
          break;
        case 36429:
          result = "First Vertex Convention";
          break;
        case 36430:
          result = "Last Vertex Convention";
          break;
        case 36431:
          result = "Provoking Vertex";
          break;
        case 36432:
          result = "Position";
          break;
        case 36433:
          result = "Mask";
          break;
        case 36434:
          result = "Mask Value";
          break;
        case 36441:
          result = "Max Sample Mask Words";
          break;
        case 36442:
          result = "Max Geometry Shader Invocations";
          break;
        case 36443:
          result = "Min Fragment Interpolation Offset";
          break;
        case 36444:
          result = "Max Fragment Interpolation Offset";
          break;
        case 36445:
          result = "Fragment Interpolation Offset Bits";
          break;
        case 36446:
          result = "Min Program Texture Gather Offset";
          break;
        case 36447:
          result = "Max Program Texture Gather Offset";
          break;
        case 36464:
          result = "Max Transform Feedback Buffers";
          break;
        case 36465:
          result = "Max Vertex Streams";
          break;
        case 36466:
          result = "Patch Vertices";
          break;
        case 36467:
          result = "Patch Default Inner Level";
          break;
        case 36468:
          result = "Patch Default Outer Level";
          break;
        case 36469:
          result = "Tess Control Output Vertices";
          break;
        case 36470:
          result = "Tess Gen Mode";
          break;
        case 36471:
          result = "Tess Gen Spacing";
          break;
        case 36472:
          result = "Tess Gen Vertex Order";
          break;
        case 36473:
          result = "Tess Gen Point Mode";
          break;
        case 36474:
          result = "Isolines";
          break;
        case 36475:
          result = "Fractional Odd";
          break;
        case 36476:
          result = "Fractional Even";
          break;
        case 36477:
          result = "Max Patch Vertices";
          break;
        case 36478:
          result = "Max Tess Gen Level";
          break;
        case 36479:
          result = "Max Tess Control Uniform Components";
          break;
        case 36480:
          result = "Max Tess Evaluation Uniform Components";
          break;
        case 36481:
          result = "Max Tess Control Texture Image Units";
          break;
        case 36482:
          result = "Max Tess Evaluation Texture Image Units";
          break;
        case 36483:
          result = "Max Tess Control Output Components";
          break;
        case 36484:
          result = "Max Tess Patch Components";
          break;
        case 36485:
          result = "Max Tess Control Total Output Components";
          break;
        case 36486:
          result = "Max Tess Evaluation Output Components";
          break;
        case 36487:
          result = "Tess Evaluation Shader";
          break;
        case 36488:
          result = "Tess Control Shader";
          break;
        case 36489:
          result = "Max Tess Control Uniform Blocks";
          break;
        case 36490:
          result = "Max Tess Evaluation Uniform Blocks";
          break;
        case 36662:
          result = "Copy Read Buffer";
          break;
        case 36663:
          result = "Copy Write Buffer";
          break;
        case 36671:
          result = "Draw Indirect Buffer";
          break;
        case 36675:
          result = "Draw Indirect Buffer Binding";
          break;
        case 36678:
          result = "Double Mat2";
          break;
        case 36679:
          result = "Double Mat3";
          break;
        case 36680:
          result = "Double Mat4";
          break;
        case 36681:
          result = "Double Mat2x3";
          break;
        case 36682:
          result = "Double Mat2x4";
          break;
        case 36683:
          result = "Double Mat3x2";
          break;
        case 36684:
          result = "Double Mat3x4";
          break;
        case 36685:
          result = "Double Mat4x2";
          break;
        case 36686:
          result = "Double Mat4x3";
          break;
        case 36756:
          result = "R8 Snorm";
          break;
        case 36757:
          result = "RG8 Snorm";
          break;
        case 36758:
          result = "RGB8 Snorm";
          break;
        case 36759:
          result = "RGBA8 Snorm";
          break;
        case 36760:
          result = "R16 Snorm";
          break;
        case 36761:
          result = "RG16 Snorm";
          break;
        case 36762:
          result = "RGB16 Snorm";
          break;
        case 36763:
          result = "RGBA16 Snorm";
          break;
        case 36764:
          result = "Signed Normalized";
          break;
        case 36765:
          result = "Primitive Restart";
          break;
        case 36766:
          result = "Primitive Restart Index";
          break;
        case 36767:
          result = "Max Program Texture Gather Components";
          break;
        case 36860:
          result = "Double Vec2";
          break;
        case 36861:
          result = "Double Vec3";
          break;
        case 36862:
          result = "Double Vec4";
          break;
        case 36873:
          result = "Cube Map Array";
          break;
        case 36874:
          result = "Binding Cube Map Array";
          break;
        case 36875:
          result = "Proxy Texture Cube Map Array";
          break;
        case 36876:
          result = "Sampler Cube Map Array";
          break;
        case 36877:
          result = "Sampler Cube Map Array Shadow";
          break;
        case 36878:
          result = "Int Sampler Cube Map Array";
          break;
        case 36879:
          result = "Unsigned Int Sampler Cube Map Array";
          break;
        case 36975:
          result = "RGB10 A2ui";
          break;
        case 37050:
          result = "Scaled Resolve Fastest";
          break;
        case 37051:
          result = "Scaled Resolve Nicest";
          break;
        case 37120:
          result = "2D Multisample";
          break;
        case 37121:
          result = "Proxy Texture 2D Multisample";
          break;
        case 37122:
          result = "2D Multisample Array";
          break;
        case 37123:
          result = "Proxy Texture 2D Multisample Array";
          break;
        case 37124:
          result = "Binding 2D Multisample";
          break;
        case 37125:
          result = "Binding 2D Multisample Array";
          break;
        case 37126:
          result = "Samples";
          break;
        case 37127:
          result = "Fixed Sample Locations";
          break;
        case 37128:
          result = "Sampler 2D Multisample";
          break;
        case 37129:
          result = "Int Sampler 2D Multisample";
          break;
        case 37130:
          result = "Unsigned Int Sampler 2D Multisample";
          break;
        case 37131:
          result = "Sampler 2D Multisample Array";
          break;
        case 37132:
          result = "Int Sampler 2D Multisample Array";
          break;
        case 37133:
          result = "Unsigned Int Sampler 2D Multisample Array";
          break;
        case 37134:
          result = "Max Color Texture Samples";
          break;
        case 37135:
          result = "Max Depth Texture Samples";
          break;
        case 37136:
          result = "Max Integer Samples";
          break;
        case 37137:
          result = "Max Server Wait Timeout";
          break;
        case 37138:
          result = "Object Type";
          break;
        case 37139:
          result = "Sync Condition";
          break;
        case 37140:
          result = "Sync Status";
          break;
        case 37141:
          result = "Sync Flags";
          break;
        case 37142:
          result = "Sync Fence";
          break;
        case 37143:
          result = "Sync Gpu Commands Complete";
          break;
        case 37144:
          result = "Unsignaled";
          break;
        case 37145:
          result = "Signaled";
          break;
        case 37146:
          result = "Already Signaled";
          break;
        case 37147:
          result = "Timeout Expired";
          break;
        case 37148:
          result = "Condition Satisfied";
          break;
        case 37149:
          result = "Wait Failed";
          break;
        case 37151:
          result = "Access Flags";
          break;
        case 37152:
          result = "Map Length";
          break;
        case 37153:
          result = "Map Offset";
          break;
        case 37154:
          result = "Max Vertex Output Components";
          break;
        case 37155:
          result = "Max Geometry Input Components";
          break;
        case 37156:
          result = "Max Geometry Output Components";
          break;
        case 37157:
          result = "Max Fragment Input Components";
          break;
        case 37158:
          result = "Context Profile Mask";
          break;
        case 37167:
          result = "Immutable Format";
          break;
        case 37201:
          result = "Object";
          break;
        case 37203:
          result = "Query Object";
          break;
        case 37204:
          result = "Vertex Array Object";
          break;
        case 37488:
          result = "EAC R11ui";
          break;
        case 37489:
          result = "EAC R11i";
          break;
        case 37490:
          result = "EAC RG11ui";
          break;
        case 37491:
          result = "EAC RG11i";
          break;
        case 37492:
          result = "ETC2 RGB";
          break;
        case 37493:
          result = "ETC2 SRGB";
          break;
        case 37494:
          result = "ETC2 RGB A1";
          break;
        case 37495:
          result = "ETC2 SRGB A1";
          break;
        case 37496:
          result = "ETC2 RGBA";
          break;
        case 37497:
          result = "ETC2 SRGBA";
          break;
        case 37760:
          result = "Num Sample Counts";
          break;
        case 37793:
          result = "BGRA8";
          break;
        case 37808:
          result = "ASTC RGBA 4x4";
          break;
        case 37809:
          result = "ASTC RGBA 5x4";
          break;
        case 37810:
          result = "ASTC RGBA 5x5";
          break;
        case 37811:
          result = "ASTC RGBA 6x5";
          break;
        case 37812:
          result = "ASTC RGBA 6x6";
          break;
        case 37813:
          result = "ASTC RGBA 8x5";
          break;
        case 37814:
          result = "ASTC RGBA 8x6";
          break;
        case 37815:
          result = "ASTC RGBA 8x8";
          break;
        case 37816:
          result = "ASTC RGBA 10x5";
          break;
        case 37817:
          result = "ASTC RGBA 10x6";
          break;
        case 37818:
          result = "ASTC RGBA 10x8";
          break;
        case 37819:
          result = "ASTC RGBA 10x10";
          break;
        case 37820:
          result = "ASTC RGBA 12x10";
          break;
        case 37821:
          result = "ASTC RGBA 12x12";
          break;
        case 37840:
          result = "ASTC sRGBA 4x4";
          break;
        case 37841:
          result = "ASTC sRGBA 5x4";
          break;
        case 37842:
          result = "ASTC sRGBA 5x5";
          break;
        case 37843:
          result = "ASTC sRGBA 6x5";
          break;
        case 37844:
          result = "ASTC sRGBA 6x6";
          break;
        case 37845:
          result = "ASTC sRGBA 8x5";
          break;
        case 37846:
          result = "ASTC sRGBA 8x6";
          break;
        case 37847:
          result = "ASTC sRGBA 8x8";
          break;
        case 37848:
          result = "ASTC sRGBA 10x5";
          break;
        case 37849:
          result = "ASTC sRGBA 10x6";
          break;
        case 37850:
          result = "ASTC sRGBA 10x8";
          break;
        case 37851:
          result = "ASTC sRGBA 10x10";
          break;
        case 37852:
          result = "ASTC sRGBA 12x10";
          break;
        case 37853:
          result = "ASTC sRGBA 12x12";
          break;
        case 37874:
          result = "Xrsrgb10";
          break;
        case 37875:
          result = "Ycbcr10 422 2plane Packed";
          break;
        case 37876:
          result = "Ycbcr10 420 2plane Packed";
          break;
        case 37877:
          result = "Ycbcr10 444 2plane Packed";
          break;
        case 37878:
          result = "SRGB Ycbcr10 422 2plane Packed";
          break;
        case 37879:
          result = "SRGB Ycbcr10 420 2plane Packed";
          break;
        case 37880:
          result = "SRGB Ycbcr10 444 2plane Packed";
          break;
        case 37881:
          result = "Xrsrgb10 Plane A8 Plane";
          break;
        case 37882:
          result = "Unsigned Int 2 10 10 10 Plane Unsigned Byte Plane";
          break;
        case 37883:
          result = "RGB8 420 2plane";
          break;
        case 37884:
          result = "RGB8 422 2plane";
          break;
        case 37885:
          result = "RGB8 444 2plane";
          break;
        case 37886:
          result = "ASTC RGBA 4x2 LowPrecision";
          break;
        case 37887:
          result = "ASTC RGBA 4x4 LowPrecision";
          break;
        case 37888:
          result = "ASTC RGBA 5x4 LowPrecision";
          break;
        case 37889:
          result = "ASTC RGBA 5x5 LowPrecision";
          break;
        case 37890:
          result = "ASTC RGBA 6x5 LowPrecision";
          break;
        case 37891:
          result = "ASTC RGBA 6x6 LowPrecision";
          break;
        case 37892:
          result = "ASTC RGBA 8x4 LowPrecision";
          break;
        case 37893:
          result = "ASTC RGBA 8x5 LowPrecision";
          break;
        case 37894:
          result = "ASTC RGBA 8x6 LowPrecision";
          break;
        case 37895:
          result = "ASTC RGBA 8x8 LowPrecision";
          break;
        case 37896:
          result = "ASTC RGBA 10x5 LowPrecision";
          break;
        case 37897:
          result = "ASTC RGBA 10x6 LowPrecision";
          break;
        case 37898:
          result = "ASTC RGBA 10x8 LowPrecision";
          break;
        case 37899:
          result = "ASTC RGBA 10x10 LowPrecision";
          break;
        case 37900:
          result = "ASTC RGBA 12x10 LowPrecision";
          break;
        case 37901:
          result = "ASTC RGBA 12x12 LowPrecision";
          break;
        default:
          return 0;
      }

      return result;
    }

    if (a1 < 0x80000)
    {
      if (a1 == 0x10000)
      {
        return "Eval Bit";
      }

      if (a1 == 0x20000)
      {
        return "List Bit";
      }

      if (a1 != 0x40000)
      {
        return 0;
      }

      return "Bit";
    }

    switch(a1)
    {
      case 0x80000:
        return "Bit";
      case 0xFFFFF:
        return "All Attrib Bits";
      case 0x20000000:
        return "Multisample Bit";
    }

    return 0;
  }

  if (a1 > 4095)
  {
    if (a1 > 7168)
    {
      if (a1 <= 10494)
      {
        if (a1 <= 8703)
        {
          if (a1 > 7936)
          {
            if (a1 <= 0x2000)
            {
              if (a1 <= 7938)
              {
                if (a1 == 7937)
                {
                  return "Renderer";
                }

                else
                {
                  return "Version";
                }
              }

              if (a1 == 7939)
              {
                return "Extensions";
              }

              if (a1 == 0x2000)
              {
                return "S";
              }
            }

            else
            {
              if (a1 <= 8194)
              {
                if (a1 == 8193)
                {
                  return "T";
                }

                else
                {
                  return "R";
                }
              }

              switch(a1)
              {
                case 8195:
                  return "Q";
                case 8448:
                  return "Modulate";
                case 8449:
                  return "Decal";
              }
            }
          }

          else if (a1 <= 7679)
          {
            if (a1 > 7423)
            {
              if (a1 == 7424)
              {
                return "Flat";
              }

              if (a1 == 7425)
              {
                return "Smooth";
              }
            }

            else
            {
              if (a1 == 7169)
              {
                return "Feedback";
              }

              if (a1 == 7170)
              {
                return "Select";
              }
            }
          }

          else
          {
            if (a1 <= 7681)
            {
              if (a1 == 7680)
              {
                return "Keep";
              }

              else
              {
                return "Replace";
              }
            }

            switch(a1)
            {
              case 7682:
                return "Incr";
              case 7683:
                return "Decr";
              case 7936:
                return "Vendor";
            }
          }
        }

        else if (a1 <= 9727)
        {
          if (a1 <= 9216)
          {
            if (a1 > 8959)
            {
              if (a1 == 8960)
              {
                return "Env";
              }

              if (a1 == 9216)
              {
                return "Eye Linear";
              }
            }

            else
            {
              if (a1 == 8704)
              {
                return "Env Mode";
              }

              if (a1 == 8705)
              {
                return "Env Color";
              }
            }
          }

          else if (a1 <= 9471)
          {
            if (a1 == 9217)
            {
              return "Object Linear";
            }

            if (a1 == 9218)
            {
              return "Sphere Map";
            }
          }

          else
          {
            switch(a1)
            {
              case 9472:
                return "Gen Mode";
              case 9473:
                return "Object Plane";
              case 9474:
                return "Eye Plane";
            }
          }
        }

        else if (a1 > 9986)
        {
          if (a1 <= 10240)
          {
            if (a1 == 9987)
            {
              return "Linear Mipmap Linear";
            }

            if (a1 == 10240)
            {
              return "Mag Filter";
            }
          }

          else
          {
            switch(a1)
            {
              case 10241:
                return "Min Filter";
              case 10242:
                return "Wrap S";
              case 10243:
                return "Wrap T";
            }
          }
        }

        else
        {
          if (a1 > 9983)
          {
            if (a1 == 9984)
            {
              return "Nearest Mipmap Nearest";
            }

            if (a1 == 9985)
            {
              return "Linear Mipmap Nearest";
            }

            return "Nearest Mipmap Linear";
          }

          if (a1 == 9728)
          {
            return "Nearest";
          }

          if (a1 == 9729)
          {
            return "Linear";
          }
        }

        return 0;
      }

      if (a1 >= 12288)
      {
        if (a1 >= 0x4000)
        {
          if (a1 <= 16387)
          {
            if (a1 > 16385)
            {
              if (a1 == 16386)
              {
                return "Light 2";
              }

              else
              {
                return "Light 3";
              }
            }

            else if (a1 == 0x4000)
            {
              return "Light 0";
            }

            else
            {
              return "Light 1";
            }
          }

          if (a1 <= 16389)
          {
            if (a1 == 16388)
            {
              return "Light 4";
            }

            else
            {
              return "Light 5";
            }
          }

          if (a1 == 16390)
          {
            return "Light 6";
          }

          if (a1 == 16391)
          {
            return "Light 7";
          }
        }

        else
        {
          if (a1 <= 12291)
          {
            if (a1 > 12289)
            {
              if (a1 == 12290)
              {
                return "Clip Distance 2";
              }

              else
              {
                return "Clip Distance 3";
              }
            }

            else if (a1 == 12288)
            {
              return "Clip Distance 0";
            }

            else
            {
              return "Clip Distance 1";
            }
          }

          if (a1 <= 12293)
          {
            if (a1 == 12292)
            {
              return "Clip Distance 4";
            }

            else
            {
              return "Clip Distance 5";
            }
          }

          if (a1 == 12294)
          {
            return "Clip Distance 6";
          }

          if (a1 == 12295)
          {
            return "Clip Distance 7";
          }
        }

        return 0;
      }

      if (a1 <= 10751)
      {
        switch(a1)
        {
          case 10495:
            return "Subimage Sync";
          case 10496:
            return "Clamp";
          case 10497:
            return "Repeat";
        }

        return 0;
      }

      switch(a1)
      {
        case 10752:
          result = "Units";
          break;
        case 10753:
          result = "Point";
          break;
        case 10754:
          return "Line";
        case 10768:
          result = "R3 G3 B2";
          break;
        case 10784:
          result = "V2f";
          break;
        case 10785:
          result = "V3f";
          break;
        case 10786:
          result = "C4ub V2f";
          break;
        case 10787:
          result = "C4ub V3f";
          break;
        case 10788:
          result = "C3f V3f";
          break;
        case 10789:
          result = "N3f V3f";
          break;
        case 10790:
          result = "C4f N3f V3f";
          break;
        case 10791:
          result = "T2f V3f";
          break;
        case 10792:
          result = "T4f V4f";
          break;
        case 10793:
          result = "T2f C4ub V3f";
          break;
        case 10794:
          result = "T2f C3f V3f";
          break;
        case 10795:
          result = "T2f N3f V3f";
          break;
        case 10796:
          result = "T2f C4f N3f V3f";
          break;
        case 10797:
          result = "T4f C4f N3f V4f";
          break;
        default:
          return 0;
      }
    }

    else if (a1 > 5631)
    {
      if (a1 <= 6402)
      {
        if (a1 <= 5889)
        {
          if (a1 <= 5634)
          {
            if (a1 == 5632)
            {
              return "Emission";
            }

            if (a1 == 5633)
            {
              return "Shininess";
            }

            return "Ambient And Diffuse";
          }

          switch(a1)
          {
            case 5635:
              return "Indexes";
            case 5888:
              return "Modelview";
            case 5889:
              return "Projection";
          }
        }

        else if (a1 <= 6145)
        {
          switch(a1)
          {
            case 5890:
              return "Texture";
            case 6144:
              return "Color";
            case 6145:
              return "Depth";
          }
        }

        else
        {
          if (a1 > 6400)
          {
            if (a1 == 6401)
            {
              return "Stencil Index";
            }

            else
            {
              return "Depth Component";
            }
          }

          if (a1 == 6146)
          {
            return "Stencil";
          }

          if (a1 == 6400)
          {
            return "Index";
          }
        }

        return 0;
      }

      if (a1 <= 6408)
      {
        if (a1 > 6405)
        {
          if (a1 == 6406)
          {
            return "Alpha";
          }

          else if (a1 == 6407)
          {
            return "RGB";
          }

          else
          {
            return "RGBA";
          }
        }

        else if (a1 == 6403)
        {
          return "Red";
        }

        else if (a1 == 6404)
        {
          return "Green";
        }

        else
        {
          return "Blue";
        }
      }

      if (a1 <= 6911)
      {
        switch(a1)
        {
          case 6409:
            return "Luminance";
          case 6410:
            return "Luminance Alpha";
          case 6656:
            return "Bitmap";
        }

        return 0;
      }

      if (a1 > 6913)
      {
        if (a1 == 6914)
        {
          return "Fill";
        }

        if (a1 == 7168)
        {
          return "Render";
        }

        return 0;
      }

      if (a1 == 6912)
      {
        return "Point";
      }

      else
      {
        return "Line";
      }
    }

    else
    {
      if (a1 <= 4863)
      {
        if (a1 > 4608)
        {
          if (a1 <= 4612)
          {
            if (a1 > 4610)
            {
              if (a1 == 4611)
              {
                return "Position";
              }

              else
              {
                return "Spot Direction";
              }
            }

            else if (a1 == 4609)
            {
              return "Diffuse";
            }

            else
            {
              return "Specular";
            }
          }

          if (a1 <= 4614)
          {
            if (a1 == 4613)
            {
              return "Spot Exponent";
            }

            else
            {
              return "Spot Cutoff";
            }
          }

          switch(a1)
          {
            case 4615:
              return "Constant Attenuation";
            case 4616:
              return "Linear Attenuation";
            case 4617:
              return "Quadratic Attenuation";
          }
        }

        else if (a1 <= 4100)
        {
          if (a1 > 4098)
          {
            if (a1 == 4099)
            {
              return "Internal Format";
            }

            else
            {
              return "Border Color";
            }
          }

          if (a1 == 4096)
          {
            return "Width";
          }

          if (a1 == 4097)
          {
            return "Height";
          }
        }

        else if (a1 <= 4352)
        {
          if (a1 == 4101)
          {
            return "Border";
          }

          if (a1 == 4352)
          {
            return "Dont Care";
          }
        }

        else
        {
          switch(a1)
          {
            case 4353:
              return "Fastest";
            case 4354:
              return "Nicest";
            case 4608:
              return "Ambient";
          }
        }

        return 0;
      }

      switch(a1)
      {
        case 5120:
          return "Byte";
        case 5121:
          return "Unsigned Byte";
        case 5122:
          return "Short";
        case 5123:
          return "Unsigned Short";
        case 5124:
          return "Int";
        case 5125:
          return "Unsigned Int";
        case 5126:
          return "Float";
        case 5127:
          return "2 Bytes";
        case 5128:
          return "3 Bytes";
        case 5129:
          return "4 Bytes";
        case 5130:
          return "Double";
        case 5131:
          return "Half Float";
        case 5132:
          return "Fixed";
        case 5133:
        case 5134:
        case 5135:
        case 5136:
        case 5137:
        case 5138:
        case 5139:
        case 5140:
        case 5141:
        case 5142:
        case 5143:
        case 5144:
        case 5145:
        case 5146:
        case 5147:
        case 5148:
        case 5149:
        case 5150:
        case 5151:
        case 5152:
        case 5153:
        case 5154:
        case 5155:
        case 5156:
        case 5157:
        case 5158:
        case 5159:
        case 5160:
        case 5161:
        case 5162:
        case 5163:
        case 5164:
        case 5165:
        case 5166:
        case 5167:
        case 5168:
        case 5169:
        case 5170:
        case 5171:
        case 5172:
        case 5173:
        case 5174:
        case 5175:
        case 5176:
        case 5177:
        case 5178:
        case 5179:
        case 5180:
        case 5181:
        case 5182:
        case 5183:
        case 5184:
        case 5185:
        case 5186:
        case 5187:
        case 5188:
        case 5189:
        case 5190:
        case 5191:
        case 5192:
        case 5193:
        case 5194:
        case 5195:
        case 5196:
        case 5197:
        case 5198:
        case 5199:
        case 5200:
        case 5201:
        case 5202:
        case 5203:
        case 5204:
        case 5205:
        case 5206:
        case 5207:
        case 5208:
        case 5209:
        case 5210:
        case 5211:
        case 5212:
        case 5213:
        case 5214:
        case 5215:
        case 5216:
        case 5217:
        case 5218:
        case 5219:
        case 5220:
        case 5221:
        case 5222:
        case 5223:
        case 5224:
        case 5225:
        case 5226:
        case 5227:
        case 5228:
        case 5229:
        case 5230:
        case 5231:
        case 5232:
        case 5233:
        case 5234:
        case 5235:
        case 5236:
        case 5237:
        case 5238:
        case 5239:
        case 5240:
        case 5241:
        case 5242:
        case 5243:
        case 5244:
        case 5245:
        case 5246:
        case 5247:
        case 5248:
        case 5249:
        case 5250:
        case 5251:
        case 5252:
        case 5253:
        case 5254:
        case 5255:
        case 5256:
        case 5257:
        case 5258:
        case 5259:
        case 5260:
        case 5261:
        case 5262:
        case 5263:
        case 5264:
        case 5265:
        case 5266:
        case 5267:
        case 5268:
        case 5269:
        case 5270:
        case 5271:
        case 5272:
        case 5273:
        case 5274:
        case 5275:
        case 5276:
        case 5277:
        case 5278:
        case 5279:
        case 5280:
        case 5281:
        case 5282:
        case 5283:
        case 5284:
        case 5285:
        case 5286:
        case 5287:
        case 5288:
        case 5289:
        case 5290:
        case 5291:
        case 5292:
        case 5293:
        case 5294:
        case 5295:
        case 5296:
        case 5297:
        case 5298:
        case 5299:
        case 5300:
        case 5301:
        case 5302:
        case 5303:
        case 5304:
        case 5305:
        case 5306:
        case 5307:
        case 5308:
        case 5309:
        case 5310:
        case 5311:
        case 5312:
        case 5313:
        case 5314:
        case 5315:
        case 5316:
        case 5317:
        case 5318:
        case 5319:
        case 5320:
        case 5321:
        case 5322:
        case 5323:
        case 5324:
        case 5325:
        case 5326:
        case 5327:
        case 5328:
        case 5329:
        case 5330:
        case 5331:
        case 5332:
        case 5333:
        case 5334:
        case 5335:
        case 5336:
        case 5337:
        case 5338:
        case 5339:
        case 5340:
        case 5341:
        case 5342:
        case 5343:
        case 5344:
        case 5345:
        case 5346:
        case 5347:
        case 5348:
        case 5349:
        case 5350:
        case 5351:
        case 5352:
        case 5353:
        case 5354:
        case 5355:
        case 5356:
        case 5357:
        case 5358:
        case 5359:
        case 5360:
        case 5361:
        case 5362:
        case 5363:
        case 5364:
        case 5365:
        case 5366:
        case 5367:
        case 5368:
        case 5369:
        case 5370:
        case 5371:
        case 5372:
        case 5373:
        case 5374:
        case 5375:
          return 0;
        case 5376:
          return "Clear";
        case 5377:
          return "And";
        case 5378:
          return "And Reverse";
        case 5379:
          return "Copy";
        case 5380:
          return "And Inverted";
        case 5381:
          return "Noop";
        case 5382:
          return "Xor";
        case 5383:
          return "Or";
        case 5384:
          return "Nor";
        case 5385:
          return "Equiv";
        case 5386:
          return "Invert";
        case 5387:
          return "Or Reverse";
        case 5388:
          return "Copy Inverted";
        case 5389:
          return "Or Inverted";
        case 5390:
          return "Nand";
        case 5391:
          return "Set";
        default:
          if (a1 == 4864)
          {
            result = "Compile";
          }

          else
          {
            if (a1 != 4865)
            {
              return 0;
            }

            result = "Compile And Execute";
          }

          break;
      }
    }
  }

  else if (a1 <= 775)
  {
    if (a1 > 256)
    {
      if (a1 > 517)
      {
        if (a1 > 770)
        {
          if (a1 <= 772)
          {
            if (a1 == 771)
            {
              return "One Minus Src Alpha";
            }

            else
            {
              return "Dst Alpha";
            }
          }

          else if (a1 == 773)
          {
            return "One Minus Dst Alpha";
          }

          else if (a1 == 774)
          {
            return "Dst Color";
          }

          else
          {
            return "One Minus Dst Color";
          }
        }

        if (a1 > 767)
        {
          if (a1 == 768)
          {
            return "Src Color";
          }

          if (a1 == 769)
          {
            return "One Minus Src Color";
          }

          return "Src Alpha";
        }

        if (a1 == 518)
        {
          return "Gequal";
        }

        if (a1 == 519)
        {
          return "Always";
        }
      }

      else
      {
        if (a1 > 512)
        {
          if (a1 <= 514)
          {
            if (a1 == 513)
            {
              return "Less";
            }

            else
            {
              return "Equal";
            }
          }

          else if (a1 == 515)
          {
            return "Lequal";
          }

          else if (a1 == 516)
          {
            return "Greater";
          }

          else
          {
            return "Notequal";
          }
        }

        if (a1 <= 258)
        {
          if (a1 == 257)
          {
            return "Load";
          }

          else
          {
            return "Return";
          }
        }

        switch(a1)
        {
          case 259:
            return "Mult";
          case 260:
            return "Add";
          case 512:
            return "Never";
        }
      }

      return 0;
    }

    v2 = a1 + 1;
    result = "False";
    switch(v2)
    {
      case 0:
        result = "Invalid Index";
        break;
      case 1:
        return result;
      case 2:
        result = "True";
        break;
      case 3:
        result = "Line Loop";
        break;
      case 4:
        result = "Line Strip";
        break;
      case 5:
        result = "Triangles";
        break;
      case 6:
        result = "Triangle Strip";
        break;
      case 7:
        result = "Triangle Fan";
        break;
      case 8:
        result = "Quads";
        break;
      case 9:
        result = "Quad Strip";
        break;
      case 10:
        result = "Polygon";
        break;
      case 11:
        result = "Lines Adjacency";
        break;
      case 12:
        result = "Line Strip Adjacency";
        break;
      case 13:
        result = "Triangles Adjacency";
        break;
      case 14:
        result = "Triangle Strip Adjacency";
        break;
      case 15:
        result = "Patches";
        break;
      case 16:
      case 18:
      case 19:
      case 20:
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
      case 32:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
      case 59:
      case 60:
      case 61:
      case 62:
      case 63:
      case 64:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 80:
      case 81:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 90:
      case 91:
      case 92:
      case 93:
      case 94:
      case 95:
      case 96:
      case 97:
      case 98:
      case 99:
      case 100:
      case 101:
      case 102:
      case 103:
      case 104:
      case 105:
      case 106:
      case 107:
      case 108:
      case 109:
      case 110:
      case 111:
      case 112:
      case 113:
      case 114:
      case 115:
      case 116:
      case 117:
      case 118:
      case 119:
      case 120:
      case 121:
      case 122:
      case 123:
      case 124:
      case 125:
      case 126:
      case 127:
      case 128:
        return 0;
      case 17:
        result = "Map Flush Explicit Bit";
        break;
      case 33:
        result = "Map Unsynchronized Bit";
        break;
      case 65:
        result = "Lighting Bit";
        break;
      case 129:
        return "Bit";
      default:
        if ("False" != 256)
        {
          return 0;
        }

        result = "Accum";
        break;
    }
  }

  else
  {
    switch(a1)
    {
      case 1280:
        result = "Invalid Enum";
        break;
      case 1281:
        result = "Invalid Value";
        break;
      case 1282:
        result = "Invalid Operation";
        break;
      case 1283:
        result = "Stack Overflow";
        break;
      case 1284:
        result = "Stack Underflow";
        break;
      case 1285:
        result = "Out Of Memory";
        break;
      case 1286:
        result = "Invalid Framebuffer Operation";
        break;
      case 1287:
      case 1288:
      case 1289:
      case 1290:
      case 1291:
      case 1292:
      case 1293:
      case 1294:
      case 1295:
      case 1296:
      case 1297:
      case 1298:
      case 1299:
      case 1300:
      case 1301:
      case 1302:
      case 1303:
      case 1304:
      case 1305:
      case 1306:
      case 1307:
      case 1308:
      case 1309:
      case 1310:
      case 1311:
      case 1312:
      case 1313:
      case 1314:
      case 1315:
      case 1316:
      case 1317:
      case 1318:
      case 1319:
      case 1320:
      case 1321:
      case 1322:
      case 1323:
      case 1324:
      case 1325:
      case 1326:
      case 1327:
      case 1328:
      case 1329:
      case 1330:
      case 1331:
      case 1332:
      case 1333:
      case 1334:
      case 1335:
      case 1336:
      case 1337:
      case 1338:
      case 1339:
      case 1340:
      case 1341:
      case 1342:
      case 1343:
      case 1344:
      case 1345:
      case 1346:
      case 1347:
      case 1348:
      case 1349:
      case 1350:
      case 1351:
      case 1352:
      case 1353:
      case 1354:
      case 1355:
      case 1356:
      case 1357:
      case 1358:
      case 1359:
      case 1360:
      case 1361:
      case 1362:
      case 1363:
      case 1364:
      case 1365:
      case 1366:
      case 1367:
      case 1368:
      case 1369:
      case 1370:
      case 1371:
      case 1372:
      case 1373:
      case 1374:
      case 1375:
      case 1376:
      case 1377:
      case 1378:
      case 1379:
      case 1380:
      case 1381:
      case 1382:
      case 1383:
      case 1384:
      case 1385:
      case 1386:
      case 1387:
      case 1388:
      case 1389:
      case 1390:
      case 1391:
      case 1392:
      case 1393:
      case 1394:
      case 1395:
      case 1396:
      case 1397:
      case 1398:
      case 1399:
      case 1400:
      case 1401:
      case 1402:
      case 1403:
      case 1404:
      case 1405:
      case 1406:
      case 1407:
      case 1408:
      case 1409:
      case 1410:
      case 1411:
      case 1412:
      case 1413:
      case 1414:
      case 1415:
      case 1416:
      case 1417:
      case 1418:
      case 1419:
      case 1420:
      case 1421:
      case 1422:
      case 1423:
      case 1424:
      case 1425:
      case 1426:
      case 1427:
      case 1428:
      case 1429:
      case 1430:
      case 1431:
      case 1432:
      case 1433:
      case 1434:
      case 1435:
      case 1436:
      case 1437:
      case 1438:
      case 1439:
      case 1440:
      case 1441:
      case 1442:
      case 1443:
      case 1444:
      case 1445:
      case 1446:
      case 1447:
      case 1448:
      case 1449:
      case 1450:
      case 1451:
      case 1452:
      case 1453:
      case 1454:
      case 1455:
      case 1456:
      case 1457:
      case 1458:
      case 1459:
      case 1460:
      case 1461:
      case 1462:
      case 1463:
      case 1464:
      case 1465:
      case 1466:
      case 1467:
      case 1468:
      case 1469:
      case 1470:
      case 1471:
      case 1472:
      case 1473:
      case 1474:
      case 1475:
      case 1476:
      case 1477:
      case 1478:
      case 1479:
      case 1480:
      case 1481:
      case 1482:
      case 1483:
      case 1484:
      case 1485:
      case 1486:
      case 1487:
      case 1488:
      case 1489:
      case 1490:
      case 1491:
      case 1492:
      case 1493:
      case 1494:
      case 1495:
      case 1496:
      case 1497:
      case 1498:
      case 1499:
      case 1500:
      case 1501:
      case 1502:
      case 1503:
      case 1504:
      case 1505:
      case 1506:
      case 1507:
      case 1508:
      case 1509:
      case 1510:
      case 1511:
      case 1512:
      case 1513:
      case 1514:
      case 1515:
      case 1516:
      case 1517:
      case 1518:
      case 1519:
      case 1520:
      case 1521:
      case 1522:
      case 1523:
      case 1524:
      case 1525:
      case 1526:
      case 1527:
      case 1528:
      case 1529:
      case 1530:
      case 1531:
      case 1532:
      case 1533:
      case 1534:
      case 1535:
      case 1541:
      case 1542:
      case 1543:
      case 1544:
      case 1545:
      case 1546:
      case 1547:
      case 1548:
      case 1549:
      case 1550:
      case 1551:
      case 1552:
      case 1553:
      case 1554:
      case 1555:
      case 1556:
      case 1557:
      case 1558:
      case 1559:
      case 1560:
      case 1561:
      case 1562:
      case 1563:
      case 1564:
      case 1565:
      case 1566:
      case 1567:
      case 1568:
      case 1569:
      case 1570:
      case 1571:
      case 1572:
      case 1573:
      case 1574:
      case 1575:
      case 1576:
      case 1577:
      case 1578:
      case 1579:
      case 1580:
      case 1581:
      case 1582:
      case 1583:
      case 1584:
      case 1585:
      case 1586:
      case 1587:
      case 1588:
      case 1589:
      case 1590:
      case 1591:
      case 1592:
      case 1593:
      case 1594:
      case 1595:
      case 1596:
      case 1597:
      case 1598:
      case 1599:
      case 1600:
      case 1601:
      case 1602:
      case 1603:
      case 1604:
      case 1605:
      case 1606:
      case 1607:
      case 1608:
      case 1609:
      case 1610:
      case 1611:
      case 1612:
      case 1613:
      case 1614:
      case 1615:
      case 1616:
      case 1617:
      case 1618:
      case 1619:
      case 1620:
      case 1621:
      case 1622:
      case 1623:
      case 1624:
      case 1625:
      case 1626:
      case 1627:
      case 1628:
      case 1629:
      case 1630:
      case 1631:
      case 1632:
      case 1633:
      case 1634:
      case 1635:
      case 1636:
      case 1637:
      case 1638:
      case 1639:
      case 1640:
      case 1641:
      case 1642:
      case 1643:
      case 1644:
      case 1645:
      case 1646:
      case 1647:
      case 1648:
      case 1649:
      case 1650:
      case 1651:
      case 1652:
      case 1653:
      case 1654:
      case 1655:
      case 1656:
      case 1657:
      case 1658:
      case 1659:
      case 1660:
      case 1661:
      case 1662:
      case 1663:
      case 1664:
      case 1665:
      case 1666:
      case 1667:
      case 1668:
      case 1669:
      case 1670:
      case 1671:
      case 1672:
      case 1673:
      case 1674:
      case 1675:
      case 1676:
      case 1677:
      case 1678:
      case 1679:
      case 1680:
      case 1681:
      case 1682:
      case 1683:
      case 1684:
      case 1685:
      case 1686:
      case 1687:
      case 1688:
      case 1689:
      case 1690:
      case 1691:
      case 1692:
      case 1693:
      case 1694:
      case 1695:
      case 1696:
      case 1697:
      case 1698:
      case 1699:
      case 1700:
      case 1701:
      case 1702:
      case 1703:
      case 1704:
      case 1705:
      case 1706:
      case 1707:
      case 1708:
      case 1709:
      case 1710:
      case 1711:
      case 1712:
      case 1713:
      case 1714:
      case 1715:
      case 1716:
      case 1717:
      case 1718:
      case 1719:
      case 1720:
      case 1721:
      case 1722:
      case 1723:
      case 1724:
      case 1725:
      case 1726:
      case 1727:
      case 1728:
      case 1729:
      case 1730:
      case 1731:
      case 1732:
      case 1733:
      case 1734:
      case 1735:
      case 1736:
      case 1737:
      case 1738:
      case 1739:
      case 1740:
      case 1741:
      case 1742:
      case 1743:
      case 1744:
      case 1745:
      case 1746:
      case 1747:
      case 1748:
      case 1749:
      case 1750:
      case 1751:
      case 1752:
      case 1753:
      case 1754:
      case 1755:
      case 1756:
      case 1757:
      case 1758:
      case 1759:
      case 1760:
      case 1761:
      case 1762:
      case 1763:
      case 1764:
      case 1765:
      case 1766:
      case 1767:
      case 1768:
      case 1769:
      case 1770:
      case 1771:
      case 1772:
      case 1773:
      case 1774:
      case 1775:
      case 1776:
      case 1777:
      case 1778:
      case 1779:
      case 1780:
      case 1781:
      case 1782:
      case 1783:
      case 1784:
      case 1785:
      case 1786:
      case 1787:
      case 1788:
      case 1789:
      case 1790:
      case 1791:
      case 1800:
      case 1801:
      case 1802:
      case 1803:
      case 1804:
      case 1805:
      case 1806:
      case 1807:
      case 1808:
      case 1809:
      case 1810:
      case 1811:
      case 1812:
      case 1813:
      case 1814:
      case 1815:
      case 1816:
      case 1817:
      case 1818:
      case 1819:
      case 1820:
      case 1821:
      case 1822:
      case 1823:
      case 1824:
      case 1825:
      case 1826:
      case 1827:
      case 1828:
      case 1829:
      case 1830:
      case 1831:
      case 1832:
      case 1833:
      case 1834:
      case 1835:
      case 1836:
      case 1837:
      case 1838:
      case 1839:
      case 1840:
      case 1841:
      case 1842:
      case 1843:
      case 1844:
      case 1845:
      case 1846:
      case 1847:
      case 1848:
      case 1849:
      case 1850:
      case 1851:
      case 1852:
      case 1853:
      case 1854:
      case 1855:
      case 1856:
      case 1857:
      case 1858:
      case 1859:
      case 1860:
      case 1861:
      case 1862:
      case 1863:
      case 1864:
      case 1865:
      case 1866:
      case 1867:
      case 1868:
      case 1869:
      case 1870:
      case 1871:
      case 1872:
      case 1873:
      case 1874:
      case 1875:
      case 1876:
      case 1877:
      case 1878:
      case 1879:
      case 1880:
      case 1881:
      case 1882:
      case 1883:
      case 1884:
      case 1885:
      case 1886:
      case 1887:
      case 1888:
      case 1889:
      case 1890:
      case 1891:
      case 1892:
      case 1893:
      case 1894:
      case 1895:
      case 1896:
      case 1897:
      case 1898:
      case 1899:
      case 1900:
      case 1901:
      case 1902:
      case 1903:
      case 1904:
      case 1905:
      case 1906:
      case 1907:
      case 1908:
      case 1909:
      case 1910:
      case 1911:
      case 1912:
      case 1913:
      case 1914:
      case 1915:
      case 1916:
      case 1917:
      case 1918:
      case 1919:
      case 1920:
      case 1921:
      case 1922:
      case 1923:
      case 1924:
      case 1925:
      case 1926:
      case 1927:
      case 1928:
      case 1929:
      case 1930:
      case 1931:
      case 1932:
      case 1933:
      case 1934:
      case 1935:
      case 1936:
      case 1937:
      case 1938:
      case 1939:
      case 1940:
      case 1941:
      case 1942:
      case 1943:
      case 1944:
      case 1945:
      case 1946:
      case 1947:
      case 1948:
      case 1949:
      case 1950:
      case 1951:
      case 1952:
      case 1953:
      case 1954:
      case 1955:
      case 1956:
      case 1957:
      case 1958:
      case 1959:
      case 1960:
      case 1961:
      case 1962:
      case 1963:
      case 1964:
      case 1965:
      case 1966:
      case 1967:
      case 1968:
      case 1969:
      case 1970:
      case 1971:
      case 1972:
      case 1973:
      case 1974:
      case 1975:
      case 1976:
      case 1977:
      case 1978:
      case 1979:
      case 1980:
      case 1981:
      case 1982:
      case 1983:
      case 1984:
      case 1985:
      case 1986:
      case 1987:
      case 1988:
      case 1989:
      case 1990:
      case 1991:
      case 1992:
      case 1993:
      case 1994:
      case 1995:
      case 1996:
      case 1997:
      case 1998:
      case 1999:
      case 2000:
      case 2001:
      case 2002:
      case 2003:
      case 2004:
      case 2005:
      case 2006:
      case 2007:
      case 2008:
      case 2009:
      case 2010:
      case 2011:
      case 2012:
      case 2013:
      case 2014:
      case 2015:
      case 2016:
      case 2017:
      case 2018:
      case 2019:
      case 2020:
      case 2021:
      case 2022:
      case 2023:
      case 2024:
      case 2025:
      case 2026:
      case 2027:
      case 2028:
      case 2029:
      case 2030:
      case 2031:
      case 2032:
      case 2033:
      case 2034:
      case 2035:
      case 2036:
      case 2037:
      case 2038:
      case 2039:
      case 2040:
      case 2041:
      case 2042:
      case 2043:
      case 2044:
      case 2045:
      case 2046:
      case 2047:
      case 2050:
      case 2051:
      case 2052:
      case 2053:
      case 2054:
      case 2055:
      case 2056:
      case 2057:
      case 2058:
      case 2059:
      case 2060:
      case 2061:
      case 2062:
      case 2063:
      case 2064:
      case 2065:
      case 2066:
      case 2067:
      case 2068:
      case 2069:
      case 2070:
      case 2071:
      case 2072:
      case 2073:
      case 2074:
      case 2075:
      case 2076:
      case 2077:
      case 2078:
      case 2079:
      case 2080:
      case 2081:
      case 2082:
      case 2083:
      case 2084:
      case 2085:
      case 2086:
      case 2087:
      case 2088:
      case 2089:
      case 2090:
      case 2091:
      case 2092:
      case 2093:
      case 2094:
      case 2095:
      case 2096:
      case 2097:
      case 2098:
      case 2099:
      case 2100:
      case 2101:
      case 2102:
      case 2103:
      case 2104:
      case 2105:
      case 2106:
      case 2107:
      case 2108:
      case 2109:
      case 2110:
      case 2111:
      case 2112:
      case 2113:
      case 2114:
      case 2115:
      case 2116:
      case 2117:
      case 2118:
      case 2119:
      case 2120:
      case 2121:
      case 2122:
      case 2123:
      case 2124:
      case 2125:
      case 2126:
      case 2127:
      case 2128:
      case 2129:
      case 2130:
      case 2131:
      case 2132:
      case 2133:
      case 2134:
      case 2135:
      case 2136:
      case 2137:
      case 2138:
      case 2139:
      case 2140:
      case 2141:
      case 2142:
      case 2143:
      case 2144:
      case 2145:
      case 2146:
      case 2147:
      case 2148:
      case 2149:
      case 2150:
      case 2151:
      case 2152:
      case 2153:
      case 2154:
      case 2155:
      case 2156:
      case 2157:
      case 2158:
      case 2159:
      case 2160:
      case 2161:
      case 2162:
      case 2163:
      case 2164:
      case 2165:
      case 2166:
      case 2167:
      case 2168:
      case 2169:
      case 2170:
      case 2171:
      case 2172:
      case 2173:
      case 2174:
      case 2175:
      case 2176:
      case 2177:
      case 2178:
      case 2179:
      case 2180:
      case 2181:
      case 2182:
      case 2183:
      case 2184:
      case 2185:
      case 2186:
      case 2187:
      case 2188:
      case 2189:
      case 2190:
      case 2191:
      case 2192:
      case 2193:
      case 2194:
      case 2195:
      case 2196:
      case 2197:
      case 2198:
      case 2199:
      case 2200:
      case 2201:
      case 2202:
      case 2203:
      case 2204:
      case 2205:
      case 2206:
      case 2207:
      case 2208:
      case 2209:
      case 2210:
      case 2211:
      case 2212:
      case 2213:
      case 2214:
      case 2215:
      case 2216:
      case 2217:
      case 2218:
      case 2219:
      case 2220:
      case 2221:
      case 2222:
      case 2223:
      case 2224:
      case 2225:
      case 2226:
      case 2227:
      case 2228:
      case 2229:
      case 2230:
      case 2231:
      case 2232:
      case 2233:
      case 2234:
      case 2235:
      case 2236:
      case 2237:
      case 2238:
      case 2239:
      case 2240:
      case 2241:
      case 2242:
      case 2243:
      case 2244:
      case 2245:
      case 2246:
      case 2247:
      case 2248:
      case 2249:
      case 2250:
      case 2251:
      case 2252:
      case 2253:
      case 2254:
      case 2255:
      case 2256:
      case 2257:
      case 2258:
      case 2259:
      case 2260:
      case 2261:
      case 2262:
      case 2263:
      case 2264:
      case 2265:
      case 2266:
      case 2267:
      case 2268:
      case 2269:
      case 2270:
      case 2271:
      case 2272:
      case 2273:
      case 2274:
      case 2275:
      case 2276:
      case 2277:
      case 2278:
      case 2279:
      case 2280:
      case 2281:
      case 2282:
      case 2283:
      case 2284:
      case 2285:
      case 2286:
      case 2287:
      case 2288:
      case 2289:
      case 2290:
      case 2291:
      case 2292:
      case 2293:
      case 2294:
      case 2295:
      case 2296:
      case 2297:
      case 2298:
      case 2299:
      case 2300:
      case 2301:
      case 2302:
      case 2303:
      case 2306:
      case 2307:
      case 2308:
      case 2309:
      case 2310:
      case 2311:
      case 2312:
      case 2313:
      case 2314:
      case 2315:
      case 2316:
      case 2317:
      case 2318:
      case 2319:
      case 2320:
      case 2321:
      case 2322:
      case 2323:
      case 2324:
      case 2325:
      case 2326:
      case 2327:
      case 2328:
      case 2329:
      case 2330:
      case 2331:
      case 2332:
      case 2333:
      case 2334:
      case 2335:
      case 2336:
      case 2337:
      case 2338:
      case 2339:
      case 2340:
      case 2341:
      case 2342:
      case 2343:
      case 2344:
      case 2345:
      case 2346:
      case 2347:
      case 2348:
      case 2349:
      case 2350:
      case 2351:
      case 2352:
      case 2353:
      case 2354:
      case 2355:
      case 2356:
      case 2357:
      case 2358:
      case 2359:
      case 2360:
      case 2361:
      case 2362:
      case 2363:
      case 2364:
      case 2365:
      case 2366:
      case 2367:
      case 2368:
      case 2369:
      case 2370:
      case 2371:
      case 2372:
      case 2373:
      case 2374:
      case 2375:
      case 2376:
      case 2377:
      case 2378:
      case 2379:
      case 2380:
      case 2381:
      case 2382:
      case 2383:
      case 2384:
      case 2385:
      case 2386:
      case 2387:
      case 2388:
      case 2389:
      case 2390:
      case 2391:
      case 2392:
      case 2393:
      case 2394:
      case 2395:
      case 2396:
      case 2397:
      case 2398:
      case 2399:
      case 2400:
      case 2401:
      case 2402:
      case 2403:
      case 2404:
      case 2405:
      case 2406:
      case 2407:
      case 2408:
      case 2409:
      case 2410:
      case 2411:
      case 2412:
      case 2413:
      case 2414:
      case 2415:
      case 2416:
      case 2417:
      case 2418:
      case 2419:
      case 2420:
      case 2421:
      case 2422:
      case 2423:
      case 2424:
      case 2425:
      case 2426:
      case 2427:
      case 2428:
      case 2429:
      case 2430:
      case 2431:
      case 2432:
      case 2433:
      case 2434:
      case 2435:
      case 2436:
      case 2437:
      case 2438:
      case 2439:
      case 2440:
      case 2441:
      case 2442:
      case 2443:
      case 2444:
      case 2445:
      case 2446:
      case 2447:
      case 2448:
      case 2449:
      case 2450:
      case 2451:
      case 2452:
      case 2453:
      case 2454:
      case 2455:
      case 2456:
      case 2457:
      case 2458:
      case 2459:
      case 2460:
      case 2461:
      case 2462:
      case 2463:
      case 2464:
      case 2465:
      case 2466:
      case 2467:
      case 2468:
      case 2469:
      case 2470:
      case 2471:
      case 2472:
      case 2473:
      case 2474:
      case 2475:
      case 2476:
      case 2477:
      case 2478:
      case 2479:
      case 2480:
      case 2481:
      case 2482:
      case 2483:
      case 2484:
      case 2485:
      case 2486:
      case 2487:
      case 2488:
      case 2489:
      case 2490:
      case 2491:
      case 2492:
      case 2493:
      case 2494:
      case 2495:
      case 2496:
      case 2497:
      case 2498:
      case 2499:
      case 2500:
      case 2501:
      case 2502:
      case 2503:
      case 2504:
      case 2505:
      case 2506:
      case 2507:
      case 2508:
      case 2509:
      case 2510:
      case 2511:
      case 2512:
      case 2513:
      case 2514:
      case 2515:
      case 2516:
      case 2517:
      case 2518:
      case 2519:
      case 2520:
      case 2521:
      case 2522:
      case 2523:
      case 2524:
      case 2525:
      case 2526:
      case 2527:
      case 2528:
      case 2529:
      case 2530:
      case 2531:
      case 2532:
      case 2533:
      case 2534:
      case 2535:
      case 2536:
      case 2537:
      case 2538:
      case 2539:
      case 2540:
      case 2541:
      case 2542:
      case 2543:
      case 2544:
      case 2545:
      case 2546:
      case 2547:
      case 2548:
      case 2549:
      case 2550:
      case 2551:
      case 2552:
      case 2553:
      case 2554:
      case 2555:
      case 2556:
      case 2557:
      case 2558:
      case 2559:
      case 2563:
      case 2564:
      case 2565:
      case 2566:
      case 2567:
      case 2568:
      case 2569:
      case 2570:
      case 2571:
      case 2572:
      case 2573:
      case 2574:
      case 2575:
      case 2576:
      case 2577:
      case 2578:
      case 2579:
      case 2580:
      case 2581:
      case 2582:
      case 2583:
      case 2584:
      case 2585:
      case 2586:
      case 2587:
      case 2588:
      case 2589:
      case 2590:
      case 2591:
      case 2592:
      case 2593:
      case 2594:
      case 2595:
      case 2596:
      case 2597:
      case 2598:
      case 2599:
      case 2600:
      case 2601:
      case 2602:
      case 2603:
      case 2604:
      case 2605:
      case 2606:
      case 2607:
      case 2608:
      case 2609:
      case 2610:
      case 2611:
      case 2612:
      case 2613:
      case 2614:
      case 2615:
      case 2616:
      case 2617:
      case 2618:
      case 2619:
      case 2620:
      case 2621:
      case 2622:
      case 2623:
      case 2624:
      case 2625:
      case 2626:
      case 2627:
      case 2628:
      case 2629:
      case 2630:
      case 2631:
      case 2632:
      case 2633:
      case 2634:
      case 2635:
      case 2636:
      case 2637:
      case 2638:
      case 2639:
      case 2640:
      case 2641:
      case 2642:
      case 2643:
      case 2644:
      case 2645:
      case 2646:
      case 2647:
      case 2648:
      case 2649:
      case 2650:
      case 2651:
      case 2652:
      case 2653:
      case 2654:
      case 2655:
      case 2656:
      case 2657:
      case 2658:
      case 2659:
      case 2660:
      case 2661:
      case 2662:
      case 2663:
      case 2664:
      case 2665:
      case 2666:
      case 2667:
      case 2668:
      case 2669:
      case 2670:
      case 2671:
      case 2672:
      case 2673:
      case 2674:
      case 2675:
      case 2676:
      case 2677:
      case 2678:
      case 2679:
      case 2680:
      case 2681:
      case 2682:
      case 2683:
      case 2684:
      case 2685:
      case 2686:
      case 2687:
      case 2688:
      case 2689:
      case 2690:
      case 2691:
      case 2692:
      case 2693:
      case 2694:
      case 2695:
      case 2696:
      case 2697:
      case 2698:
      case 2699:
      case 2700:
      case 2701:
      case 2702:
      case 2703:
      case 2704:
      case 2705:
      case 2706:
      case 2707:
      case 2708:
      case 2709:
      case 2710:
      case 2711:
      case 2712:
      case 2713:
      case 2714:
      case 2715:
      case 2716:
      case 2717:
      case 2718:
      case 2719:
      case 2720:
      case 2721:
      case 2722:
      case 2723:
      case 2724:
      case 2725:
      case 2726:
      case 2727:
      case 2728:
      case 2729:
      case 2730:
      case 2731:
      case 2732:
      case 2733:
      case 2734:
      case 2735:
      case 2736:
      case 2737:
      case 2738:
      case 2739:
      case 2740:
      case 2741:
      case 2742:
      case 2743:
      case 2744:
      case 2745:
      case 2746:
      case 2747:
      case 2748:
      case 2749:
      case 2750:
      case 2751:
      case 2752:
      case 2753:
      case 2754:
      case 2755:
      case 2756:
      case 2757:
      case 2758:
      case 2759:
      case 2760:
      case 2761:
      case 2762:
      case 2763:
      case 2764:
      case 2765:
      case 2766:
      case 2767:
      case 2768:
      case 2769:
      case 2770:
      case 2771:
      case 2772:
      case 2773:
      case 2774:
      case 2775:
      case 2776:
      case 2777:
      case 2778:
      case 2779:
      case 2780:
      case 2781:
      case 2782:
      case 2783:
      case 2784:
      case 2785:
      case 2786:
      case 2787:
      case 2788:
      case 2789:
      case 2790:
      case 2791:
      case 2792:
      case 2793:
      case 2794:
      case 2795:
      case 2796:
      case 2797:
      case 2798:
      case 2799:
      case 2800:
      case 2801:
      case 2802:
      case 2803:
      case 2804:
      case 2805:
      case 2806:
      case 2807:
      case 2808:
      case 2809:
      case 2810:
      case 2811:
      case 2812:
      case 2813:
      case 2814:
      case 2815:
      case 2826:
      case 2827:
      case 2828:
      case 2829:
      case 2830:
      case 2831:
      case 2836:
      case 2837:
      case 2838:
      case 2839:
      case 2840:
      case 2841:
      case 2842:
      case 2843:
      case 2844:
      case 2845:
      case 2846:
      case 2847:
      case 2855:
      case 2856:
      case 2857:
      case 2858:
      case 2859:
      case 2860:
      case 2861:
      case 2862:
      case 2863:
      case 2868:
      case 2869:
      case 2870:
      case 2871:
      case 2872:
      case 2873:
      case 2874:
      case 2875:
      case 2876:
      case 2877:
      case 2878:
      case 2879:
      case 2887:
      case 2888:
      case 2889:
      case 2890:
      case 2891:
      case 2892:
      case 2893:
      case 2894:
      case 2895:
      case 2904:
      case 2905:
      case 2906:
      case 2907:
      case 2908:
      case 2909:
      case 2910:
      case 2911:
      case 2919:
      case 2920:
      case 2921:
      case 2922:
      case 2923:
      case 2924:
      case 2925:
      case 2926:
      case 2927:
      case 2933:
      case 2934:
      case 2935:
      case 2936:
      case 2937:
      case 2938:
      case 2939:
      case 2940:
      case 2941:
      case 2942:
      case 2943:
      case 2945:
      case 2946:
      case 2947:
      case 2948:
      case 2949:
      case 2950:
      case 2951:
      case 2952:
      case 2953:
      case 2954:
      case 2955:
      case 2956:
      case 2957:
      case 2958:
      case 2959:
      case 2969:
      case 2970:
      case 2971:
      case 2972:
      case 2973:
      case 2974:
      case 2975:
      case 2985:
      case 2986:
      case 2987:
      case 2988:
      case 2989:
      case 2990:
      case 2991:
      case 2994:
      case 2995:
      case 2996:
      case 2997:
      case 2998:
      case 2999:
      case 3000:
      case 3001:
      case 3002:
      case 3003:
      case 3004:
      case 3005:
      case 3006:
      case 3007:
      case 3011:
      case 3012:
      case 3013:
      case 3014:
      case 3015:
      case 3016:
      case 3017:
      case 3018:
      case 3019:
      case 3020:
      case 3021:
      case 3022:
      case 3023:
      case 3025:
      case 3026:
      case 3027:
      case 3028:
      case 3029:
      case 3030:
      case 3031:
      case 3032:
      case 3033:
      case 3034:
      case 3035:
      case 3036:
      case 3037:
      case 3038:
      case 3039:
      case 3043:
      case 3044:
      case 3045:
      case 3046:
      case 3047:
      case 3048:
      case 3049:
      case 3050:
      case 3051:
      case 3052:
      case 3053:
      case 3054:
      case 3055:
      case 3059:
      case 3060:
      case 3061:
      case 3062:
      case 3063:
      case 3064:
      case 3065:
      case 3066:
      case 3067:
      case 3068:
      case 3069:
      case 3070:
      case 3071:
      case 3075:
      case 3076:
      case 3077:
      case 3078:
      case 3079:
      case 3080:
      case 3081:
      case 3082:
      case 3083:
      case 3084:
      case 3085:
      case 3086:
      case 3087:
      case 3090:
      case 3091:
      case 3092:
      case 3093:
      case 3094:
      case 3095:
      case 3096:
      case 3097:
      case 3098:
      case 3099:
      case 3100:
      case 3101:
      case 3102:
      case 3103:
      case 3108:
      case 3109:
      case 3110:
      case 3111:
      case 3112:
      case 3113:
      case 3114:
      case 3115:
      case 3116:
      case 3117:
      case 3118:
      case 3119:
      case 3124:
      case 3125:
      case 3126:
      case 3127:
      case 3128:
      case 3129:
      case 3130:
      case 3131:
      case 3132:
      case 3133:
      case 3134:
      case 3135:
      case 3137:
      case 3138:
      case 3139:
      case 3140:
      case 3141:
      case 3142:
      case 3143:
      case 3144:
      case 3145:
      case 3146:
      case 3147:
      case 3148:
      case 3149:
      case 3150:
      case 3151:
      case 3157:
      case 3158:
      case 3159:
      case 3160:
      case 3161:
      case 3162:
      case 3163:
      case 3164:
      case 3165:
      case 3166:
      case 3167:
      case 3172:
      case 3173:
      case 3174:
      case 3175:
      case 3176:
      case 3177:
      case 3178:
      case 3179:
      case 3180:
      case 3181:
      case 3182:
      case 3183:
      case 3194:
      case 3195:
      case 3196:
      case 3197:
      case 3198:
      case 3199:
      case 3200:
      case 3201:
      case 3202:
      case 3203:
      case 3204:
      case 3205:
      case 3206:
      case 3207:
      case 3208:
      case 3209:
      case 3210:
      case 3211:
      case 3212:
      case 3213:
      case 3214:
      case 3215:
      case 3216:
      case 3217:
      case 3218:
      case 3219:
      case 3220:
      case 3221:
      case 3222:
      case 3223:
      case 3224:
      case 3225:
      case 3226:
      case 3227:
      case 3228:
      case 3229:
      case 3230:
      case 3231:
      case 3232:
      case 3233:
      case 3234:
      case 3235:
      case 3236:
      case 3237:
      case 3238:
      case 3239:
      case 3240:
      case 3241:
      case 3242:
      case 3243:
      case 3244:
      case 3245:
      case 3246:
      case 3247:
      case 3258:
      case 3259:
      case 3260:
      case 3261:
      case 3262:
      case 3263:
      case 3264:
      case 3265:
      case 3266:
      case 3267:
      case 3268:
      case 3269:
      case 3270:
      case 3271:
      case 3272:
      case 3273:
      case 3274:
      case 3275:
      case 3276:
      case 3277:
      case 3278:
      case 3279:
      case 3280:
      case 3281:
      case 3282:
      case 3283:
      case 3284:
      case 3285:
      case 3286:
      case 3287:
      case 3288:
      case 3289:
      case 3290:
      case 3291:
      case 3292:
      case 3293:
      case 3294:
      case 3295:
      case 3296:
      case 3297:
      case 3298:
      case 3299:
      case 3300:
      case 3301:
      case 3302:
      case 3303:
      case 3304:
      case 3305:
      case 3306:
      case 3307:
      case 3308:
      case 3309:
      case 3310:
      case 3311:
      case 3318:
      case 3319:
      case 3320:
      case 3321:
      case 3322:
      case 3323:
      case 3324:
      case 3325:
      case 3326:
      case 3327:
      case 3334:
      case 3335:
      case 3336:
      case 3337:
      case 3338:
      case 3339:
      case 3340:
      case 3341:
      case 3342:
      case 3343:
      case 3360:
      case 3361:
      case 3362:
      case 3363:
      case 3364:
      case 3365:
      case 3366:
      case 3367:
      case 3368:
      case 3369:
      case 3370:
      case 3371:
      case 3372:
      case 3373:
      case 3374:
      case 3375:
      case 3388:
      case 3389:
      case 3390:
      case 3391:
      case 3392:
      case 3393:
      case 3394:
      case 3395:
      case 3396:
      case 3397:
      case 3398:
      case 3399:
      case 3400:
      case 3401:
      case 3402:
      case 3403:
      case 3404:
      case 3405:
      case 3406:
      case 3407:
      case 3420:
      case 3421:
      case 3422:
      case 3423:
      case 3424:
      case 3425:
      case 3426:
      case 3427:
      case 3428:
      case 3429:
      case 3430:
      case 3431:
      case 3432:
      case 3433:
      case 3434:
      case 3435:
      case 3436:
      case 3437:
      case 3438:
      case 3439:
      case 3441:
      case 3442:
      case 3443:
      case 3444:
      case 3445:
      case 3446:
      case 3447:
      case 3448:
      case 3449:
      case 3450:
      case 3451:
      case 3452:
      case 3453:
      case 3454:
      case 3455:
      case 3457:
      case 3458:
      case 3459:
      case 3460:
      case 3461:
      case 3462:
      case 3463:
      case 3464:
      case 3465:
      case 3466:
      case 3467:
      case 3468:
      case 3469:
      case 3470:
      case 3471:
      case 3481:
      case 3482:
      case 3483:
      case 3484:
      case 3485:
      case 3486:
      case 3487:
      case 3488:
      case 3489:
      case 3490:
      case 3491:
      case 3492:
      case 3493:
      case 3494:
      case 3495:
      case 3496:
      case 3497:
      case 3498:
      case 3499:
      case 3500:
      case 3501:
      case 3502:
      case 3503:
      case 3513:
      case 3514:
      case 3515:
      case 3516:
      case 3517:
      case 3518:
      case 3519:
      case 3520:
      case 3521:
      case 3522:
      case 3523:
      case 3524:
      case 3525:
      case 3526:
      case 3527:
      case 3528:
      case 3529:
      case 3530:
      case 3531:
      case 3532:
      case 3533:
      case 3534:
      case 3535:
      case 3540:
      case 3541:
      case 3542:
      case 3543:
      case 3544:
      case 3545:
      case 3546:
      case 3547:
      case 3548:
      case 3549:
      case 3550:
      case 3551:
      case 3554:
      case 3555:
      case 3556:
      case 3557:
      case 3558:
      case 3559:
      case 3560:
      case 3561:
      case 3562:
      case 3563:
      case 3564:
      case 3565:
      case 3566:
      case 3567:
        return 0;
      case 1536:
        result = "2D";
        break;
      case 1537:
        result = "3D";
        break;
      case 1538:
        result = "3D Color";
        break;
      case 1539:
        result = "3D Color Texture";
        break;
      case 1540:
        result = "4D Color Texture";
        break;
      case 1792:
        result = "Pass Through Token";
        break;
      case 1793:
        result = "Token";
        break;
      case 1794:
        result = "Line Token";
        break;
      case 1795:
        result = "Polygon Token";
        break;
      case 1796:
        result = "Bitmap Token";
        break;
      case 1797:
        result = "Draw Pixel Token";
        break;
      case 1798:
        result = "Copy Pixel Token";
        break;
      case 1799:
        result = "Line Reset Token";
        break;
      case 2048:
        result = "Exp";
        break;
      case 2049:
        result = "Exp2";
        break;
      case 2304:
        result = "CW";
        break;
      case 2305:
        result = "CCW";
        break;
      case 2560:
        result = "Coeff";
        break;
      case 2561:
        result = "Order";
        break;
      case 2562:
        result = "Domain";
        break;
      case 2816:
        result = "Current Color";
        break;
      case 2817:
        result = "Current Index";
        break;
      case 2818:
        result = "Current Normal";
        break;
      case 2819:
        result = "Current Texture Coords";
        break;
      case 2820:
        result = "Current Raster Color";
        break;
      case 2821:
        result = "Current Raster Index";
        break;
      case 2822:
        result = "Current Raster Texture Coords";
        break;
      case 2823:
        result = "Current Raster Position";
        break;
      case 2824:
        result = "Current Raster Position Valid";
        break;
      case 2825:
        result = "Current Raster Distance";
        break;
      case 2832:
        result = "Smooth";
        break;
      case 2833:
        result = "Size";
        break;
      case 2834:
        result = "Size Range";
        break;
      case 2835:
        result = "Size Granularity";
        break;
      case 2848:
        result = "Line Smooth";
        break;
      case 2849:
        result = "Line Width";
        break;
      case 2850:
        result = "Smooth Line Width Range";
        break;
      case 2851:
        result = "Smooth Line Width Granularity";
        break;
      case 2852:
        result = "Line Stipple";
        break;
      case 2853:
        result = "Line Stipple Pattern";
        break;
      case 2854:
        result = "Line Stipple Repeat";
        break;
      case 2864:
        result = "List Mode";
        break;
      case 2865:
        result = "Max List Nesting";
        break;
      case 2866:
        result = "List Base";
        break;
      case 2867:
        result = "List Index";
        break;
      case 2880:
        result = "Polygon Mode";
        break;
      case 2881:
        result = "Polygon Smooth";
        break;
      case 2882:
        result = "Polygon Stipple";
        break;
      case 2883:
        result = "Edge Flag";
        break;
      case 2884:
        result = "Cull Face";
        break;
      case 2885:
        result = "Cull Face Mode";
        break;
      case 2886:
        result = "Front Face";
        break;
      case 2896:
        result = "Lighting";
        break;
      case 2897:
        result = "Local Viewer";
        break;
      case 2898:
        result = "Two Side";
        break;
      case 2899:
        result = "Ambient";
        break;
      case 2900:
        result = "Shade Model";
        break;
      case 2901:
        result = "Color Material Face";
        break;
      case 2902:
        result = "Color Material Parameter";
        break;
      case 2903:
        result = "Color Material";
        break;
      case 2912:
        result = "Fog";
        break;
      case 2913:
        result = "Index";
        break;
      case 2914:
        result = "Density";
        break;
      case 2915:
        result = "Start";
        break;
      case 2916:
        result = "End";
        break;
      case 2917:
        result = "Mode";
        break;
      case 2918:
        result = "Color";
        break;
      case 2928:
        result = "Depth Range";
        break;
      case 2929:
        result = "Test";
        break;
      case 2930:
        result = "Writemask";
        break;
      case 2931:
        result = "Clear Value";
        break;
      case 2932:
        result = "Func";
        break;
      case 2944:
        result = "Accum Clear Value";
        break;
      case 2960:
        result = "Test";
        break;
      case 2961:
        result = "Clear Value";
        break;
      case 2962:
        result = "Func";
        break;
      case 2963:
        result = "Value Mask";
        break;
      case 2964:
        result = "Fail";
        break;
      case 2965:
        result = "Pass Depth Fail";
        break;
      case 2966:
        result = "Pass Depth Pass";
        break;
      case 2967:
        result = "Ref";
        break;
      case 2968:
        result = "Writemask";
        break;
      case 2976:
        result = "Matrix Mode";
        break;
      case 2977:
        result = "Normalize";
        break;
      case 2978:
        result = "Viewport";
        break;
      case 2979:
        result = "Modelview Stack Depth";
        break;
      case 2980:
        result = "Projection Stack Depth";
        break;
      case 2981:
        result = "Stack Depth";
        break;
      case 2982:
        result = "Modelview Matrix";
        break;
      case 2983:
        result = "Projection Matrix";
        break;
      case 2984:
        result = "Texture Matrix";
        break;
      case 2992:
        result = "Attrib Stack Depth";
        break;
      case 2993:
        result = "Client Attrib Stack Depth";
        break;
      case 3008:
        result = "Alpha Test";
        break;
      case 3009:
        result = "Alpha Test Func";
        break;
      case 3010:
        result = "Alpha Test Ref";
        break;
      case 3024:
        result = "Dither";
        break;
      case 3040:
        result = "Dst";
        break;
      case 3041:
        result = "Src";
        break;
      case 3042:
        result = "Blend";
        break;
      case 3056:
        result = "Logic Op Mode";
        break;
      case 3057:
        result = "Index Logic Op";
        break;
      case 3058:
        result = "Logic Op";
        break;
      case 3072:
        result = "Aux Buffers";
        break;
      case 3073:
        result = "Draw Buffer";
        break;
      case 3074:
        result = "Read Buffer";
        break;
      case 3088:
        result = "Box";
        break;
      case 3089:
        result = "Test";
        break;
      case 3104:
        result = "Index Clear Value";
        break;
      case 3105:
        result = "Index Writemask";
        break;
      case 3106:
        result = "Clear Value";
        break;
      case 3107:
        result = "Writemask";
        break;
      case 3120:
        result = "Index Mode";
        break;
      case 3121:
        result = "RGBA Mode";
        break;
      case 3122:
        result = "Doublebuffer";
        break;
      case 3123:
        result = "Stereo";
        break;
      case 3136:
        result = "Render Mode";
        break;
      case 3152:
        result = "Perspective Correction Hint";
        break;
      case 3153:
        result = "Smooth Hint";
        break;
      case 3154:
        result = "Line Smooth Hint";
        break;
      case 3155:
        result = "Polygon Smooth Hint";
        break;
      case 3156:
        result = "Hint";
        break;
      case 3168:
        result = "Gen S";
        break;
      case 3169:
        result = "Gen T";
        break;
      case 3170:
        result = "Gen R";
        break;
      case 3171:
        result = "Gen Q";
        break;
      case 3184:
        result = "Pixel Map I To I";
        break;
      case 3185:
        result = "Pixel Map S To S";
        break;
      case 3186:
        result = "Pixel Map I To R";
        break;
      case 3187:
        result = "Pixel Map I To G";
        break;
      case 3188:
        result = "Pixel Map I To B";
        break;
      case 3189:
        result = "Pixel Map I To A";
        break;
      case 3190:
        result = "Pixel Map R To R";
        break;
      case 3191:
        result = "Pixel Map G To G";
        break;
      case 3192:
        result = "Pixel Map B To B";
        break;
      case 3193:
        result = "Pixel Map A To A";
        break;
      case 3248:
        result = "Pixel Map I To I Size";
        break;
      case 3249:
        result = "Pixel Map S To S Size";
        break;
      case 3250:
        result = "Pixel Map I To R Size";
        break;
      case 3251:
        result = "Pixel Map I To G Size";
        break;
      case 3252:
        result = "Pixel Map I To B Size";
        break;
      case 3253:
        result = "Pixel Map I To A Size";
        break;
      case 3254:
        result = "Pixel Map R To R Size";
        break;
      case 3255:
        result = "Pixel Map G To G Size";
        break;
      case 3256:
        result = "Pixel Map B To B Size";
        break;
      case 3257:
        result = "Pixel Map A To A Size";
        break;
      case 3312:
        result = "Unpack Swap Bytes";
        break;
      case 3313:
        result = "Unpack Lsb First";
        break;
      case 3314:
        result = "Unpack Row Length";
        break;
      case 3315:
        result = "Unpack Skip Rows";
        break;
      case 3316:
        result = "Unpack Skip Pixels";
        break;
      case 3317:
        result = "Unpack Alignment";
        break;
      case 3328:
        result = "Pack Swap Bytes";
        break;
      case 3329:
        result = "Pack Lsb First";
        break;
      case 3330:
        result = "Pack Row Length";
        break;
      case 3331:
        result = "Pack Skip Rows";
        break;
      case 3332:
        result = "Pack Skip Pixels";
        break;
      case 3333:
        result = "Pack Alignment";
        break;
      case 3344:
        result = "Map Color";
        break;
      case 3345:
        result = "Map Stencil";
        break;
      case 3346:
        result = "Index Shift";
        break;
      case 3347:
        result = "Index Offset";
        break;
      case 3348:
        result = "Red Scale";
        break;
      case 3349:
        result = "Red Bias";
        break;
      case 3350:
        result = "Zoom X";
        break;
      case 3351:
        result = "Zoom Y";
        break;
      case 3352:
        result = "Green Scale";
        break;
      case 3353:
        result = "Green Bias";
        break;
      case 3354:
        result = "Blue Scale";
        break;
      case 3355:
        result = "Blue Bias";
        break;
      case 3356:
        result = "Alpha Scale";
        break;
      case 3357:
        result = "Alpha Bias";
        break;
      case 3358:
        result = "Scale";
        break;
      case 3359:
        result = "Bias";
        break;
      case 3376:
        result = "Max Eval Order";
        break;
      case 3377:
        result = "Max Lights";
        break;
      case 3378:
        result = "Max Clip Distances";
        break;
      case 3379:
        result = "Max Texture Size";
        break;
      case 3380:
        result = "Max Pixel Map Table";
        break;
      case 3381:
        result = "Max Attrib Stack Depth";
        break;
      case 3382:
        result = "Max Modelview Stack Depth";
        break;
      case 3383:
        result = "Max Name Stack Depth";
        break;
      case 3384:
        result = "Max Projection Stack Depth";
        break;
      case 3385:
        result = "Max Texture Stack Depth";
        break;
      case 3386:
        result = "Max Viewport Dims";
        break;
      case 3387:
        result = "Max Client Attrib Stack Depth";
        break;
      case 3408:
        result = "Subpixel Bits";
        break;
      case 3409:
        result = "Index Bits";
        break;
      case 3410:
        result = "Red Bits";
        break;
      case 3411:
        result = "Green Bits";
        break;
      case 3412:
        result = "Blue Bits";
        break;
      case 3413:
        result = "Alpha Bits";
        break;
      case 3414:
        result = "Bits";
        break;
      case 3415:
        result = "Bits";
        break;
      case 3416:
        result = "Accum Red Bits";
        break;
      case 3417:
        result = "Accum Green Bits";
        break;
      case 3418:
        result = "Accum Blue Bits";
        break;
      case 3419:
        result = "Accum Alpha Bits";
        break;
      case 3440:
        result = "Name Stack Depth";
        break;
      case 3456:
        result = "Auto Normal";
        break;
      case 3472:
        result = "Map1 Color 4";
        break;
      case 3473:
        result = "Map1 Index";
        break;
      case 3474:
        result = "Map1 Normal";
        break;
      case 3475:
        result = "Map1 Texture Coord 1";
        break;
      case 3476:
        result = "Map1 Texture Coord 2";
        break;
      case 3477:
        result = "Map1 Texture Coord 3";
        break;
      case 3478:
        result = "Map1 Texture Coord 4";
        break;
      case 3479:
        result = "Map1 Vertex 3";
        break;
      case 3480:
        result = "Map1 Vertex 4";
        break;
      case 3504:
        result = "Map2 Color 4";
        break;
      case 3505:
        result = "Map2 Index";
        break;
      case 3506:
        result = "Map2 Normal";
        break;
      case 3507:
        result = "Map2 Texture Coord 1";
        break;
      case 3508:
        result = "Map2 Texture Coord 2";
        break;
      case 3509:
        result = "Map2 Texture Coord 3";
        break;
      case 3510:
        result = "Map2 Texture Coord 4";
        break;
      case 3511:
        result = "Map2 Vertex 3";
        break;
      case 3512:
        result = "Map2 Vertex 4";
        break;
      case 3536:
        result = "Map1 Grid Domain";
        break;
      case 3537:
        result = "Map1 Grid Segments";
        break;
      case 3538:
        result = "Map2 Grid Domain";
        break;
      case 3539:
        result = "Map2 Grid Segments";
        break;
      case 3552:
        result = "1D";
        break;
      case 3553:
        result = "2D";
        break;
      case 3568:
        result = "Feedback Buffer Pointer";
        break;
      case 3569:
        result = "Feedback Buffer Size";
        break;
      case 3570:
        result = "Feedback Buffer Type";
        break;
      case 3571:
        result = "Selection Buffer Pointer";
        break;
      case 3572:
        result = "Selection Buffer Size";
        break;
      default:
        switch(a1)
        {
          case 1024:
            result = "Front Left";
            break;
          case 1025:
            result = "Front Right";
            break;
          case 1026:
            result = "Back Left";
            break;
          case 1027:
            result = "Back Right";
            break;
          case 1028:
            result = "Front";
            break;
          case 1029:
            result = "Back";
            break;
          case 1030:
            result = "Left";
            break;
          case 1031:
            result = "Right";
            break;
          case 1032:
            result = "Front And Back";
            break;
          case 1033:
            result = "Aux0";
            break;
          case 1034:
            result = "Aux1";
            break;
          case 1035:
            result = "Aux2";
            break;
          case 1036:
            result = "Aux3";
            break;
          default:
            if (a1 != 776)
            {
              return 0;
            }

            result = "Src Alpha Saturate";
            break;
        }

        break;
    }
  }

  return result;
}

id dy_nsstring_from_enum(uint64_t a1)
{
  v2 = dy_string_from_enum(a1);
  if (!v2)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"0x%08x", a1];
  }

  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v2 length:strlen(v2) encoding:1 freeWhenDone:0];

  return v3;
}

id dy_compact_nsstring_from_enum(uint64_t a1)
{
  v2 = dy_compact_string_from_enum(a1);
  if (!v2)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"0x%08x", a1];
  }

  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v2 length:strlen(v2) encoding:1 freeWhenDone:0];

  return v3;
}

const char *dy_string_from_enum_ex(int a1, int a2)
{
  if (a2)
  {
    return dy_compact_string_from_enum(a1);
  }

  else
  {
    return dy_string_from_enum(a1);
  }
}

id dy_nsstring_from_enum_ex(uint64_t a1, int a2)
{
  v3 = MEMORY[0x277CCACA8];
  if (a2)
  {
    v4 = dy_compact_string_from_enum(a1);
    if (!v4)
    {
      return [v3 stringWithFormat:@"0x%08x", a1];
    }
  }

  else
  {
    v4 = dy_string_from_enum(a1);
    if (!v4)
    {
      return [v3 stringWithFormat:@"0x%08x", a1];
    }
  }

  v5 = [[v3 alloc] initWithBytesNoCopy:v4 length:strlen(v4) encoding:1 freeWhenDone:0];

  return v5;
}

void std::__hash_table<std::__hash_value_type<char const*,unsigned int>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,unsigned int>,GPUTools::CStringHash::hash,GPUTools::CStringHash::equal,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,unsigned int>,GPUTools::CStringHash::equal,GPUTools::CStringHash::hash,true>,std::allocator<std::__hash_value_type<char const*,unsigned int>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t GPUTools::GL::DYGetParameterInfo(uint64_t this, int *a2, unsigned int *a3, BOOL *a4)
{
  if (this > 33306)
  {
    if (this > 35367)
    {
      if (this <= 35967)
      {
        if (this > 35656)
        {
          if ((this - 35723) > 0x14 || ((1 << (this + 117)) & 0x38001) == 0)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v7 = (this - 35368);
          if (v7 > 0x2A || ((1 << (this - 40)) & 0x1BEF) != 0 || v7 != 42)
          {
            goto LABEL_48;
          }
        }
      }

      else if (this > 36202)
      {
        if (this > 36661)
        {
          goto LABEL_48;
        }

        v9 = this + 8;
        if ((this - 36344) > 0x30 || ((1 << v9) & 0x120000000003ALL) != 0 || ((1 << v9) & 0x180000000005) == 0)
        {
          goto LABEL_48;
        }
      }

      else if (this > 36062)
      {
        if (this != 36201)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v6 = (this - 35968);
        if (v6 > 0x2A || ((1 << (this + 0x80)) & 0x4F800008C31) != 0 || v6 != 9)
        {
          goto LABEL_48;
        }
      }
    }

    else
    {
      if (this > 34465)
      {
        switch(this)
        {
          case 34815:
          case 34816:
          case 34817:
          case 34818:
          case 34819:
          case 34853:
          case 34854:
          case 34855:
          case 34856:
          case 34857:
          case 34858:
          case 34859:
          case 34860:
          case 34861:
          case 34862:
          case 34863:
          case 34864:
          case 34865:
          case 34866:
          case 34867:
          case 34868:
          case 34877:
          case 34913:
          case 35210:
            goto LABEL_46;
          default:
            goto LABEL_48;
        }
      }

      if (this <= 34015)
      {
        if (((this - 33307) > 0x3F || ((1 << (this - 27)) & 0x8000000000000007) == 0) && (this - 33901) < 2)
        {
LABEL_40:
          v4 = 0;
          v5 = 2;
          if (!a2)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        }

        goto LABEL_48;
      }

      v8 = this + 32;
      if ((this - 34016) > 0x3C || ((1 << v8) & 0x10100000A0000104) != 0 || ((1 << v8) & 3) == 0)
      {
LABEL_48:
        v4 = 0;
        v5 = 1;
LABEL_49:
        if (!a2)
        {
          goto LABEL_51;
        }

LABEL_50:
        *a2 = v5;
        goto LABEL_51;
      }
    }

LABEL_46:
    v5 = 1;
    v4 = 1;
    if (!a2)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  if (this >= 12288)
  {
    switch(this)
    {
      case 32773:
LABEL_4:
        v4 = 0;
        v5 = 4;
        if (a2)
        {
          goto LABEL_50;
        }

        break;
      case 32774:
      case 32775:
      case 32776:
      case 32778:
      case 32779:
      case 32780:
      case 32781:
      case 32782:
      case 32783:
      case 32784:
      case 32785:
      case 32786:
      case 32787:
      case 32788:
      case 32789:
      case 32790:
      case 32791:
      case 32792:
      case 32793:
      case 32794:
      case 32795:
      case 32796:
      case 32797:
      case 32798:
      case 32799:
      case 32800:
      case 32801:
      case 32802:
      case 32803:
      case 32804:
      case 32805:
      case 32806:
      case 32807:
      case 32808:
      case 32809:
      case 32810:
      case 32811:
      case 32812:
      case 32813:
      case 32814:
      case 32815:
      case 32816:
      case 32817:
      case 32818:
      case 32819:
      case 32820:
      case 32821:
      case 32822:
      case 32824:
      case 32825:
      case 32827:
      case 32828:
      case 32829:
      case 32830:
      case 32831:
      case 32832:
      case 32833:
      case 32834:
      case 32835:
      case 32836:
      case 32837:
      case 32838:
      case 32839:
      case 32840:
      case 32841:
      case 32842:
      case 32843:
      case 32844:
      case 32845:
      case 32846:
      case 32847:
      case 32848:
      case 32849:
      case 32850:
      case 32851:
      case 32852:
      case 32853:
      case 32854:
      case 32855:
      case 32856:
      case 32857:
      case 32858:
      case 32859:
      case 32860:
      case 32861:
      case 32862:
      case 32863:
      case 32864:
      case 32865:
      case 32866:
      case 32867:
      case 32868:
      case 32869:
      case 32870:
      case 32871:
      case 32872:
      case 32873:
      case 32874:
      case 32875:
      case 32876:
      case 32877:
      case 32878:
      case 32879:
      case 32880:
      case 32881:
      case 32882:
      case 32883:
      case 32887:
      case 32889:
      case 32890:
      case 32892:
      case 32893:
      case 32895:
      case 32896:
      case 32897:
      case 32899:
      case 32900:
      case 32901:
      case 32902:
      case 32903:
      case 32904:
      case 32906:
      case 32907:
      case 32908:
      case 32909:
      case 32910:
      case 32911:
      case 32912:
      case 32913:
      case 32914:
      case 32915:
      case 32916:
      case 32917:
      case 32918:
      case 32919:
      case 32920:
      case 32921:
      case 32922:
      case 32923:
      case 32924:
      case 32929:
      case 32930:
      case 32931:
      case 32932:
      case 32933:
      case 32934:
      case 32935:
      case 32936:
      case 32937:
      case 32938:
      case 32940:
      case 32941:
      case 32942:
      case 32943:
      case 32944:
      case 32945:
      case 32946:
      case 32947:
      case 32948:
      case 32949:
      case 32950:
      case 32951:
      case 32952:
      case 32953:
      case 32954:
      case 32955:
      case 32956:
      case 32957:
      case 32958:
      case 32959:
      case 32960:
      case 32961:
      case 32962:
      case 32963:
      case 32964:
      case 32965:
      case 32966:
      case 32967:
      case 32972:
      case 32973:
      case 32974:
      case 32975:
      case 32976:
      case 32977:
      case 32978:
      case 32979:
      case 32980:
      case 32981:
      case 32982:
      case 32983:
      case 32984:
      case 32985:
      case 32986:
      case 32987:
      case 32988:
      case 32989:
      case 32990:
      case 32991:
      case 32992:
      case 32993:
      case 32994:
      case 32995:
      case 32996:
      case 32997:
      case 32998:
      case 32999:
      case 33000:
      case 33001:
      case 33002:
      case 33003:
      case 33004:
      case 33005:
      case 33006:
      case 33007:
      case 33008:
      case 33009:
      case 33010:
      case 33011:
      case 33012:
      case 33013:
      case 33014:
      case 33015:
      case 33016:
      case 33017:
      case 33018:
      case 33019:
      case 33020:
      case 33021:
      case 33022:
      case 33023:
      case 33024:
      case 33025:
      case 33026:
      case 33027:
      case 33028:
      case 33029:
      case 33030:
      case 33031:
      case 33032:
      case 33033:
      case 33034:
      case 33035:
      case 33036:
      case 33037:
      case 33038:
      case 33039:
      case 33040:
      case 33041:
      case 33042:
      case 33043:
      case 33044:
      case 33045:
      case 33046:
      case 33047:
      case 33048:
      case 33049:
      case 33050:
      case 33051:
      case 33052:
      case 33053:
      case 33054:
      case 33055:
      case 33056:
      case 33057:
      case 33058:
      case 33059:
      case 33060:
      case 33061:
      case 33062:
      case 33063:
      case 33064:
      case 33065:
      case 33066:
      case 33067:
      case 33068:
      case 33069:
      case 33070:
      case 33071:
      case 33072:
      case 33073:
      case 33074:
      case 33075:
      case 33076:
      case 33077:
      case 33078:
      case 33079:
      case 33080:
      case 33081:
      case 33082:
      case 33083:
      case 33084:
      case 33085:
      case 33086:
      case 33087:
      case 33088:
      case 33089:
      case 33090:
      case 33091:
      case 33092:
      case 33093:
      case 33094:
      case 33095:
      case 33096:
      case 33097:
      case 33098:
      case 33099:
      case 33100:
      case 33101:
      case 33102:
      case 33103:
      case 33104:
      case 33105:
      case 33106:
      case 33107:
      case 33108:
      case 33109:
      case 33110:
      case 33111:
      case 33112:
      case 33113:
      case 33114:
      case 33115:
      case 33116:
      case 33117:
      case 33118:
      case 33119:
      case 33120:
      case 33121:
      case 33122:
      case 33123:
      case 33124:
      case 33125:
      case 33126:
      case 33127:
      case 33128:
      case 33129:
      case 33130:
      case 33131:
      case 33132:
      case 33133:
      case 33134:
      case 33135:
      case 33136:
      case 33137:
      case 33138:
      case 33139:
      case 33140:
      case 33141:
      case 33142:
      case 33143:
      case 33144:
      case 33145:
      case 33146:
      case 33147:
      case 33148:
      case 33149:
      case 33150:
      case 33151:
      case 33152:
      case 33153:
      case 33154:
      case 33155:
      case 33156:
      case 33157:
      case 33158:
      case 33159:
      case 33160:
      case 33161:
      case 33162:
      case 33163:
      case 33164:
      case 33165:
      case 33166:
      case 33167:
      case 33168:
      case 33169:
        goto LABEL_48;
      case 32777:
      case 32823:
      case 32826:
      case 32884:
      case 32885:
      case 32886:
      case 32888:
      case 32891:
      case 32894:
      case 32898:
      case 32905:
      case 32925:
      case 32926:
      case 32927:
      case 32928:
      case 32939:
      case 32968:
      case 32969:
      case 32970:
      case 32971:
      case 33170:
        goto LABEL_46;
      default:
        if ((this - 12288) >= 8 && (this - 0x4000) >= 8)
        {
          goto LABEL_48;
        }

        goto LABEL_46;
    }
  }

  else
  {
    v4 = 0;
    v5 = 16;
    switch(this)
    {
      case 2816:
      case 2819:
      case 2899:
      case 2918:
      case 2978:
      case 3088:
      case 3106:
      case 3107:
        goto LABEL_4;
      case 2818:
        v4 = 0;
        v5 = 3;
        if (a2)
        {
          goto LABEL_50;
        }

        break;
      case 2832:
      case 2848:
      case 2849:
      case 2884:
      case 2885:
      case 2886:
      case 2896:
      case 2898:
      case 2900:
      case 2903:
      case 2912:
      case 2917:
      case 2929:
      case 2930:
      case 2932:
      case 2960:
      case 2962:
      case 2964:
      case 2965:
      case 2966:
      case 2976:
      case 2977:
      case 3008:
      case 3009:
      case 3024:
      case 3040:
      case 3041:
      case 3042:
      case 3056:
      case 3058:
      case 3074:
      case 3089:
      case 3152:
      case 3153:
      case 3154:
      case 3156:
      case 3553:
        goto LABEL_46;
      case 2834:
      case 2850:
      case 2928:
      case 3386:
        goto LABEL_40;
      case 2982:
      case 2983:
      case 2984:
        goto LABEL_49;
      default:
        goto LABEL_48;
    }
  }

LABEL_51:
  if (a3)
  {
    *a3 = v4;
  }

  return this;
}

uint64_t GPUTools::GL::dy_light_model_param_component_count(GPUTools::GL *this)
{
  if ((this - 2897) >= 2 && this == 2899)
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

uint64_t GPUTools::GL::dy_light_array_size(GPUTools::GL *this)
{
  v1 = this;
  result = 1;
  if (v1 > 4611)
  {
    if (v1 > 5633)
    {
      if (v1 == 5634)
      {
        return 4;
      }

      if (v1 != 5635)
      {
        return result;
      }
    }

    else if (v1 != 4612)
    {
      if (v1 == 5632)
      {
        return 4;
      }

      return result;
    }

    return 3;
  }

  if ((v1 - 4608) < 4)
  {
    return 4;
  }

  return result;
}

uint64_t GPUTools::GL::dy_fog_param_component_count(GPUTools::GL *this)
{
  if ((this - 2913) < 5)
  {
    return 1;
  }

  if (this == 2918)
  {
    return 4;
  }

  return 1;
}

uint64_t GPUTools::GL::DYMaterialParameterComponentCount(GPUTools::GL *this)
{
  v1 = this;
  result = 4;
  if (v1 <= 5631)
  {
    if ((v1 - 4608) >= 3)
    {
      return 1;
    }
  }

  else if (v1 > 5633)
  {
    if (v1 != 5634)
    {
      if (v1 == 5635)
      {
        return 3;
      }

      return 1;
    }
  }

  else if (v1 != 5632)
  {
    return 1;
  }

  return result;
}

double GPUTools::GL::DYGetTextureTargetInfo(int a1, uint64_t a2)
{
  if (!a2)
  {
    GPUTools::GL::DYGetTextureTargetInfo();
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  if (a1 <= 34074)
  {
    if (a1 <= 34038)
    {
      if (a1 <= 32867)
      {
        switch(a1)
        {
          case 3552:
LABEL_9:
            *&result = 0x806800000D33;
            *a2 = 0x806800000D33;
            *(a2 + 8) = 257;
            *(a2 + 14) = 1;
            return result;
          case 3553:
            goto LABEL_42;
          case 32867:
            *(a2 + 13) = 1;
            goto LABEL_9;
        }

        goto LABEL_39;
      }

      if (a1 == 32868)
      {
        *(a2 + 13) = 1;
        goto LABEL_42;
      }

      if (a1 == 32879)
      {
        *&result = 0x806A00008073;
        *a2 = 0x806A00008073;
        *(a2 + 8) = 259;
        *(a2 + 14) = 1;
        return result;
      }

      if (a1 != 34037)
      {
LABEL_39:
        *(a2 + 8) = 0;
LABEL_42:
        *&result = 0x806900000D33;
        *a2 = 0x806900000D33;
        *(a2 + 8) = 258;
        *(a2 + 14) = 1;
        return result;
      }

      goto LABEL_50;
    }

    if ((a1 - 34069) >= 6)
    {
      if (a1 == 34039)
      {
        *(a2 + 13) = 1;
LABEL_50:
        *&result = 0x84F6000084F8;
        *a2 = 0x84F6000084F8;
        *(a2 + 8) = 258;
        *(a2 + 14) = 1;
        return result;
      }

      if (a1 != 34067)
      {
        goto LABEL_39;
      }

LABEL_20:
      *&result = 0x85140000851CLL;
      *a2 = 0x85140000851CLL;
      *(a2 + 8) = 258;
      *(a2 + 14) = 1;
      return result;
    }

    v3 = 11;
LABEL_19:
    *(a2 + v3) = 1;
    goto LABEL_20;
  }

  if (a1 <= 35881)
  {
    if (a1 <= 35864)
    {
      if (a1 == 34075)
      {
        v3 = 13;
        goto LABEL_19;
      }

      if (a1 != 35864)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (a1 != 35865)
      {
        if (a1 != 35866)
        {
          if (a1 != 35867)
          {
            goto LABEL_39;
          }

          *(a2 + 13) = 1;
        }

        *&result = 0x8C1D00000D33;
        *a2 = 0x8C1D00000D33;
        *(a2 + 8) = 259;
        *(a2 + 10) = 1;
        *(a2 + 14) = 1;
        return result;
      }

      *(a2 + 13) = 1;
    }

    *&result = 0x8C1C00000D33;
    *a2 = 0x8C1C00000D33;
    *(a2 + 8) = 258;
    *(a2 + 10) = 1;
    *(a2 + 14) = 1;
    return result;
  }

  if (a1 <= 37120)
  {
    if (a1 == 35882)
    {
      *&result = 0x8C2C00008C2BLL;
      *a2 = 0x8C2C00008C2BLL;
      *(a2 + 8) = 1;
      return result;
    }

    if (a1 != 37120)
    {
      goto LABEL_39;
    }
  }

  else
  {
    if (a1 != 37121)
    {
      if (a1 != 37122)
      {
        if (a1 != 37123)
        {
          goto LABEL_39;
        }

        *(a2 + 13) = 1;
      }

      *&result = 0x910500000D33;
      *a2 = 0x910500000D33;
      *(a2 + 8) = 3;
      *(a2 + 10) = 1;
      *(a2 + 12) = 1;
      return result;
    }

    *(a2 + 13) = 1;
  }

  *&result = 0x910400000D33;
  *a2 = 0x910400000D33;
  *(a2 + 8) = 2;
  *(a2 + 12) = 1;
  return result;
}