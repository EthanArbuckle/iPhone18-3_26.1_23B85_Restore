@interface LibcoreNetMimeUtils
+ (JavaIoFileInputStream)applyOverrides;
+ (JavaIoFileInputStream)getContentTypesPropertiesStream;
+ (void)initialize;
@end

@implementation LibcoreNetMimeUtils

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = new_JavaUtilHashMap_init();
    JreStrongAssignAndConsume(&qword_100554BA8, v2);
    v3 = new_JavaUtilHashMap_init();
    JreStrongAssignAndConsume(&qword_100554BB0, v3);
    sub_100188938(@"application/andrew-inset", @"ez");
    sub_100188938(@"application/dsptype", @"tsp");
    sub_100188938(@"application/futuresplash", @"spl");
    sub_100188938(@"application/hta", @"hta");
    sub_100188938(@"application/mac-binhex40", @"hqx");
    sub_100188938(@"application/mac-compactpro", @"cpt");
    sub_100188938(@"application/mathematica", @"nb");
    sub_100188938(@"application/msaccess", @"mdb");
    sub_100188938(@"application/oda", @"oda");
    sub_100188938(@"application/ogg", @"ogg");
    sub_100188938(@"application/ogg", @"oga");
    sub_100188938(@"application/pdf", @"pdf");
    sub_100188938(@"application/pgp-keys", @"key");
    sub_100188938(@"application/pgp-signature", @"pgp");
    sub_100188938(@"application/pics-rules", @"prf");
    sub_100188938(@"application/pkix-cert", @"cer");
    sub_100188938(@"application/rar", @"rar");
    sub_100188938(@"application/rdf+xml", @"rdf");
    sub_100188938(@"application/rss+xml", @"rss");
    sub_100188938(@"application/zip", @"zip");
    sub_100188938(@"application/vnd.android.package-archive", @"apk");
    sub_100188938(@"application/vnd.cinderella", @"cdy");
    sub_100188938(@"application/vnd.ms-pki.stl", @"stl");
    sub_100188938(@"application/vnd.oasis.opendocument.database", @"odb");
    sub_100188938(@"application/vnd.oasis.opendocument.formula", @"odf");
    sub_100188938(@"application/vnd.oasis.opendocument.graphics", @"odg");
    sub_100188938(@"application/vnd.oasis.opendocument.graphics-template", @"otg");
    sub_100188938(@"application/vnd.oasis.opendocument.image", @"odi");
    sub_100188938(@"application/vnd.oasis.opendocument.spreadsheet", @"ods");
    sub_100188938(@"application/vnd.oasis.opendocument.spreadsheet-template", @"ots");
    sub_100188938(@"application/vnd.oasis.opendocument.text", @"odt");
    sub_100188938(@"application/vnd.oasis.opendocument.text-master", @"odm");
    sub_100188938(@"application/vnd.oasis.opendocument.text-template", @"ott");
    sub_100188938(@"application/vnd.oasis.opendocument.text-web", @"oth");
    sub_100188938(@"application/vnd.google-earth.kml+xml", @"kml");
    sub_100188938(@"application/vnd.google-earth.kmz", @"kmz");
    sub_100188938(@"application/msword", @"doc");
    sub_100188938(@"application/msword", @"dot");
    sub_100188938(@"application/vnd.openxmlformats-officedocument.wordprocessingml.document", @"docx");
    sub_100188938(@"application/vnd.openxmlformats-officedocument.wordprocessingml.template", @"dotx");
    sub_100188938(@"application/vnd.ms-excel", @"xls");
    sub_100188938(@"application/vnd.ms-excel", @"xlt");
    sub_100188938(@"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", @"xlsx");
    sub_100188938(@"application/vnd.openxmlformats-officedocument.spreadsheetml.template", @"xltx");
    sub_100188938(@"application/vnd.ms-powerpoint", @"ppt");
    sub_100188938(@"application/vnd.ms-powerpoint", @"pot");
    sub_100188938(@"application/vnd.ms-powerpoint", @"pps");
    sub_100188938(@"application/vnd.openxmlformats-officedocument.presentationml.presentation", @"pptx");
    sub_100188938(@"application/vnd.openxmlformats-officedocument.presentationml.template", @"potx");
    sub_100188938(@"application/vnd.openxmlformats-officedocument.presentationml.slideshow", @"ppsx");
    sub_100188938(@"application/vnd.rim.cod", @"cod");
    sub_100188938(@"application/vnd.smaf", @"mmf");
    sub_100188938(@"application/vnd.stardivision.calc", @"sdc");
    sub_100188938(@"application/vnd.stardivision.draw", @"sda");
    sub_100188938(@"application/vnd.stardivision.impress", @"sdd");
    sub_100188938(@"application/vnd.stardivision.impress", @"sdp");
    sub_100188938(@"application/vnd.stardivision.math", @"smf");
    sub_100188938(@"application/vnd.stardivision.writer", @"sdw");
    sub_100188938(@"application/vnd.stardivision.writer", @"vor");
    sub_100188938(@"application/vnd.stardivision.writer-global", @"sgl");
    sub_100188938(@"application/vnd.sun.xml.calc", @"sxc");
    sub_100188938(@"application/vnd.sun.xml.calc.template", @"stc");
    sub_100188938(@"application/vnd.sun.xml.draw", @"sxd");
    sub_100188938(@"application/vnd.sun.xml.draw.template", @"std");
    sub_100188938(@"application/vnd.sun.xml.impress", @"sxi");
    sub_100188938(@"application/vnd.sun.xml.impress.template", @"sti");
    sub_100188938(@"application/vnd.sun.xml.math", @"sxm");
    sub_100188938(@"application/vnd.sun.xml.writer", @"sxw");
    sub_100188938(@"application/vnd.sun.xml.writer.global", @"sxg");
    sub_100188938(@"application/vnd.sun.xml.writer.template", @"stw");
    sub_100188938(@"application/vnd.visio", @"vsd");
    sub_100188938(@"application/x-abiword", @"abw");
    sub_100188938(@"application/x-apple-diskimage", @"dmg");
    sub_100188938(@"application/x-bcpio", @"bcpio");
    sub_100188938(@"application/x-bittorrent", @"torrent");
    sub_100188938(@"application/x-cdf", @"cdf");
    sub_100188938(@"application/x-cdlink", @"vcd");
    sub_100188938(@"application/x-chess-pgn", @"pgn");
    sub_100188938(@"application/x-cpio", @"cpio");
    sub_100188938(@"application/x-debian-package", @"deb");
    sub_100188938(@"application/x-debian-package", @"udeb");
    sub_100188938(@"application/x-director", @"dcr");
    sub_100188938(@"application/x-director", @"dir");
    sub_100188938(@"application/x-director", @"dxr");
    sub_100188938(@"application/x-dms", @"dms");
    sub_100188938(@"application/x-doom", @"wad");
    sub_100188938(@"application/x-dvi", @"dvi");
    sub_100188938(@"application/x-flac", @"flac");
    sub_100188938(@"application/x-font", @"pfa");
    sub_100188938(@"application/x-font", @"pfb");
    sub_100188938(@"application/x-font", @"gsf");
    sub_100188938(@"application/x-font", @"pcf");
    sub_100188938(@"application/x-font", @"pcf.Z");
    sub_100188938(@"application/x-freemind", @"mm");
    sub_100188938(@"application/x-futuresplash", @"spl");
    sub_100188938(@"application/x-gnumeric", @"gnumeric");
    sub_100188938(@"application/x-go-sgf", @"sgf");
    sub_100188938(@"application/x-graphing-calculator", @"gcf");
    sub_100188938(@"application/x-gtar", @"tgz");
    sub_100188938(@"application/x-gtar", @"gtar");
    sub_100188938(@"application/x-gtar", @"taz");
    sub_100188938(@"application/x-hdf", @"hdf");
    sub_100188938(@"application/x-ica", @"ica");
    sub_100188938(@"application/x-internet-signup", @"ins");
    sub_100188938(@"application/x-internet-signup", @"isp");
    sub_100188938(@"application/x-iphone", @"iii");
    sub_100188938(@"application/x-iso9660-image", @"iso");
    sub_100188938(@"application/x-jmol", @"jmz");
    sub_100188938(@"application/x-kchart", @"chrt");
    sub_100188938(@"application/x-killustrator", @"kil");
    sub_100188938(@"application/x-koan", @"skp");
    sub_100188938(@"application/x-koan", @"skd");
    sub_100188938(@"application/x-koan", @"skt");
    sub_100188938(@"application/x-koan", @"skm");
    sub_100188938(@"application/x-kpresenter", @"kpr");
    sub_100188938(@"application/x-kpresenter", @"kpt");
    sub_100188938(@"application/x-kspread", @"ksp");
    sub_100188938(@"application/x-kword", @"kwd");
    sub_100188938(@"application/x-kword", @"kwt");
    sub_100188938(@"application/x-latex", @"latex");
    sub_100188938(@"application/x-lha", @"lha");
    sub_100188938(@"application/x-lzh", @"lzh");
    sub_100188938(@"application/x-lzx", @"lzx");
    sub_100188938(@"application/x-maker", @"frm");
    sub_100188938(@"application/x-maker", @"maker");
    sub_100188938(@"application/x-maker", @"frame");
    sub_100188938(@"application/x-maker", @"fb");
    sub_100188938(@"application/x-maker", @"book");
    sub_100188938(@"application/x-maker", @"fbdoc");
    sub_100188938(@"application/x-mif", @"mif");
    sub_100188938(@"application/x-ms-wmd", @"wmd");
    sub_100188938(@"application/x-ms-wmz", @"wmz");
    sub_100188938(@"application/x-msi", @"msi");
    sub_100188938(@"application/x-ns-proxy-autoconfig", @"pac");
    sub_100188938(@"application/x-nwc", @"nwc");
    sub_100188938(@"application/x-object", @"o");
    sub_100188938(@"application/x-oz-application", @"oza");
    sub_100188938(@"application/x-pem-file", @"pem");
    sub_100188938(@"application/x-pkcs12", @"p12");
    sub_100188938(@"application/x-pkcs12", @"pfx");
    sub_100188938(@"application/x-pkcs7-certreqresp", @"p7r");
    sub_100188938(@"application/x-pkcs7-crl", @"crl");
    sub_100188938(@"application/x-quicktimeplayer", @"qtl");
    sub_100188938(@"application/x-shar", @"shar");
    sub_100188938(@"application/x-shockwave-flash", @"swf");
    sub_100188938(@"application/x-stuffit", @"sit");
    sub_100188938(@"application/x-sv4cpio", @"sv4cpio");
    sub_100188938(@"application/x-sv4crc", @"sv4crc");
    sub_100188938(@"application/x-tar", @"tar");
    sub_100188938(@"application/x-texinfo", @"texinfo");
    sub_100188938(@"application/x-texinfo", @"texi");
    sub_100188938(@"application/x-troff", @"t");
    sub_100188938(@"application/x-troff", @"roff");
    sub_100188938(@"application/x-troff-man", @"man");
    sub_100188938(@"application/x-ustar", @"ustar");
    sub_100188938(@"application/x-wais-source", @"src");
    sub_100188938(@"application/x-wingz", @"wz");
    sub_100188938(@"application/x-webarchive", @"webarchive");
    sub_100188938(@"application/x-webarchive-xml", @"webarchivexml");
    sub_100188938(@"application/x-x509-ca-cert", @"crt");
    sub_100188938(@"application/x-x509-user-cert", @"crt");
    sub_100188938(@"application/x-x509-server-cert", @"crt");
    sub_100188938(@"application/x-xcf", @"xcf");
    sub_100188938(@"application/x-xfig", @"fig");
    sub_100188938(@"application/xhtml+xml", @"xhtml");
    sub_100188938(@"audio/3gpp", @"3gpp");
    sub_100188938(@"audio/aac", @"aac");
    sub_100188938(@"audio/aac-adts", @"aac");
    sub_100188938(@"audio/amr", @"amr");
    sub_100188938(@"audio/amr-wb", @"awb");
    sub_100188938(@"audio/basic", @"snd");
    sub_100188938(@"audio/imelody", @"imy");
    sub_100188938(@"audio/midi", @"mid");
    sub_100188938(@"audio/midi", @"midi");
    sub_100188938(@"audio/midi", @"ota");
    sub_100188938(@"audio/midi", @"kar");
    sub_100188938(@"audio/midi", @"rtttl");
    sub_100188938(@"audio/midi", @"xmf");
    sub_100188938(@"audio/mobile-xmf", @"mxmf");
    sub_100188938(@"audio/mpeg", @"mp3");
    sub_100188938(@"audio/mpeg", @"mpga");
    sub_100188938(@"audio/mpeg", @"mpega");
    sub_100188938(@"audio/mpeg", @"mp2");
    sub_100188938(@"audio/mpeg", @"m4a");
    sub_100188938(@"audio/mpegurl", @"m3u");
    sub_100188938(@"audio/prs.sid", @"sid");
    sub_100188938(@"audio/x-aiff", @"aif");
    sub_100188938(@"audio/x-aiff", @"aiff");
    sub_100188938(@"audio/x-aiff", @"aifc");
    sub_100188938(@"audio/x-gsm", @"gsm");
    sub_100188938(@"audio/x-matroska", @"mka");
    sub_100188938(@"audio/x-mpegurl", @"m3u");
    sub_100188938(@"audio/x-ms-wma", @"wma");
    sub_100188938(@"audio/x-ms-wax", @"wax");
    sub_100188938(@"audio/x-pn-realaudio", @"ra");
    sub_100188938(@"audio/x-pn-realaudio", @"rm");
    sub_100188938(@"audio/x-pn-realaudio", @"ram");
    sub_100188938(@"audio/x-realaudio", @"ra");
    sub_100188938(@"audio/x-scpls", @"pls");
    sub_100188938(@"audio/x-sd2", @"sd2");
    sub_100188938(@"audio/x-wav", @"wav");
    sub_100188938(@"image/bmp", @"bmp");
    sub_100188938(@"image/gif", @"gif");
    sub_100188938(@"image/ico", @"cur");
    sub_100188938(@"image/ico", @"ico");
    sub_100188938(@"image/ief", @"ief");
    sub_100188938(@"image/jpeg", @"jpeg");
    sub_100188938(@"image/jpeg", @"jpg");
    sub_100188938(@"image/jpeg", @"jpe");
    sub_100188938(@"image/pcx", @"pcx");
    sub_100188938(@"image/png", @"png");
    sub_100188938(@"image/svg+xml", @"svg");
    sub_100188938(@"image/svg+xml", @"svgz");
    sub_100188938(@"image/tiff", @"tiff");
    sub_100188938(@"image/tiff", @"tif");
    sub_100188938(@"image/vnd.djvu", @"djvu");
    sub_100188938(@"image/vnd.djvu", @"djv");
    sub_100188938(@"image/vnd.wap.wbmp", @"wbmp");
    sub_100188938(@"image/webp", @"webp");
    sub_100188938(@"image/x-cmu-raster", @"ras");
    sub_100188938(@"image/x-coreldraw", @"cdr");
    sub_100188938(@"image/x-coreldrawpattern", @"pat");
    sub_100188938(@"image/x-coreldrawtemplate", @"cdt");
    sub_100188938(@"image/x-corelphotopaint", @"cpt");
    sub_100188938(@"image/x-icon", @"ico");
    sub_100188938(@"image/x-jg", @"art");
    sub_100188938(@"image/x-jng", @"jng");
    sub_100188938(@"image/x-ms-bmp", @"bmp");
    sub_100188938(@"image/x-photoshop", @"psd");
    sub_100188938(@"image/x-portable-anymap", @"pnm");
    sub_100188938(@"image/x-portable-bitmap", @"pbm");
    sub_100188938(@"image/x-portable-graymap", @"pgm");
    sub_100188938(@"image/x-portable-pixmap", @"ppm");
    sub_100188938(@"image/x-rgb", @"rgb");
    sub_100188938(@"image/x-xbitmap", @"xbm");
    sub_100188938(@"image/x-xpixmap", @"xpm");
    sub_100188938(@"image/x-xwindowdump", @"xwd");
    sub_100188938(@"model/iges", @"igs");
    sub_100188938(@"model/iges", @"iges");
    sub_100188938(@"model/mesh", @"msh");
    sub_100188938(@"model/mesh", @"mesh");
    sub_100188938(@"model/mesh", @"silo");
    sub_100188938(@"text/calendar", @"ics");
    sub_100188938(@"text/calendar", @"icz");
    sub_100188938(@"text/comma-separated-values", @"csv");
    sub_100188938(@"text/css", @"css");
    sub_100188938(@"text/html", @"htm");
    sub_100188938(@"text/html", @"html");
    sub_100188938(@"text/h323", @"323");
    sub_100188938(@"text/iuls", @"uls");
    sub_100188938(@"text/mathml", @"mml");
    sub_100188938(@"text/plain", @"txt");
    sub_100188938(@"text/plain", @"asc");
    sub_100188938(@"text/plain", @"text");
    sub_100188938(@"text/plain", @"diff");
    sub_100188938(@"text/plain", @"po");
    sub_100188938(@"text/richtext", @"rtx");
    sub_100188938(@"text/rtf", @"rtf");
    sub_100188938(@"text/texmacs", @"ts");
    sub_100188938(@"text/text", @"phps");
    sub_100188938(@"text/tab-separated-values", @"tsv");
    sub_100188938(@"text/xml", @"xml");
    sub_100188938(@"text/x-bibtex", @"bib");
    sub_100188938(@"text/x-boo", @"boo");
    sub_100188938(@"text/x-c++hdr", @"hpp");
    sub_100188938(@"text/x-c++hdr", @"h++");
    sub_100188938(@"text/x-c++hdr", @"hxx");
    sub_100188938(@"text/x-c++hdr", @"hh");
    sub_100188938(@"text/x-c++src", @"cpp");
    sub_100188938(@"text/x-c++src", @"c++");
    sub_100188938(@"text/x-c++src", @"cc");
    sub_100188938(@"text/x-c++src", @"cxx");
    sub_100188938(@"text/x-chdr", @"h");
    sub_100188938(@"text/x-component", @"htc");
    sub_100188938(@"text/x-csh", @"csh");
    sub_100188938(@"text/x-csrc", @"c");
    sub_100188938(@"text/x-dsrc", @"d");
    sub_100188938(@"text/x-haskell", @"hs");
    sub_100188938(@"text/x-java", @"java");
    sub_100188938(@"text/x-literate-haskell", @"lhs");
    sub_100188938(@"text/x-moc", @"moc");
    sub_100188938(@"text/x-pascal", @"p");
    sub_100188938(@"text/x-pascal", @"pas");
    sub_100188938(@"text/x-pcs-gcd", @"gcd");
    sub_100188938(@"text/x-setext", @"etx");
    sub_100188938(@"text/x-tcl", @"tcl");
    sub_100188938(@"text/x-tex", @"tex");
    sub_100188938(@"text/x-tex", @"ltx");
    sub_100188938(@"text/x-tex", @"sty");
    sub_100188938(@"text/x-tex", @"cls");
    sub_100188938(@"text/x-vcalendar", @"vcs");
    sub_100188938(@"text/x-vcard", @"vcf");
    sub_100188938(@"video/3gpp", @"3gpp");
    sub_100188938(@"video/3gpp", @"3gp");
    sub_100188938(@"video/3gpp2", @"3gpp2");
    sub_100188938(@"video/3gpp2", @"3g2");
    sub_100188938(@"video/avi", @"avi");
    sub_100188938(@"video/dl", @"dl");
    sub_100188938(@"video/dv", @"dif");
    sub_100188938(@"video/dv", @"dv");
    sub_100188938(@"video/fli", @"fli");
    sub_100188938(@"video/m4v", @"m4v");
    sub_100188938(@"video/mp2ts", @"ts");
    sub_100188938(@"video/mpeg", @"mpeg");
    sub_100188938(@"video/mpeg", @"mpg");
    sub_100188938(@"video/mpeg", @"mpe");
    sub_100188938(@"video/mp4", @"mp4");
    sub_100188938(@"video/mpeg", @"VOB");
    sub_100188938(@"video/quicktime", @"qt");
    sub_100188938(@"video/quicktime", @"mov");
    sub_100188938(@"video/vnd.mpegurl", @"mxu");
    sub_100188938(@"video/webm", @"webm");
    sub_100188938(@"video/x-la-asf", @"lsf");
    sub_100188938(@"video/x-la-asf", @"lsx");
    sub_100188938(@"video/x-matroska", @"mkv");
    sub_100188938(@"video/x-mng", @"mng");
    sub_100188938(@"video/x-ms-asf", @"asf");
    sub_100188938(@"video/x-ms-asf", @"asx");
    sub_100188938(@"video/x-ms-wm", @"wm");
    sub_100188938(@"video/x-ms-wmv", @"wmv");
    sub_100188938(@"video/x-ms-wmx", @"wmx");
    sub_100188938(@"video/x-ms-wvx", @"wvx");
    sub_100188938(@"video/x-sgi-movie", @"movie");
    sub_100188938(@"video/x-webex", @"wrf");
    sub_100188938(@"x-conference/x-cooltalk", @"ice");
    sub_100188938(@"x-epoc/x-sisx-app", @"sisx");
    +[LibcoreNetMimeUtils applyOverrides]_0();
    atomic_store(1u, LibcoreNetMimeUtils__initialized);
  }
}

+ (JavaIoFileInputStream)getContentTypesPropertiesStream
{
  if ((atomic_load_explicit(LibcoreNetMimeUtils__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10018A8D8();
  }

  PropertyWithNSString = JavaLangSystem_getPropertyWithNSString_(@"content.types.user.table");
  if (PropertyWithNSString)
  {
    v1 = new_JavaIoFile_initWithNSString_(PropertyWithNSString);
    if ([(JavaIoFile *)v1 exists])
    {
      return new_JavaIoFileInputStream_initWithJavaIoFile_(v1);
    }
  }

  v10 = JavaLangSystem_getPropertyWithNSString_(@"java.home");
  if ((atomic_load_explicit(JavaIoFile__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10018A8E4();
  }

  v11 = JreStrcat("$$$", v3, v4, v5, v6, v7, v8, v9, @"lib");
  v1 = new_JavaIoFile_initWithNSString_withNSString_(v10, v11);
  if ([(JavaIoFile *)v1 exists])
  {
    return new_JavaIoFileInputStream_initWithJavaIoFile_(v1);
  }

  else
  {
    return 0;
  }
}

+ (JavaIoFileInputStream)applyOverrides
{
  if ((atomic_load_explicit(LibcoreNetMimeUtils__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10018A8D8();
  }

  result = +[LibcoreNetMimeUtils getContentTypesPropertiesStream]_0();
  if (result)
  {
    v1 = result;
    v2 = new_JavaUtilProperties_init();
    [(JavaUtilProperties *)v2 load__WithJavaIoInputStream:v1];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    entrySet = [(JavaUtilHashtable *)v2 entrySet];
    v4 = entrySet;
    if (!entrySet)
    {
      JreThrowNullPointerException();
    }

    v5 = [entrySet countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          if (!v8)
          {
            JreThrowNullPointerException();
          }

          getKey = [*(*(&v11 + 1) + 8 * i) getKey];
          objc_opt_class();
          if (getKey && (objc_opt_isKindOfClass() & 1) == 0)
          {
            JreThrowClassCastException();
          }

          getValue = [v8 getValue];
          objc_opt_class();
          if (getValue)
          {
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              JreThrowClassCastException();
            }
          }

          sub_100188938(getValue, getKey);
        }

        v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    return [(JavaIoFileInputStream *)v1 close];
  }

  return result;
}

@end